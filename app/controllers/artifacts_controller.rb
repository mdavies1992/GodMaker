class ArtifactsController < ApplicationController

  def show
    @artifact = Artifact.find(params[:id])
    @god = @artifact.god
    @type = @artifact.type
    @ali = @god.alignment.name.gsub(" ", "")
  end

  def new
    @artifact = Artifact.new
    @global = General.first
    @god = God.find(params[:god_id])
  end

  def create
    @artifact = Artifact.new
    @global = General.first
    @god = God.find(params[:god_id])
    @type = Type.first
    descriptors =  @god.alignment.descriptors + @god.alignment.x_alignment.descriptors + @god.alignment.y_alignment.descriptors  + @god.domain.descriptors

    # Determine Item Type

    @artifact.type = @type

    # Determine Name
    @artifact.name = @type.titles.sample.gsub("DESC", descriptors.sample)

    # Determine Attunement Quest
    @artifact.quest_one = @global.minorquests.sample

    # Determine Minor Ability
    @artifact.ability_one = @god.domain.ability_one.sample

    # Quest 1
    @artifact.quest_two = "Lesser Quest."

    # Ability 1
    @artifact.ability_two = "Cast Magic Missile."

    # Quest 2
    @artifact.quest_three = "Greater Quest."

    # Ability 2
    @artifact.ability_three = "Cast Fireball."

    @artifact.god = @god

    @artifact.save

    if @artifact.save
      redirect_to god_path(@god)
      puts 'saved'
    else
      render 'new', status: :unprocessable_entity
      puts 'not saved'
    end

  end

end