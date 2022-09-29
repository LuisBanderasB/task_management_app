class TasksController < ApplicationController
  before_action :set_task, only: [:update]
  before_action :set_board, only: [:create]

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to @board
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

  def set_board
    @board = List.find_by_id(task_params[:list_id]).board
  end

  def task_params 
    params.require(:task).permit(:title, :list_id)
  end
end