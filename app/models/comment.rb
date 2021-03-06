class Comment < ApplicationRecord
  # Direct associations

  belongs_to :post

  belongs_to :commenter,
             class_name: "User"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    post.to_s
  end
end
