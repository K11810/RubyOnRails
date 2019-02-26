class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:show, :edit, :update]

  def new
    @exercise = Exercise.new
  end
  

  def create
    @exercise = Exercise.new(exercise_params)
    if @exercise.save
      redirect_to exercises_path, notice: "You have tweeted newly!!"
    else
      render 'new'
    end
  end
  

  def index
    @exercises = Exercise.all
  end
  

  def edit
  end
  
  
  def update
    if @exercise.update(exercise_params)
      redirect_to exercises_path, notice: "You've edited your tweet!!"
    else
      render 'edit'
    end
  end
  


  private

  def exercise_params
    params.require(:exercise).permit(:content)
  end


  def set_exercise
    @exercise = Exercise.find(params[:id])
  end


end
