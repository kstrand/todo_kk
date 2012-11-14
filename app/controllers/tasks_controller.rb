class TasksController < ApplicationController
  def index
  end

  def new
  end

  def show
  end

  # params = {"task"=>{"description"=>"buy broom"}, "list_id"=>"5"}
  # Task.new(:description => "buy broom")
  def create
    
    @list = List.find(params[:list_id])
    @task = @list.tasks.build(params[:task])
    @task.save!
    redirect_to list_path(params[:list_id]) # lists/5 or lsist/:id
    
    # Non-OO!! doesn't talk about relationship, just cares about relationship w/ list
    # @task = Task.new
    #  @task.description = params[:task] # => {"description"=>"buy broom"}
    #  @task.list_id = params[:list_id]
    #  @task.save
  end

  def edit
  end

  def update
  end

  def destroy
  end
end
