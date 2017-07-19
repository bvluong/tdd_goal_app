require 'rails_helper'

RSpec.describe User, type: :model do
  describe "password encryption" do
    it "does not save passwords to the database" do
      User.create!(username: "demo", password: "password")
      user = User.find_by_username("mary_mack")
      expect(user.password).not_to be("password)")
    end

    it "encrpts the password using BCrypt" do
      expect(BCrypt::Password).to receive(:create)
      User.new(username: "demo", password:"password")
    end

  end


end
