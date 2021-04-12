class SubsController < ApplicationController

    def new
        @sub = Sub.new
        render :new
    end

    def create
        @sub = Sub.new(sub_params)
        if @sub.save
            
        else
        end
    end

    def edit
        @sub = Sub.find(params[:id])
        render :edit
    end

    def update
    end

    def show
        @sub = Sub.find(params[:id])
        render :show
    end

    def index
        @subs = Sub.all
        render :index
    end

    def destroy
    end

    private

    def sub_params
        params.require(:sub).permit(:title, :description, :moderator_id)
    end

end