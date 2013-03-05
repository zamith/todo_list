class TodosController < ::ApplicationController
  def index
    @todos = Todo.all
  end

  def new
    @todo = Todo.new
  end

  def create
    todo = Todo.new
    todo.description = params[:todo][:description]
    todo.save

    redirect_to root_path
  end

  def destroy
    Todo.find(params[:id]).destroy

    redirect_to root_path
  end

  def edit
    @todo = Todo.find params[:id]
  end

  def update
    Todo.find(params[:id]).update_attributes params[:todo]

    redirect_to root_path
  end

  def show
    @todo = Todo.find params[:id]
  end
end
