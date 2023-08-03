class NutritionistsController < ApplicationController
  def index
    @nutritionists = Nutritionist.all
  end
  def show
    @nutritionist = Nutritionist.find(params[:id])
  end
  def new
    @nutritionist = Nutritionist.new
  end
  def create
    @nutritionist = Nutritionist.new(nutritionist_params)
    if @nutritionist.save
      redirect_to @nutritionist
    else
      render "new"
    end
  end
  def edit
    @nutritionist = Nutritionist.find(params[:id])
  end
  def update
    @nutritionist = Nutritionist.find(params[:id])
    if @nutritionist.update(nutritionist_params)
      redirect_to @nutritionist
    else
      render "edit"
    end
  end
  def destroy
    @nutritionist = Nutritionist.find(params[:id])
    @nutritionist.destroy
    redirect_to nutritionists_path
  end
  private
  def nutritionist_params
    params.require(:nutritionist).permit(:name, :sport, :team)
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
