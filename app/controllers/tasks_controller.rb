class TasksController < ApplicationController

  def index
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.new(task_params)
    if @task.save
      redirect_to root_path
    else
      render :new
    end
  end

  private

  def task_params
    params.require(:task).permit(:title, :title_detail, :task, :task_memo).merge(user_id: current_user.id)
  end


end
