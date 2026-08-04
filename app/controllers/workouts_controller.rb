class WorkoutsController < ApplicationController
  def index
    params[:start_date]
    @workouts = Workout.where(date: params[:start_date])
  end

  def new
    @workout = Workout.new
    @exercises = Exercise.all
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      redirect_to workouts_path(start_date: @workout.date)
    else
      @exercises = Exercise.all
      p @workout.object_id
      p @workout.errors.full_messages
      render :new
    end

  end

  private
  def workout_params
    params.require(:workout).permit(:exercise_id, :weight, :reps, :sets, :date)
  end

end

