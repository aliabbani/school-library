require_relative '../student'

describe Student do
  before(:each) do
    @student = Student.new('hisotry', 12, 'faizi', true)
  end

  it 'is an instance of the class?' do
    expect(@student).to be_instance_of Student
  end

  it 'Check if student is part of person' do
    expect(@student).to be_kind_of Person
  end

  it 'Check the validate name of the student' do
    expect(@student.validate_name).to eql 'Faizi'
  end

  it 'Check the play hooky method of the student class' do
    expect(@student.play_hooky).to eq "¯\(ツ)/¯"
  end
end
