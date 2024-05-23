class GodsController < ApplicationController
  def index
    @gods = God.all
  end

  def show
    @god = God.find(params[:id])
  end

  def new
    @god = God.new
  end

  def create
    @global = General.first
    @god = God.new(god_params)
    @domains = Domain.all
    puts "Creating God"

    # - Name Choice / RNG
    if params[:god][:random_name] == "1"
      @god.name =  @global.make_name
    end


    # - Alignment RNG
    if params[:god][:random_alignment] == "1"
      @god.alignment =  Alignment.all.sample
    else
      @god.alignment = Alignment.find(params[:god][:alignment])
    end

    # - Domain choice/RNG
    if params[:god][:random_domain] == "1"
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
    params.require(:god).permit(:name)
  end

end
