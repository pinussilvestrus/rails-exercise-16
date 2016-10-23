require 'rails_helper'

describe "Authors page", :type => :feature do

  it "should render'" do
    visit new_author_path
    expect(page).to have_text("Creating new author")
  end

  it "should have a field 'Firstname', 'Lastname', 'Homepage'" do
    visit new_author_path
    expect(page).to have_field("first name")
    expect(page).to have_field("last name")
    expect(page).to have_field("homepage")
  end
end
