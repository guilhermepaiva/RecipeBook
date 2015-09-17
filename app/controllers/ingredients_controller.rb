class IngredientsController < ApplicationController
	def new
		@ingredient = Ingredient.new
	end

	def create
		@ingredient = Ingredient.new(ingredient_params)

		respond_to do |format|
			if @ingredient.save
				format.html { redirect_to @ingredient, notice: 'Ingrediente inserido com sucesso' }
        		format.json { render action: 'show', status: :created, location: @ingredient }
      		else
        		format.html { render action: 'new' }
        		format.json { render json: @ingredient.errors, status: :unprocessable_entity }
      end
    end

	end


	private 

	def ingredient_params
		params.require(:ingredient).permit(:name, :quantity)
	end
end
