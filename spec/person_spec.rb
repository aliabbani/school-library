require_relative '../person'
require_relative '../corrector'

describe Person do
  before(:each) do
    @person = Person.new(28, 'ali', true)
  end

  it 'is an instance of the class?' do
    expect(@person).to be_instance_of Person
  end

  it 'Check the name of the person' do
    expect(@person.name).to eq 'ali'
  end

  it 'Check the age of the person' do
    expect(@person.age).to eq 28
  end

  it 'Check the parent permission of the person' do
    expect(@person.parent_permission).to eq true
  end

  it 'Check the validate name of the person' do
    expect(@person.validate_name).to eql 'Ali'
  end

  it 'Check the can use services of the person' do
    expect(@person.can_use_services?).to be true
  end
end
