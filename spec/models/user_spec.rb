require 'rails_helper'

describe User, type: :model do
	it 'should not validate users with no email address' do
		@user = FactoryGirl.build(:user, email: "not_an_email")
		expect(@user).not_to be_valid
	end

	it "the password is not 6 characters long" do
		@user = FactoryGirl.build(:user, password: "12345")
		expect(@user).not_to be_valid
	end
end