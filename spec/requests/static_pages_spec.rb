

require 'spec_helper'

describe "Static pages" do

  describe "Home page" do
    before { visit root_path }

    it "should have the h1 'Sample App'" do
      page.should have_selector('h1', :text => 'App1')
    end

    it "should have the title 'Home'" do
      page.should have_selector('title',
                        :text => "Learning Ruby as App1 | Home")
    end
  end

  describe "Help page" do
    before { visit help_path }

    it "should have the h1 'Help'" do
      page.should have_selector('h1', :text => 'Help')
    end

    it "should have the title 'Help'" do
      page.should have_selector('title',
                        :text => "Learning Ruby as App1 | Help")
    end
  end

  describe "About page" do
    before { visit about_path }

    it "should have the h1 'About Us'" do
      page.should have_selector('h1', :text => 'About Us')
    end

    it "should have the title 'About Us'" do
      page.should have_selector('title',
                    :text => "Learning Ruby as App1 | About Us")
    end
  end
end

