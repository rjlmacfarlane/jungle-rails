require 'rails_helper'

RSpec.describe User, type: :model do
  
  describe "Validations" do
    it "saves succesfully if all fields are valid" do
      user_params = { first_name: "Pineapple", last_name: "Pizza", email: "pineapple@pizza.com", password: "123456789", password_confirmation: "123456789" }
      @user = User.new(user_params)

      expect(@user.save).to be true
    end

    it "should not create new user when password and password_confirmation don't match" do
      user_params = { first_name: "Captain", last_name: "Picard", email: "uss_enterprise@starfleet.com", password: "123456789", password_confirmation: "987654321" }
      @user = User.new(user_params)

      expect(@user.save).to be false
    end

  end
end