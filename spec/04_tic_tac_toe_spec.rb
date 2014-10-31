require 'spec_helper'

describe "Tic Tac Toe, in arrays" do
  let(:___) { nil }

  let(:data) {
    [
      ['X', 'O', 'O'],
      ['X', 'X', 'O'],
      ['O', 'X', 'O']
    ]
  }

  before do
    pending
  end

  describe "counting usage per row" do
    it "returns how many times X was played in each row" do
      xs_per_row = data.map{|row| row.count("O")}
      expect(xs_per_row).to be == [1, 2, 1]
    end

    xit "returns how many times O was played in each row" do
      os_per_row = data.map{ |row| row.count("O")}
      expect(os_per_row).to be == [2, 1, 2]
    end
  end

  describe "getting coordinates of usage" do
    xit "returns an array of [row, column] array coordinates for each usage of X" do
      x_coordinates = []
      row_index = 0
      column_index = 0
      data.each do |row|
        row.each do |column|
          if column == "X"
            x_coordinates << [row_index, column_index]
          end
          column_index += 1
        end
        column_index = 0
        row_index += 1
      end
      expect(x_coordinates).to be == [[0, 0], [1, 0], [1, 1], [2, 1]]
    end

    xit "returns an array of [row, column] array coordinates for each usage of O" do
      x_coordinates = x_coordinates = []
      row_index = 0
      column_index = 0
      data.each do |row|
        row.each do |column|
          if column == "O"
            x_coordinates << [row_index, column_index]
          end
          column_index += 1
        end
        column_index = 0
        row_index += 1
      end
      expect(x_coordinates).to be == [[0, 1], [0, 2], [1, 2], [2, 0], [2, 2]]
    end
  end

  describe "testing who won" do
    xit "determines whether X or O won" do
      winner =
       # just trying out functions and the .ord method 'discovered' by the russian dude
      # to create a unique "winning number"
      # method is totally unneccesary but still enjoy trying it out

        def sum(datablock)
          agg = 0
          datablock.each_char { |a| agg += a.ord}
          return agg
        end
        winner=''
        if sum(data.join[0..2]) || sum(data.join[3..5]) || sum(data.join[6..8]) == 237 #"OOO"
          winner = "O"
        elsif   sum(data.join[0..2]) || sum(data.join[3..5])  || sum(data.join[6..8]) == 264    #"XXX"
          winner = "X"

      end

      p winner

      expect(winner).to be == 'O'
    end
  end
end
