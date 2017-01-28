class Simon
  COLORS = %w(red blue green yellow)

  attr_accessor :sequence_length, :game_over, :seq

  def initialize
    @sequence_length = 1
    @game_over = false
    @seq = []
  end

  def play
    until @game_over
      take_turn
    end
    game_over_message
    reset_game
  end

  def take_turn
    show_sequence
    require_sequence
    unless @game_over
      @sequence_length += 1
      round_success_message
    end
  end

  def show_sequence
    add_random_color
  end

  def require_sequence
    
  end

  def add_random_color
    @seq << COLORS.shuffle.first
  end

  def round_success_message

  end

  def game_over_message

  end

  def reset_game
    @seq = []
    @sequence_length = 1
    @game_over = false
  end
end