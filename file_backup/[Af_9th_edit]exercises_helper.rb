module ExercisesHelper
  def choose_new_or_edit
    if action_name == 'new' || action_name == 'confirm'
      confirm_exercises_path
    elsif action_name == 'edit'
      exercise_path
    end
  end
end
