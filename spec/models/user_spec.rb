require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:posts) }
  end

  describe "InDirect Associations" do
    it { should have_many(:courses) }
  end

  describe "Validations" do
  end
end
