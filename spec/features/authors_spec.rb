require 'rails_helper'

describe "Authors features", :type => :feature do

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

  it "should have a submit button" do
    visit new_author_path
    expect(page).to have_button("Create Author")
  end

  it "Author should have first name, last name, and homepage" do
    @author = Author.new(first_name: "Alan", last_name: "Turing", homepage: "https://de.wikipedia.org/wiki/Alan_Turing")
    expect(@author).not_to be_nil
  end

  it "should list name and homepage of all authors" do
    visit "/authors/"
    expect(page).to have_text('Listing authors')
  end


end
