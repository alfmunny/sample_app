require 'spec_helper'

describe "StaticPages" do
  describe "GET /static_pages" do
    it "should have the content 'Sample App'" do
		visit '/static_pages/home'
      # Run the generator again with the --webrat flag if you want to use webrat methods/matchers
      #get static_pages_index_path
      #response.status.should be(200)
		page.should have_content('Sample App')
    end
  end
end
