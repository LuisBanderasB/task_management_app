class TasksController < ApplicationController
  def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to board_path(task_params[:list_id])
      else
        flash[:notice] = "Something went wrong." 
      end
  end

  private 

  def task_params 
    params.require(:task).permit(:title, :list_id)
  end
end