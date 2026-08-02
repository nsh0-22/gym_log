class WorkoutsController < ApplicationController
  def index
    params[:start_date]
    @workouts = Workout.where(date: params[:start_date])
  end
end
