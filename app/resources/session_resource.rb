class SessionResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :course_id, :integer
  attribute :professor_id, :integer

  # Direct associations

  has_many   :bookmarks

  has_many   :posts

  belongs_to :professor

  belongs_to :course

  # Indirect associations

  many_to_many :users
end
