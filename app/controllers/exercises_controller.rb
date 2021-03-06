class ExercisesController < ApplicationController
  before_action :set_exercise, only: [:edit, :update, :destroy]

  def new
    if params[:back]
     @exercise = Exercise.new(exercise_params)
    else
      @exercise = Exercise.new
    end
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
  
  
  def destroy
    @exercise.destroy
    redirect_to exercises_path, notice:"You've completely deleted your tweet."
  end
  

  def confirm
    @exercise = Exercise.new(exercise_params)
    render :new if @exercise.invalid?
  end


  private

  def exercise_params
    params.require(:exercise).permit(:content)
  end


  def set_exercise
    @exercise = Exercise.find(params[:id])
  end


end
