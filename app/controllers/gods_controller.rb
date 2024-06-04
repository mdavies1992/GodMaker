require "open-uri"

class GodsController < ApplicationController
  def index
    @gods = God.all
  end

  def show
    @god = God.find(params[:id])
  end

  def new
    @global = General.first
    @god = God.new
  end

  def edit
  end

  def update
    @god = God.find(params[:id])
    if @god.update(god_params)
      redirect_to god_path(@god)
    else
      redirect_to god_path(@god)
      raise
    end
  end

  def remove_photo
    @god = God.find(params[:id])
    @god.photo.purge # assuming `photo` is the name of the attached image
    redirect_to god_path(@god), notice: 'Photo was successfully removed.'
  end

  def create
    @global = General.first
    @god = God.new(god_params)
    @domains = Domain.all
    puts "Creating God"

    # - Name Choice / RNG
    if params[:god][:random_name] == "0"
      @god.name =  @global.make_name
    end


    # - Alignment RNG
    if params[:god][:random_alignment] == "0"
      @god.alignment =  Alignment.all.sample
    else
      @god.alignment = Alignment.find(params[:god][:alignment])
    end

    # - Domain choice/RNG
    if params[:god][:random_domain] == "0"
      @god.domain =  Domain.all.sample
    else
      @god.domain = Domain.find(params[:god][:domain])
    end


    god_descriptors = @god.alignment.descriptors + @god.alignment.x_alignment.descriptors + @god.alignment.y_alignment.descriptors  + @god.domain.descriptors
    god_titles = @god.alignment.titles + @god.alignment.x_alignment.titles + @god.alignment.y_alignment.titles  + @god.domain.titles
    @god.epitaph = "The #{god_descriptors.sample} #{god_titles.sample}"

    god_tenets = @god.domain.tenets
    god_tenets.shuffle!
    @god.tenets << god_tenets.pop
    god_tenets = god_tenets + @god.alignment.tenets + @god.alignment.x_alignment.tenets + @god.alignment.y_alignment.tenets
    3.times do
      god_tenets.shuffle!
      @god.tenets << god_tenets.pop
    end

    god_themes = @god.domain.themes
    god_themes.shuffle!
    @god.themes << god_themes.pop
    god_themes = god_themes + @global.themes + @god.alignment.x_alignment.themes + @god.alignment.y_alignment.themes
    2.times do
      god_themes.shuffle!
      @god.themes << god_themes.pop
    end

    @god.prompt = "Give me a short introductory description of a #{@god.alignment.name} deity of #{@god.domain.name}. They also incorporate themes of #{@god.themes[0]}, #{@god.themes[1]} and #{@god.themes[2]}. Additionally, they have the title of '#{@god.epitaph}'."
    @god.img_prompt = "Give me an image of a #{@god.alignment.name} deity of #{@god.domain.name}. They incorporate themes of #{@god.themes[0]}, #{@god.themes[1]} and #{@god.themes[2]}. Dungeons and dragons, fantasy, illustrated, 2d, watercolours."


    client = OpenAI::Client.new
    chaptgpt_response = client.chat(parameters: {
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: @god.prompt}]
    })
    @god.description = chaptgpt_response["choices"][0]["message"]["content"]

    # response = client.images.generate(parameters: { model: 'dall-e-3', prompt: @god.img_prompt })
    # url = response.dig("data", 0, "url")
    # @god.photo.attach(io: URI.open(url), filename: "godimage_#{SecureRandom.hex(8)}.png")


    @god.save
    if @god.save
      redirect_to god_path(@god)
      puts 'saved'
    else
      render 'new', status: :unprocessable_entity
      puts 'not saved'
    end
  end

private

  def god_params
    params.require(:god).permit(:name, :photo)
  end

end
