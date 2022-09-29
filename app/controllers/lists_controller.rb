class ListsController < ApplicationController
  before_action :set_list, only: [:destroy]
  before_action :set_board, only: [:create]

  def destroy
    @board = @list.board
    @list.destroy
    flash[:notice] = "The list and its tasks were deleted"
    redirect_to @board
  end

  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @board
    else
      flash[:danger] = "Something went wrong." 
      redirect_to @board
    end
  end

  private 
  def set_board
    @board = Board.find_by_id(list_params[:board_id])
  end

  def set_list
    @list = List.find_by_id(params[:id])
  end

  def list_params 
    params.require(:list).permit(:name, :board_id)
  end
end