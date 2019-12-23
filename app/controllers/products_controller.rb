class ProductsController < ApplicationController
    before_action :authenticate_user!
   def index

   end
    def show 
        @product = Product.find(params[:id])
    end

    def new
        @product=Product.new
        
    end

    def create 
        @product
        current_user.products.create(product_params)
        redirect_to products_path(@product)
    end 
    
    def destroy 
        
        @product =current_user.products.find(params[:id])
        @product.destroy
        redirect_to 
    end 


    def edit
        @product=current_user.products.find(params[:id])
    end 

    def update
        @product= Product.find(params[:id])
        @product.update(product_params)
        redirect_to products_path(@product)
    end 

    private 
    def product_params
        params.require(:product).permit(:name, :img, :description,:Amounte, :img,:price)
    end

end
