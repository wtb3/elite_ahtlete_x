class BioMechanistsController < ApplicationController
  def index
    @bio_mechanists = BioMechanist.all
  end
  def show
    @bio_mechanist = BioMechanist.find(params[:id])
  end
  def new
    @bio_mechanist = BioMechanist.new
  end
  def create
    @bio_mechanist = BioMechanist.new(bio_mechanist_params)
    if @bio_mechanist.save
      redirect_to @bio_mechanist
    else
      render "new"
    end
  end
  def edit
    @bio_mechanist = BioMechanist.find(params[:id])
  end
  def update
    @bio_mechanist = BioMechanist.find(params[:id])
    if @bio_mechanist.update(bio_mechanist_params)
      redirect_to @bio_mechanist
    else
      render "edit"
    end
  end
  def destroy
    @bio_mechanist = BioMechanist.find(params[:id])
    @bio_mechanist.destroy
    redirect_to bio_mechanists_path
  end
  private
  def bio_mechanist_params
    params.require(:bio_mechanist).permit(:name, :sport, :team)
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
