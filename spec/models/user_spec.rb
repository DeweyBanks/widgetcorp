require 'rails_helper'

RSpec.describe User, type: :model do
  context "validations" do
    before :each do
     @user = FactoryGirl.create(:user)
    end
    it { is_expected.to validate_presence_of(:username) }
    it { is_expected.to validate_presence_of(:email) }
    it { should validate_uniqueness_of(:email) }
  end
  context "associations" do
    it { is_expected.to validate_presence_of(:username) }
    it { should have_many(:widgets) }
    it { should belong_to(:role) }
  end

  context "Seller" do
    before :each do
     @user = FactoryGirl.create(:user, :role => Role.find_by(name: "Seller"))
    end
    it "should be a seller" do
      expect(@user.role.name).to eq("Seller")
    end
  end

  context "Buyer" do
    before :each do
     @user = FactoryGirl.create(:user, :role => Role.find_by(name: "Buyer"))
    end
    it "should be a buyer" do
      expect(@user.role.name).to eq("Buyer")
    end
  end

end
