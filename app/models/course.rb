class Course < ApplicationRecord
  # Direct associations

  has_many   :posts,
             dependent: :destroy

  # Indirect associations

  has_many   :posters,
             through: :posts,
             source: :poster

  # Validations

  # Scopes

  def to_s
    name
  end
end
