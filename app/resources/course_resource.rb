class CourseResource < ApplicationResource
  attribute :id, :integer, writable: false
  attribute :created_at, :datetime, writable: false
  attribute :updated_at, :datetime, writable: false
  attribute :name, :string
  attribute :category, :string
  attribute :required, :string

  # Direct associations

  has_many :posts

  # Indirect associations

  many_to_many :posters,
               resource: UserResource
end
