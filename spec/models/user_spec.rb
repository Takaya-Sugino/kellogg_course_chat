require "rails_helper"

RSpec.describe User, type: :model do
  describe "Direct Associations" do
    it { should have_many(:bookmarks) }

    it { should have_many(:comments) }

    it { should have_many(:posts) }
  end

  describe "InDirect Associations" do
    it { should have_many(:sessions) }

    it { should have_many(:user_posts) }
  end

  describe "Validations" do
  end
end
