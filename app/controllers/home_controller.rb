class HomeController < ApplicationController
  def index
  	@posts = Post.all
  end

  def board
  	@boards = Board.all
  end

  def write
  	boards = Board.new
  	boards.user_id = current_user.id
  	boards.email = current_user.email
  	boards.content = params[:content]
  	boards.save

  	redirect_to '/home/board'
  end

  def logout
  	session.destroy
  	redirect_to '/'
  end

  def post_read

  end

  def post_write
  	posts = Post.new
  	posts.title = params[:title]
  	posts.image = params[:image]
  	posts.content = params[:content]
  	posts.save

  	redirect_to '/'
  end

  def reply_write_do
  	replies = Reply.new
  	replies.post_id = params[:post_id]
  	replies.email = current_user.email
  	replies.content = params[:my_reply]
  	replies.save

  	redirect_to '/'
  end

  def reply_write

  end


end 
