require 'rails_helper'

describe "Authors page", :type => :feature do

  it "should render'" do
    visit new_author_path
    expect(page).to have_text("Creating new author")
  end

  it "should have a field 'First name', 'Last name', 'Homepage'" do
    visit new_author_path
    expect(page).to have_field("author_first_name")
    expect(page).to have_field("author_last_name")
    expect(page).to have_field("author_homepage")
  end
end
