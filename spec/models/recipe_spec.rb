require 'rails_helper'

RSpec.describe Recipe, type: :model do
  describe 'validations' do
    it do 
      is_expected.to validate_presence_of(:name)
      is_expected.to validate_presence_of(:price)
      is_expected.to validate_numericality_of(:price)
    end
  end
end
