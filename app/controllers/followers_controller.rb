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
    @follower.name =  @global.make_name

    # Determine Gender
    @follower.gender = Follower::GENDERS.sample

    # Determine Race
    @follower.species = Follower::RACES.sample

    # Determine Profession
    @follower.profession = Follower::PROFESSIONS.sample

    #Determine Alignment
    @follower.alignment = Alignment.all.sample

    @follower.god = @god

    # Create Prompt
    prompt = "Give me a short description of a character, who is a #{@follower.gender} #{@follower.species} called #{@follower.name}, who is #{@follower.alignment} in alignment. They are a #{@follower.profession} of #{@god.name}, a #{@god.alignment.name} god of #{@god.domain.name}."

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
