class ProductsController < ApplicationController
	def new 
		@product = Product.new
	end

	def create 
		product_params = params.require(:product).permit(:name, :price)

		product = Product.new(product_params)
		if product.save 
			flash[:notice] = " Product Created!"
			redirect_to "/products/new"
		end
	end

end
