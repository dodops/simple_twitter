require 'spec_helper'

describe User do

  before(:each) do
    @attr = {:name => "Example User", :email => "user@example.com" }
  end


  #it "should create a new instance given valid attributes" do
    #nada = User.create!(@attr)
    #nada.should_not be_valid
  #end

  it "should require a name" do
    no_name_user = User.new(@attr.merge(:name => ""))
    no_name_user.should_not be_valid
  end
end
