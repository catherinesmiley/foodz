module  Api 
    module V1
        class RecipeIngredientsController < ApplicationController
            def index 
                @recipes = Recipe.all
                render json: @recipes 
            end 
        end
    end
end
