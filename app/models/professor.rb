class Professor < ApplicationRecord
  # Direct associations

  has_many   :sessions,
             :dependent => :destroy

  # Indirect associations

  # Validations

  # Scopes

  def to_s
    name
  end

end
