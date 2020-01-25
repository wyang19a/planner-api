# frozen_string_literal: true

class TasksController < OpenReadController
  before_action :set_task, only: %i[update destroy]

  # GET /tasks
  def index
    @tasks = Task.all

    render json: @tasks
  end

  # GET /tasks/1
  def show
    render json: Task.find(params[:id])
  end

  # POST /tasks
  def create
    @task = current_user.tasks.build(task_params)

    if @task.save
      render json: @task, status: :created, location: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /tasks/1
  def update
    if @task.update(task_params)
      render json: @task
    else
      render json: @task.errors, status: :unprocessable_entity
    end
  end

  # DELETE /tasks/1
  def destroy
    @task.destroy

    head :no_content
  end

  # Use callbacks to share common setup or constraints between actions.
  def set_task
    @task = current_user.tasks.find(params[:id])
  end

  # Only allow a trusted parameter "white list" through.
  def task_params
    params.require(:task).permit(:Tto, :Tfrom, :title, :description, :completed, :user_id)
  end

  private :set_task, :task_params
end
