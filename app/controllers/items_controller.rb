class ItemsController < ApplicationController

    def index 
        @items = ItemIndexFacade.service 
    end 

end 