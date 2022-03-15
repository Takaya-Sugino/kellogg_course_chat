require 'rails_helper'

RSpec.describe Course, type: :model do
  
    describe "Direct Associations" do

    it { should have_many(:sessions) }

    end

    describe "InDirect Associations" do

    it { should have_many(:professors) }

    end

    describe "Validations" do

    end
end
