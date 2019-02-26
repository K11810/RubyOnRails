class ExercisesController < ApplicationController
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




  private

  def exercise_params
    params.require(:exercise).permit(:content)
  end

end
