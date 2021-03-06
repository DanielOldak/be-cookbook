module Api
  module V1
    class RecipesController < ApplicationController
      before_action :set_recipe, except: %i[create index]
      def index
        render json: Recipe.all
      end

      def show
        render json: @recipe
      end

      def create
        @recipe = Recipe.new(recipe_params)
        if @recipe.save
          render json: @recipe
        else
          render json: { errors: @recipe.errors.to_s }, status: :unprocessable_entity
        end
      end

      def update
        if @recipe.update(recipe_params)
          render json: @recipe
        else
          render json: { errors: @recipe.errors.to_s }, status: :unprocessable_entity
        end
      end

      def destroy
        if @recipe.destroy
          render json: @recipe
        else
          render json: { errors: @recipe.errors.to_s }, status: :unprocessable_entity
        end
      end

      private

      def recipe_params
        params.require(:recipe).permit(%i[name content])
      end

      def set_recipe
        @recipe = Recipe.find(params[:id])
      end
    end
  end
end
