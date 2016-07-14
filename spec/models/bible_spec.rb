require 'rails_helper'

RSpec.describe Bible, type: :model do

  describe Bible, 'valid_factory' do
    it 'valid factory?' do
      expect(FactoryGirl.build(:bible)).to be_valid
    end
  end

  describe Bible, 'validation' do
    it 'validate verse' do
      expect(FactoryGirl.build(:bible, verse: 'verse text')).to be_valid
      expect(FactoryGirl.build(:bible, verse: nil)).to_not be_valid
    end

    it 'validate chapter' do
      expect(FactoryGirl.build(:bible, chapter_number: 1)).to be_valid
      expect(FactoryGirl.build(:bible, chapter_number: nil)).to_not be_valid
    end

    it 'validate verse number' do
      expect(FactoryGirl.build(:bible, verse_number: 1)).to be_valid
      expect(FactoryGirl.build(:bible, verse_number: nil)).to_not be_valid
    end

    it 'validate bible book' do
      expect(FactoryGirl.build(:bible, bible_book: FactoryGirl.build(:bible_book))).to be_valid
      expect(FactoryGirl.build(:bible, bible_book: nil)).to_not be_valid
    end
  end

end
