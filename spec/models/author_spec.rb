require 'rails_helper'

RSpec.describe Author, type: :model do
  before :each do
    @author = FactoryGirl.create(:author)
  end

  it 'name returns the full name' do
    expect(@author.name).to eq(@author.first_name + ' ' + @author.last_name)
  end

  it 'have paper_id' do
    expect(@author.paper_id).to be_nil
  end
end
