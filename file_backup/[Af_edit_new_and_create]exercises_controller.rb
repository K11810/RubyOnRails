class ExercisesController < ApplicationController
  def new
    @exercise = Exercise.new
  end
  
  def create
    Exercise.create(exercise_params)
    redirect_to new_exercise_path
  end




  private

  def exercise_params
    params.require(:exercise).permit(:content)
  end

end
