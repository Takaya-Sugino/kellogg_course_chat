class Course < ApplicationRecord
  # Direct associations

  has_many   :sessions,
             :dependent => :destroy

  # Indirect associations

  has_many   :professors,
             :through => :sessions,
             :source => :professor

  # Validations

  # Scopes

  def to_s
    name
  end

end
