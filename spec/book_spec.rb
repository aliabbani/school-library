require_relative '../book'

describe Book do
    before(:each) do 
        @book = Book.new('book1', 'author1') 
     end 
     
     it 'is an instance of the class?' do
        expect(@book).to be_instance_of Book
     end

     it 'return the correct title' do
        expect(@book.title).to eq 'book1'
     end

     it 'return the correct title' do
        expect(@book.author).to eq 'author1'
     end
end