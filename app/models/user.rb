class User < ApplicationRecord
  # Direct associations

  has_many   :posts,
             foreign_key: "poster_id",
             dependent: :destroy

  # Indirect associations

  has_many   :courses,
             through: :posts,
             source: :course

  # Validations

  # Scopes

  def to_s
    name
  end
end
