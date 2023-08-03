class MentalHealthProfessionalsController < ApplicationController
  def index
    @mental_health_professionals = MentalHealthProfessional.all
  end
  def show
    @mental_health_professional = MentalHealthProfessional.find(params[:id])
  end
  def new 
    @mental_health_professional = MentalHealthProfessional.new
  end
  def create
    @mental_health_professional = MentalHealthProfessional.new(mental_health_professional_params)
    if @mental_health_professional.save
      redirect_to @mental_health_professional
    else
      render "new"
    end
  end
  def edit
    @mental_health_professional = MentalHealthProfessional.find(params[:id])
  end
  def update
    @mental_health_professional = MentalHealthProfessional.find(params[:id])
    if @mental_health_professional.update(mental_health_professional_params)
      redirect_to @mental_health_professional
    else
      render "edit"
    end
  end
  def destroy
    @mental_health_professional = MentalHealthProfessional.find(params[:id])
    @mental_health_professional.destroy
    redirect_to mental_health_professionals_path
  end
  private
  def mental_health_professional_params
    params.require(:mental_health_professional).permit(:name, :sport, :team)
  end
  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end
  
end
