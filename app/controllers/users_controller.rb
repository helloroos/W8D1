class UsersController < ApplicationController

    def new
        @user = User.new
        render :new
    end

    def create
    end

    def edit
        @user = User.find(params[:id])
        render :edit
    end

    def update
    end

    def show
        @user = User.find(params[:id])
        render :show
    end

    def index
        @users = User.all
        render :index
    end

    def destroy
    end

    private

    def user_params
        params.require(:user).permit(:username, :password)
    end

end