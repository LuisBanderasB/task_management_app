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

  def get_text_files(files)
    @textFiles = []
    files.each do |file|
      if file.filename.extension_without_delimiter == "pdf"
        @textFiles << file
      end
    end
    @textFiles
  end

  def get_image_files(files)
    @imageFiles = []
    files.each do |file|
      if file.filename.extension_without_delimiter == "png"
        @imageFiles<< file
      end
    end
    @imageFiles
  end
end
