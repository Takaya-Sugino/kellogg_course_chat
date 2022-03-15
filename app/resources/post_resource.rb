class PostResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :rating, :integer
  attribute :description, :string
  attribute :session_id, :integer
  attribute :poster_id, :integer

  # Direct associations

  has_many   :comments

  belongs_to :session

  belongs_to :user,
             foreign_key: :poster_id

  # Indirect associations

end
