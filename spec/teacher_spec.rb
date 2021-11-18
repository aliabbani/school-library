require_relative '../teacher'


describe Teacher do
    before(:each) do 
        @teacher = Teacher.new('Algorithm', 42, 'suzana') 
     end 
     
     it 'is an instance of the class?' do
        expect(@teacher).to be_instance_of Teacher
     end

     it 'Check if teacher is part of person' do
        expect(@teacher).to be_kind_of Person 
     end

     it 'Check the validate name of the student' do
        expect(@teacher.validate_name).to eql 'Suzana'
     end

     it 'Check the can_use_services? method of the teacger' do
        expect(@teacher.can_use_services?).to be true
    end
end
