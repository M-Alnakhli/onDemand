class ProductsController < ApplicationController
    before_action :authenticate_user!, only:  [:show, :index]
    before_action :authenticate_tajir!,except:  [:show, :index]
   def index
    @products =Product.all
   end
    def show 
        @product = Product.find(params[:id])
    end

    def new
        @product=Product.new
        
        
    end

    def add 
        
    end 

    def create 
        
        @product =Product.create(product_params)
        current_tajir.owns.create(product_id = @product)
        redirect_to products_path(@product)
    end 
    
    def destroy 
        
        @product =current_user.products.find(params[:id])
        @product.destroy
        redirect_to 
    end 


    def edit
        @product=current_user.products.find(params[:id])
        redirect_to products_path(@product)
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
