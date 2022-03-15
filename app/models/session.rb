class Session < ApplicationRecord
  # Direct associations

  has_many   :posts,
             :dependent => :destroy

  belongs_to :professor

  belongs_to :course

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    course.to_s
  end

end
