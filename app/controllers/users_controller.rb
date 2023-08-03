class UsersController < ApplicationController
  before_action :set_user, only: [:show, :edit, :update, :destroy]
  before_action :set_mental_health_professional, only: [:show, :edit, :update, :destroy]
  before_action :set_bio_mechanist, only: [:show, :edit, :update, :destroy]
  before_action :set_nutritionist, only: [:show, :edit, :update, :destroy]

  def index
    @users = User.all
  end

  def show
    @user = User.find(params[:id])
  end

  def new
    @user = User.new
    @mental_health_professional = MentalHealthProfessional.new
    @bio_mechanist = BioMechanist.new
    @nutritionist = Nutritionist.new
  end

  def create
    @user = User.new(user_params)
    @mental_health_professional = MentalHealthProfessional.new(mental_health_professional_params)
    @bio_mechanist = BioMechanist.new(bio_mechanist_params)
    @nutritionist = Nutritionist.new(nutritionist_params)
    if @user.save
      redirect_to @user
    else
      render "new"
    end
    if @mental_health_professional.save
      redirect_to @mental_health_professional
    else
      render "new"
    end
    if @bio_mechanist.save
      redirect_to @bio_mechanist
    else
      render "new"
    end
    if @nutritionist.save
      redirect_to @nutritionist
    else
      render "new"
    end
  end

  def edit
    @user = User.find(params[:id])
    @mental_health_professional = MentalHealthProfessional.find(params[:id])
    @bio_mechanist = BioMechanist.find(params[:id])
    @nutritionist = Nutritionist.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    @mental_health_professional = MentalHealthProfessional.find(params[:id])
    @bio_mechanist = BioMechanist.find(params[:id])
    @nutritionist = Nutritionist.find(params[:id])
    if @user.update(user_params)
      redirect_to @user
    else
      render "edit"
    end
    if @mental_health_professional.update(mental_health_professional_params)
      redirect_to @mental_health_professional
    else
      render "edit"
    end
    if @bio_mechanist.update(bio_mechanist_params)
      redirect_to @bio_mechanist
    else
      render "edit"
    end
    if @nutritionist.update(nutritionist_params)
      redirect_to @nutritionist
    else
      render "edit"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @mental_health_professional = MentalHealthProfessional.find(params[:id])
    @bio_mechanist = BioMechanist.find(params[:id])
    @nutritionist = Nutritionist.find(params[:id])
    @user.destroy
    @mental_health_professional.destroy
    @bio_mechanist.destroy
    @nutritionist.destroy
    redirect_to users_path
  end

  private

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def mental_health_professional_params
    params.require(:mental_health_professional).permit(:name, :sport, :team)
  end

  def bio_mechanist_params
    params.require(:bio_mechanist).permit(:name, :sport, :team)
  end

  def nutritionist_params
    params.require(:nutritionist).permit(:name, :sport, :team)
  end
end
