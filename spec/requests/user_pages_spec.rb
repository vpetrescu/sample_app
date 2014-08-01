require 'spec_helper'

describe "User Pages" do
  subject { page }
  let(:base_name) {"Ruby on Rails Tutorial Sample App"}
  describe "signup page" do
    before { visit signup_path }
    it { should have_content('Sign up') }
    it { should have_title("#{base_name} | Sign up") }
  end
end
