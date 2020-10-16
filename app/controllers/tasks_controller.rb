class TasksController < ApplicationController

  def new
    @taskall = Task.all
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

  def edit
    @taskall = Task.all
    @tasks = Task.find(params[:id])
  end

  def update
    @taskall = Task.all
    @tasks = Task.find(params[:id])
    @tasks.update(task_params)
    render :edit
  end

  private

  def task_params
    params.require(:task).permit(:title, :title_detail, :task, :task_memo, :category_id).merge(user_id: current_user.id)
  end

end
