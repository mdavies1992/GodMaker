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
    @follower.name =  "Test"

    # Determine Gender
    @follower.gender = "Male"

    # Determine Race
    @follower.species = "Human"

    # Determine Profession
    @follower.profession = "Guy"

    #Determine Alignment
    @follower.alignment = Alignment.all.sample

    @follower.god = @god

    # Create Prompt

    # Generate Description
    @follower.description = "This is a Test"

    @follower.save

    if @follower.save
      redirect_to god_path(@god)
      puts 'saved'
    else
      render 'new', status: :unprocessable_entity
      puts 'not saved'
    end

  end

end
