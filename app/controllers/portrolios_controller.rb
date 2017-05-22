class PortroliosController < ApplicationController
    def index
        @portfolio_items = Portrolio.all
    end
end
