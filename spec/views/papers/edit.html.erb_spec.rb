require 'rails_helper'

RSpec.describe "papers/edit", type: :view do
  before(:each) do
    assign(:paper, [
      Paper.create!(
        :title => "Title",
        :venue => "Venue",
        :year => "1999"
      )
    ])
  end
end
