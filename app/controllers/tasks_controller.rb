# frozen_string_literal: true

class TasksController < ApplicationController
  before_action :set_task, only: %i[update update_list]
  before_action :set_board, only: [:create]
  before_action :require_author, only: %i[update update_list]

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
    if @task.update(task_params)
      flash[:notice] = 'task was updated successfully.'
      redirect_to @board
    else
      flash[:danger] = 'Only authors can perform this actionsita'
      redirect_to @board
    end
    
  end

  def update_list
    @task.list_id = params[:task][:list]
    if @task.save
      flash[:notice] = "task was updated successfully."
      redirect_to @task.list.board
    else
      flash[:notice] = "Only authors can perform that action."
    end
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def set_board
    @board = List.find_by(id: task_params[:list_id]).board
  end

  def task_params
    params.require(:task).permit(:title, :list_id, :description)
  end

  def require_author
    if current_user.id != @task.author && current_user.role != "admin"
      flash[:alert] = "Just the author can perform that action."
      redirect_to @task.list.board
    end
  end
end
