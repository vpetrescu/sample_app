require 'spec_helper'

describe "StaticPages" do
  let(:base_name) {"Ruby on Rails Tutorial Sample App"}
  subject{ page }
  describe "Home Page" do
    before { visit root_path }
    it { should have_content('Sample App') }
    it { should have_title("#{base_name}") }
    it { should_not have_title("Home")  }
  end
  describe "Help page" do
    before { visit help_path }
    it { should have_content('Help') }
    it { should have_title("#{base_name} | Help") }
  end
  describe "About page" do
    before { visit about_path }
    it { should have_content("About Us") }
    it { should  have_title("#{base_name} | About Us") }
  end
  describe "Contact page" do
    before { visit contact_path }
    it {should have_content("Contact") }
    it {should have_title("#{base_name} | Contact") }
  end

end
