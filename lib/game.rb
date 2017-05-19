require './lib/square.rb'

class Game

  attr_reader :board, :current_player

  def initialize
    @current_player = "player1"
    @board = [
      a1 = Square.new("a1"),
      a2 = Square.new("a2"),
      a3 = Square.new("a3"),
      b1 = nil,
      b2 = nil,
      b3 = nil,
      c1 = nil,
      c2 = nil,
      c3 = nil
    ]

  end


  def play(square)
    take(square)
    switch_player
    print "Next go is " + current_player
  end

  def take(square)
    if current_player == "player1"
      set_tick(square)
    else
      set_tack(square)
    end
  end

  def find(square)
    board.each do |sq|
      if sq.name == square
        return sq
      end
    end
  end

  def set_tick(square)
    target = find(square)
    target.tick
  end

  def set_tack(square)
    target = find(square)
    target.tack
  end

  def switch_player
    if current_player == "player1"
      self.current_player = "player2"
    else
      self.current_player = "player1"
    end
  end

  def row_1

  end

  private

  attr_writer :current_player

end
