class TasksController < ApplicationController
  before_action :set_task, only: [:update]

  def create
      @task = Task.new(task_params)
      if @task.save
        redirect_to board_path(task_params[:list_id])
      else
        flash[:danger] = "Something went wrong." 
      end
  end

  def update
    @task.list_id = params[:task][:list]
    @task.save
  end

  private 
  def set_task
    @task = Task.find(params[:id])
  end

  def task_params 
    byebug
    params.require(:task).permit(:title, :list_id)
  end
end