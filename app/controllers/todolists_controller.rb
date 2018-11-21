class TodolistsController < ApplicationController
  def new
  	@todolist = Todolist.new
  end

  def create

  	@todolist = Todolist.create(title: todolist_params[:title], content: todolist_params[:content])
   	
   	if @todolist.save
     respond_to do |format|
        format.html { redirect_to todolists_path }
        format.js   ## cela va rendre create.js.erb
     end
   end

  end

  def index
  end

  private
  def todolist_params
  	params.require(:todolist).permit(:title, :content)
  end

end
