require 'rails_helper'

RSpec.describe Session, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:bookmarks) }

    it { should have_many(:posts) }

    it { should belong_to(:professor) }

    it { should belong_to(:course) }

    end

    describe "InDirect Associations" do

    end

    describe "Validations" do

    end
end
