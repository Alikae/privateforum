class GossipsController < ApplicationController
  def index
    @gossips = Gossip.all
  end

  def new
    @gossip = Gossip.new
  end

  def create
    @gossip = current_user.gossips.create(gossip_params)
    redirect_to root_path
  end

  def edit
    @gossip = Gossip.find(params[:id])
  end

  def show
    @gossip = Gossip.find(params[:id])
  end

  def destroy
    @gossip = Gossip.find(params[:id])
    @gossip.destroy
    redirect_to root_path
  end
private
  def gossip_params
    params.permit(:content)
  end
end
