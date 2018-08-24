require 'rails_helper'

RSpec.describe Quote, type: :model do
  subject {FactoryBot.create(:quote)}

  describe 'model validations' do
    it {is_expected.to validate_presence_of(:text)}
    it {is_expected.to validate_uniqueness_of(:text)}
  end
end
