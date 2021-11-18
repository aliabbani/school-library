require_relative '../classroom'
require_relative '../student'

describe "Run tests for class Classroom" do 
  before :all do
    @s1 = Student.new('5', 24, 'Ali')
    @s2 = Student.new('2', 15, 'faiz')
    @c1 = Classroom.new('Ruby')
  end

  it 'check label' do
    expect(@c1.label).to eq 'Ruby'
  end

  it ('add students to the classroom') do
    @c1.add_student(@s1)
    expect(@c1.students[0]).to match @s1 
  end

  it ('check if student classroom is updated in student class') do
    @c1.add_student(@s1)
    expect(@s1.classroom).to eq @c1
  end

end

