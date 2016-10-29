class Author < ActiveRecord::Base
  belongs_to :paper
  validates :last_name, presence: true
  def name
    return first_name + ' ' + last_name
  end
end
