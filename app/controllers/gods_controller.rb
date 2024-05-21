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
    @god = God.new(god_params)
    puts "Creating God"
    @god.alignment = Alignment.all.sample
    @god.domain = Domain.all.sample
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
