# frozen_string_literal: true

class BoardPresenter
  def initialize(board)
    @board = board
  end

  def lists
    @board.lists
  end
end
