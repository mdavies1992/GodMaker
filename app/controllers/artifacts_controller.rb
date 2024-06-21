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
    @type = Type.all.sample
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
    @artifact.quest_two =  @god.domain.quest_two.sample.gsub("GODNAME", @god.name)

    # Ability 2
    abi2w = @god.domain.ability_two + @god.domain.ability_two_weapon
    abi2a = @god.domain.ability_two + @god.domain.ability_two_armor
    case @artifact.type.category
    when "Weapon"
      @artifact.ability_two = abi2w.sample
    when "Armor"
      @artifact.ability_two = abi2a.sample
    else
    @artifact.ability_two = @god.domain.ability_two.sample
    end
    # Quest 2
    @artifact.quest_three = @god.domain.quest_three.sample.gsub("GODNAME", @god.name)

    # Ability 3
    abi3w = @god.domain.ability_three + @god.domain.ability_three_weapon
    abi3a = @god.domain.ability_three + @god.domain.ability_three_armor
    case @artifact.type.category
    when "Weapon"
      @artifact.ability_three = abi3w.sample
    when "Armor"
      @artifact.ability_three = abi3a.sample
    else
    @artifact.ability_three = @god.domain.ability_three.sample
    end
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
