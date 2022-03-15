require "rails_helper"

RSpec.describe Post, type: :model do
  describe "Direct Associations" do
    it { should have_many(:comments) }

    it { should belong_to(:session) }

    it { should belong_to(:user) }
  end

  describe "InDirect Associations" do
    it { should have_many(:commenters) }
  end

  describe "Validations" do
  end
end
