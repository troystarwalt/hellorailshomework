require 'rails_helper'

RSpec.describe User, type: :model do

	user = FactoryGirl.build(:user)
	usercreate = FactoryGirl.create(:user)
	attrs = FactoryGirl.attributes_for(:user)

	describe "is invalid without: " do
		it "username" do
			user.username = nil
			expect(user).to be_invalid
		end

		it "email" do
			user.email = nil
			expect(user).to be_invalid
		end

		it "password" do
			user.password = nil
			expect(user).to be_invalid
		end

		it "long password" do
			user.password = 123
			expect(user).to be_invalid
		end

		after(:each) do
			puts "#{user.username}"
		end
	end

	describe "must be unique:" do
		it "email uniqueness" do
			usercreate
			usercreate
			expect(user).to be_invalid
		end
	end	

	describe User do
		it "validates password length" do
			expect(usercreate).to be_valid
			expect(FactoryGirl.build(:user, password: "12345", email: "hithere@gmail.com")).to be_invalid
		end
	end
end
