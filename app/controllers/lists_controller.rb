class ListsController < ApplicationController
  def create
    @list = List.new(list_params)
    if @list.save
      redirect_to @list.board
    else
      flash[:danger] = "Something went wrong." 
    end
  end

  private 

  def list_params 
    params.require(:list).permit(:name, :board_id)
  end
end