class Session < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :posts,
             dependent: :destroy

  belongs_to :professor

  belongs_to :course

  # Indirect associations

  has_many   :users,
             through: :bookmarks,
             source: :user

  # Validations

  # Scopes

  def to_s
    course.to_s
  end
end
