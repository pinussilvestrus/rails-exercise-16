class Author < ActiveRecord::Base
  belongs_to :paper, :foreign_key => :paper_id
  has_many :papers
  validates :last_name, presence: true
  def name
    return first_name + ' ' + last_name
  end
end
