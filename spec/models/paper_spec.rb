require 'rails_helper'

RSpec.describe Paper, type: :model do
  before :each do
    @paper = FactoryGirl.create(:paper)
  end

  it 'should have an empty list of authors' do
    expect(@paper.authors).not_to be_nil
  end

  it 'have authors' do
    expect(@paper.author_ids).not_to be_empty
  end
end
