class FollowersController < ApplicationController

  def show
    @follower = Follower.find(params[:id])
    @god = @follower.god
  end

  def new
    @follower = Follower.new
    @global = General.first
    @god = God.find(params[:god_id])
  end

  def create
    @follower = Follower.new
    @global = General.first
    @god = God.find(params[:god_id])

    # Determine Name
    if params[:follower][:random_name] == "0"
      @follower.name =  @global.make_name
    end

    # Determine Gender
    if params[:follower][:random_gender] == "0"
      @follower.gender = Follower::GENDERS.sample
    else
      @follower.gender = params[:follower][:gender]
    end


    # Determine Race
    if params[:follower][:random_species] == "0"
      @follower.species = Follower::RACES.sample
    else
      @follower.species = params[:follower][:species]
    end

    # Determine Profession
    if params[:follower][:random_profession] == "0"
      @follower.profession = Follower::PROFESSIONS.sample
    else
      @follower.profession = params[:follower][:profession]
    end

    #Determine Alignment
    if params[:follower][:random_alignment] == "0"
      @follower.alignment = Alignment.all.sample
    else
      @follower.alignment = Alignment.find(params[:follower][:alignment])
    end

    @follower.god = @god

    # Create Prompt
    prompt = "Give me a short description of a character, who is a #{@follower.gender} #{@follower.species} called #{@follower.name}, who is #{@follower.alignment.name} in alignment. They are a #{@follower.profession} of #{@god.name}, a #{@god.alignment.name} deity of #{@god.domain.name}."

    # Generate Description
    client = OpenAI::Client.new
    chaptgpt_response = client.chat(parameters: {
      model: "gpt-3.5-turbo",
      messages: [{ role: "user", content: prompt}]
    })
    @follower.description = chaptgpt_response["choices"][0]["message"]["content"]

    @follower.save

    if @follower.save
      redirect_to god_path(@god)
      puts 'saved'
    else
      render 'new', status: :unprocessable_entity
      puts 'not saved'
    end

  end


  def destroy
    @follower = Follower.find(params[:id])
    @god = @follower.god
    @follower.destroy
    # No need for app/views/restaurants/destroy.html.erb
    redirect_to god_path(@god), status: :see_other
  end

end
