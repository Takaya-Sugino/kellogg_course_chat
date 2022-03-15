class Post < ApplicationRecord
  # Direct associations

  belongs_to :professor

  belongs_to :poster,
             class_name: "User"

  belongs_to :course

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    rating
  end
end
