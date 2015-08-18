class ProductManagementController < ApplicationController
	def new 
		@product = Product.new
	end

	def create 
		product_params = params.require(:product).permit(:name, :price)

		product = Product.new(product_params)
		product.save

		render nothing: true
	end

end