require 'spec_helper'


describe User do
  before(:each) do
    @attr = {
            :name => "Example User",
            :email => "user@example.com",
            :password => "foobar",
            :password_confirmation => "foobar"
            }
  end
  it "should create a new instance given valid attributes" do
    User.create!(@attr)
  end

  describe "password validations" do
    it "should reject short passwords" do
      short = "a" * 5
      hash = @attr.merge(:password => short, :password_confirmation => short)
      User.new(hash).should_not be_valid
    end
    it "should reject long passwords" do
      long = "a" * 41
      hash = @attr.merge(:password => long, :password_confirmation => long)
      User.new(hash).should_not be_valid
    end
  end
  describe "password encryption" do
    @user = User.create!(@attr)
  end
  it "should have an encrypted pasword attribure" do
    @user.should respond_to(:encryption_password)
  end
  describe "password encryption" do
    before(:each) do
      @user = User.create!(@attr)
    end
    it "should have an encrypted password atrribute" do
      @user.should respond_to(:encrypted_password)
    end
  end
end
