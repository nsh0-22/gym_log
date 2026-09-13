class SignupsController < ApplicationController
  def new
  end

  def create
    user = User.new(
      name: params[:name],
      password: params[:password]
    )

    if user.save
      redirect_to root_path, notice: '登録しました。ログインしてください'
    else
      render :new, status: :unprocessable_entity
    end
  end
end
