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

  # Indirect associations

end