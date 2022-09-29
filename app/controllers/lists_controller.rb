class ListsController < ApplicationController
  before_action :set_board, only: [:create]
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

  def list_params 
    params.require(:list).permit(:name, :board_id)
  end
end