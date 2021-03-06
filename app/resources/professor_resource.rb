class ProfessorResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :bio, :string
  attribute :url, :string

  # Direct associations

  has_many :sessions

  # Indirect associations

  many_to_many :courses
end
