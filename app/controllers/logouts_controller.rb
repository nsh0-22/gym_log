class LogoutsController < ApplicationController
    def create
        session.delete(:user_id)
        redirect_to root_path, notice: 'ログアウトしました'
    end
end
