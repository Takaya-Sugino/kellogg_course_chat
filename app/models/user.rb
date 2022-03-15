class User < ApplicationRecord
  # Direct associations

  has_many   :bookmarks,
             dependent: :destroy

  has_many   :comments,
             foreign_key: "commenter_id",
             dependent: :destroy

  has_many   :posts,
             foreign_key: "poster_id",
             dependent: :destroy

  # Indirect associations

  has_many   :sessions,
             through: :bookmarks,
             source: :session

  has_many   :user_posts,
             through: :comments,
             source: :post

  # Validations

  # Scopes

  def to_s
    name
  end
end
