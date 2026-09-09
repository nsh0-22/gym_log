class WorkoutsController < ApplicationController
  def index
    date = params[:start_date] || Date.current
    @workouts = Workout.where(date: date)
  end

  def new
    @workout = Workout.new
    @exercises = Exercise.all
  end

  def create
    @workout = Workout.new(workout_params)
    if @workout.save
      @exercises = Exercise.all
      render format: :turbo_stream
    else
      @exercises = Exercise.all
      render :new, formats: :turbo_stream
    end

  end

  private
  def workout_params
    params.require(:workout).permit(:exercise_id, :weight, :reps, :sets, :date, :memo)
  end

end

