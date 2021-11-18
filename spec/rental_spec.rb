require_relative '../rental'
require_relative '../book'
require_relative '../person'

describe "Test class Rental" do

  before :all do 
    @b1 = Book.new('Book 1', 'Author 1')
    @b2 = Book.new("Book 2", 'Author 2')
    @p1 = Person.new(45, 'Person 1',)
    @p2 = Person.new(25, 'Person 2',)
    @r1 = Rental.new('2020-01-02', @b1, @p1)
  end

  context '#instances' do
    it 'Check date of rental' do 
      expect(@r1.date).to eq '2020-01-02'
    end

    it 'Check book class' do 
      expect(@r1.book).to match @b1
    end

    it 'Check person class' do 
      expect(@r1.person).to match @p1
    end
  end

  context ('Book#rentals') do 
    it ('check @b1 book rental') do 
      expect(@b1.rentals[0]).to eq @r1
    end
  end

  context ('Person#rentals') do 
    it ('check @p1 book rental') do 
      expect(@p1.rentals[0]).to eq @r1
    end
  end
end
