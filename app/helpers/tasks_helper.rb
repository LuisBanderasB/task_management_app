module TasksHelper
  def task_users(task)
    @task = Task.find(task.id)
    users = @task.list.board.workspace.users
    users
  end

  def get_creator(task)
    @task = Task.find(task.id)
    @author = User.find(@task.author)

    name = "#{@author.first_name} #{@author.last_name}"
  end
end
