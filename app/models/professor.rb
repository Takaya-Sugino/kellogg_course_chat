class Professor < ApplicationRecord
  # Direct associations

  has_many   :sessions,
             dependent: :destroy

  # Indirect associations

  has_many   :courses,
             through: :sessions,
             source: :course

  # Validations

  # Scopes

  def to_s
    name
  end
end
