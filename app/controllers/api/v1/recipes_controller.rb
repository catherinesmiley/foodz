module Api
    module V1
      class RecipesController < ApplicationController
        def index
          @recipes = Recipe.all
          render json: @recipes
        end
      end
    end
  end
  