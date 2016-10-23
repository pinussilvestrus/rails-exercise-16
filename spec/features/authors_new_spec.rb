require 'rails_helper'

describe "Index page", :type => :feature do

  it "should render'" do
    visit new_author_path
    expect(page).to have_text("Creating new author")
  end
end
