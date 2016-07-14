require 'rails_helper'

RSpec.describe BibleBook, type: :model do
  subject { FactoryGirl.build :bible_book }

  describe BibleBook, 'valid_factory' do
    it 'valid factory?' do
      expect(FactoryGirl.build(:bible_book)).to be_valid
    end
  end

  describe BibleBook, 'validation' do
    it 'name required?' do
      expect(FactoryGirl.build(:bible_book, name: 'book name')).to be_valid
      expect(FactoryGirl.build(:bible_book, name: nil)).to_not be_valid
    end
  end
end
