class PagesController < ApplicationController
  def display
    @cats = Cat.find_each
    @users = User.find_each
    @todos = Todo.find_each
  end
  def create
    #x = Cat.create(name:"Fool")
    #y = User.create(Username: "Joshie", email:"why u wanna no", age:18)
    #t = Todo.create(task: "finish this hw", finished:true)
  end
  def new
    @todo = Todo.new
  end
  def post
    @post = Todo.create(task:params[:todo][:task], finished:params[:todo][:finished])
    render 'post'
  end


end
