class HomeController <ApplicationController
    before_action :authenticate_user!

    def index
        @carts = current_user.carts
        @whishlLists =current_user.whishLists 
        @orders =current_user.orders
         
    end

end


