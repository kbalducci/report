require 'rails_helper'

RSpec.describe User, type: :model do
  # let(:user) { User.new(first_name: 'Sally', last_name: 'Doe')} alt short
  describe 'full_name' do
    it "returns the user's full name" do
      # expect(user.full_name).to eq('Sally Doe') alt short eliminate what's below
      user = User.new(first_name: 'Sally', last_name: 'Doe')
      full_name = user.full_name
      expect(full_name).to eq('Sally Doe')
    end
  end

  describe 'last_first' do
    it "returns the user's full name with the last name first" do
      user = User.new(first_name: 'Sally', last_name: 'Doe')
      last_first = user.last_first
      expect(last_first).to eq('Doe, Sally')
    end
  end
end
