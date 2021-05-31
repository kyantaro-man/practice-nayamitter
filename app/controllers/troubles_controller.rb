class TroublesController < ApplicationController

    def index
        @troubles = Trouble.all.order("id DESC")
        @trouble = Trouble.new
    end

    def create
        @trouble = Trouble.new(trouble_params)
        if @trouble.save
            redirect_to troubles_path
        else
            render :index
        end
    end

    def destroy
        @trouble = Trouble.find(params[:id])
        @trouble.destroy
        redirect_to troubles_path
    end

    private

    def trouble_params
        params.require(:trouble).permit(:text)
    end
    
end
