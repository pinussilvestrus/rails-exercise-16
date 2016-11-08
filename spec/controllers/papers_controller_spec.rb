require 'rails_helper'

RSpec.describe PapersController, type: :feature do
  it 'should render' do
    visit new_paper_path
    expect(page).to have_text("Creating new paper")
  end

  it 'should allow to select 5 authors from 5 separate drop downs' do
    paper = create(:paper)

    visit edit_paper_path(id: paper.id)

    expect(page).to have_field("Author 1")
    expect(page).to have_field("Author 2")
    expect(page).to have_field("Author 3")
    expect(page).to have_field("Author 4")
    expect(page).to have_field("Author 5")
  end

  it 'should list the authors' do
    paper = create(:paper)

    visit papers_path + "/" + paper.id.to_s
    expect(page).to have_text("Alan Turing")
  end

  it 'should allow a year-filter' do
    create(:paper, :year => 1950)
    create(:paper, :year => 1968)

    visit papers_path + "/?year=1950"
    expect(page).to_not have_text("1968")
  end
end
