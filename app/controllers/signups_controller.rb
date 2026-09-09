class SignupsController < ApplicationController
  def new
  end

  def create
    user = User.new(
      name: params[:name],
      password: params[:password]
    )

    if user.save
      redirect_to root_path
    else
      render :new, status: :unprocessable_entity
    end
  end
end
