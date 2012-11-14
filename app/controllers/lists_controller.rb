class ListsController < ApplicationController


  def index
    @lists = List.all
    @list = List.new
  end

  def new
  end

  def create
    @list = List.new(params[:list])
    @list.save
    redirect_to lists_path
  end

  def show
    @list = List.find(params[:id])
    @task = Task.new
  end

  def update
  end

  def edit
  end

  def destroy
  end
end
