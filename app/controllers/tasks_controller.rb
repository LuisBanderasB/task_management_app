class TasksController < ApplicationController
  def create
      @task = Task.new(task_params)
      if @task.save
        flash[:notice] = "Board was created successfully." 
      else
        render 'index'
      end
  end

  private 

  def task_params 
    params.require(:task).permit(:title, :list_id)
  end
end