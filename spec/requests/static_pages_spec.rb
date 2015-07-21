require 'spec_helper'

describe "StaticPages" do
  describe "Home Page" do
    it "should have the content 'Sample App'" do
    	visit '/static_pages/home'
    	page.should have_content('Sample App')
    end

   	it "Should have the right title" do
  		visit '/static_pages/home'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial | Home")
  	end
  end

  describe "Help page" do
  	it "Should have the content 'Help'" do
  		visit '/static_pages/help'
  		page.should have_content('Help')
  	end

  	it "Should have the right title" do
  		visit '/static_pages/help'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial | Help")
  	end
  end

  describe "About page" do
  	it "Should have content 'About us'" do
  		visit '/static_pages/about'
  		page.should have_content('About Us')
  	end

  	it "Should have the right title" do
  		visit '/static_pages/about'
  		page.should have_selector('title', :text => "Ruby on Rails Tutorial | About")
  	end
  end
end
