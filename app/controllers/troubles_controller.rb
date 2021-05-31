class TroublesController < ApplicationController

    def index
        @troubles = Trouble.all.order("id DESC")
    end
    
end
