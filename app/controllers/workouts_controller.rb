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

