class User < ApplicationRecord
  # Direct associations

  has_many   :comments,
             :foreign_key => "commenter_id",
             :dependent => :destroy

  has_many   :posts,
             :foreign_key => "poster_id",
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
