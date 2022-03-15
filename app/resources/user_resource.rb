class UserResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :bio, :string
  attribute :graduation_year, :string
  attribute :program, :string
  attribute :email, :string

  # Direct associations

  has_many   :bookmarks

  has_many   :comments,
             foreign_key: :commenter_id

  has_many   :posts,
             foreign_key: :poster_id

  # Indirect associations

  many_to_many :sessions

  many_to_many :user_posts,
               resource: PostResource
end
