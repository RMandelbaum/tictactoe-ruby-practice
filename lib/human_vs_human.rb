
module HumanVsHuman

  def human_vs_human
    puts "Human vs Human"
    display_board
  end

  def turn
    puts "Please enter 1-9:"
    input = gets.strip
    index = input_to_index(input)
    if valid_move?(index)
      move(index, current_player)
      display_board
    elsif (index > 8 || index < 0)
      puts "Invalid Number Bruh"
      turn
    else
      puts "Space is taken"
      turn
    end
  end

end
