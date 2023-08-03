class ProfessionalAthletesController < ApplicationController
  def index
    @professional_athletes = ProfessionalAthlete.all
  end

  def show
    @professional_athlete = ProfessionalAthlete.find(params[:id])
  end

  def new
    @professional_athlete = ProfessionalAthlete.new
  end

  def create
    @professional_athlete = ProfessionalAthlete.new(professional_athlete_params)

    if @professional_athlete.save
      redirect_to @professional_athlete
    else
      render "new"
    end
  end

  def edit
    @professional_athlete = ProfessionalAthlete.find(params[:id])
  end

  def update
    @professional_athlete = ProfessionalAthlete.find(params[:id])

    if @professional_athlete.update(professional_athlete_params)
      redirect_to @professional_athlete
    else
      render "edit"
    end
  end

  def destroy
    @professional_athlete = ProfessionalAthlete.find(params[:id])
    @professional_athlete.destroy

    redirect_to professional_athletes_path
  end

  private

  def professional_athlete_params
    params.require(:professional_athlete).permit(:name, :sport, :team)
  end

  def user_params
    params.require(:user).permit(:name, :email, :password, :password_confirmation)
  end

  def post_params
    params.require(:post).permit(:title, :body)
  end

  def comment_params
    params.require(:comment).permit(:body)
  end

  def mental_health_professional_params
    params.require(:mental_health_professional).permit(:name, :sport, :team)
  end

  def nutritionist_params
    params.require(:nutritionist).permit(:name, :sport, :team)
  end

  def bio_mechanist_params
    params.require(:bio_mechanist).permit(:name, :sport, :team)
  end

  def physical_therapist_params
    params.require(:physical_therapist).permit(:name, :sport, :team)
  end

  def personal_trainer_params
    params.require(:personal_trainer).permit(:name, :sport, :team)
  end

  def coach_params
    params.require(:coach).permit(:name, :sport, :team)
  end

  def sport_params
    params.require(:sport).permit(:name)
  end

  def team_params
    params.require(:team).permit(:name)
  end

  def sports_team_params
    params.require(:sports_team).permit(:sport_id, :team_id)
  end
end
