class BoardsController < ApplicationController
  before_action :set_board, only: [:show, :destroy, :update]

  def index
    @boards = current_user.boards
  end

  def show
    # presenter declaration should be
    # at the first line of the view
    @lists = BoardPresenter.new(@board).lists
  end

  def create
    # remember creates does the saving for you
    # already, you'd need to use .new
    @board = current_user.boards.create(board_params)
    if @board.save
      flash[:notice] = "Board was created successfully." 
      redirect_to @board
    else
      flash[:danger] = "You need a name with more than 6 characters." 
      redirect_to boards_path
    end
  end

  def update
    if @board.update(board_params)
      flash[:notice] = "Board was updated successfully."
      redirect_to @board
    else
      flash[:danger] = "Board needs a name larger than 6 characters."
      redirect_to @board
    end
  end

  def destroy
    @board.destroy
    flash[:notice] = "Board was deleted succesfuly"
    redirect_to boards_path
  end


  private 

  def board_params 
    params.require(:board).permit(:name, :visibility)
  end

  def set_board
    @board = Board.find_by_id(params[:id])
  end
end
