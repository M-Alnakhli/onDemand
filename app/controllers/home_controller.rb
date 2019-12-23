class HomeController <ApplicationController
    before_action :authenticate_user!

    def index
    @elments =nil
    if user_signed_in?
        @elments =current_user.products
end 
@availbles=Product.all
end

end


