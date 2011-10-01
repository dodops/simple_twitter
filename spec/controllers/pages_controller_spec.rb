require 'spec_helper'

describe PagesController do
  render_views

  describe "GET 'home'" do
    it "should be successful" do
      get 'home'
      response.should be_success
    end

    it "should have the right title" do
      get 'home'
      response.should have_selector("title", :content => "Dodops TwitterClone Home Page")
    end
  end

  describe "GET 'contact' page" do
    it "should be successful" do
      get 'contact'
      response.should be_success
    end

    it "should have the rigth title" do
      get 'contact'
      response.should have_selector("title", :content => "Dodops TwitterClone Contact Page")
    end
  end

  describe "GET 'about' page" do
    it "should be successful" do
      get 'about'
      response.should be_success
    end

    it "should have the right title" do
      get 'about'
      response.should have_selector("title", :content => "Dodops TwitterClone About Page")
    end
  end
end
