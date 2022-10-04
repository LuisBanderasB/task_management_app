class TasksController < ApplicationController
  before_action :set_task, only: %i[update update_list]
  before_action :set_board, only: [:create]

  def create
    @task = Task.new(task_params)
    @task.author = current_user.id

    if @task.save
      redirect_to @board
    else
      flash[:danger] = 'Something went wrong.'
    end
  end

  def update
    @list = @task.list
    @board = @list.board
    if @task.update(task_params_to_update)
      flash[:notice] = 'task was updated successfully.'
      redirect_to @board
    else
      flash[:danger] = 'Something went wrong'
      redirect_to @board
    end
  end

  def update_list
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

  def task_params_to_update
    params.require(:task).permit(:title, :list_id, :description)
  end
end
