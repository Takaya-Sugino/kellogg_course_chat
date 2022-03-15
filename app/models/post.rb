class Post < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :dependent => :destroy

  belongs_to :session

  belongs_to :user,
             :foreign_key => "poster_id"

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    rating
  end

end
