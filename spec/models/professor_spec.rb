require "rails_helper"

RSpec.describe Professor, type: :model do
  describe "Direct Associations" do
    it { should have_many(:sessions) }
  end

  describe "InDirect Associations" do
    it { should have_many(:courses) }
  end

  describe "Validations" do
  end
end
