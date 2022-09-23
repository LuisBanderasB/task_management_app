class BoardsController < ApplicationController
  before_action :set_board, only: [:show]

  def index
    @boards = Board.all
  end

  def show
    @lists = @board.lists
  end

  def create
    @board = Board.new(board_params)
    if @board.save
      flash[:notice] = "Board was created successfully." 
      redirect_to @board
    else
      render 'index'
    end
  end

  private 

  def board_params 
    params.require(:board).permit(:name, :visibility)
  end

  def set_board
    @board = Board.find(params[:id])
  end
end
