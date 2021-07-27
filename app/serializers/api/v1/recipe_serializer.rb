module Api
    module V1        
        class RecipeSerializer < ActiveModel::Serializer
            attributes :id, :name, :content
        end
    end
end