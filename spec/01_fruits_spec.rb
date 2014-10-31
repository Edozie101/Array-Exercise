require 'spec_helper'

describe 'Array basics' do
  let(:___) { nil }
  let(:fruit) { ['apples', 'oranges', 'bananas', 'pomegranates', 'grapes'] }

  it "can report its length" do
    fruit_length = fruit.size
    expect( fruit_length ).to be == 5
  end

  xit "can report the index of the string 'banana'" do
    banana_index = fruit.index("banana")
    expect( banana_index ).to be == 2
  end

  xit "can create a new array where 'raspberries' is between apples and oranges" do
    new_array = fruit.dup.insert(1, 'raspberries')
    expect( new_array ).to be == ['apples', 'raspberries', 'oranges', 'bananas', 'pomegranates', 'grapes']
    expect(fruits.count).to be == 5
  end

  xit "can report the length of each string in the array" do
    lengths = fruit.dup.insert(1,'raspberries').map{|n| n.length}
    expect( lengths ).to be == [6, 11, 7, 7, 12, 6]
  end

  xit "can create a new array where all the fruit capitalized" do
    new_array = fruit.dup.insert(1,'raspberries').map{ |n| n.upcase}
    expect( new_array ).to be == ["APPLES", "RASPBERRIES", "ORANGES", "BANANAS", "POMEGRANATES", "GRAPES"]
  end

  xit "can create a new array that returns only fruits containing a 'g'" do
    new_array = fruit.delete_if{|n| !(include?"g") }
    expect( new_array ).to be == ["oranges", "pomegranates", "grapes"]
  end
end
