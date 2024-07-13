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
    @artifact = Artifact.new
    @global = General.first
    @god = God.find(params[:god_id])
  end

end
