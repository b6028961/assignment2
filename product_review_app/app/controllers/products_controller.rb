class ProductsController < ApplicationController
    def index
        @products=Product.all
    end
    def new 
    end
    def show
        @product=Product.find(params[:id])
        @reviews=@product.reviews
    end
    def create
       # render plain: params[:product] .inspect
       @product=Product.new(product_params)
       @product.save
       redirect_to @product
    end
    def destroy
        @product = Product.find(params[:id])
        @product.destroy
        redirect_to products_path
    end
    def search
        @products = if params[:term]
            Product.where('pName OR pBrand OR pCategory LIKE ?', "%#{params[:term]}")
        else Product.all
        end
    end
    private
    def product_params
        params.require(:product) .permit(:pName, :pBrand, :pCost, :pCategory, :pDate, :pDescription, :pPhoto)
    end
end
