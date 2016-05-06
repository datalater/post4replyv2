class HomeController < ApplicationController
  def index
    @posts = Post.all.order("id desc")
  end
  
  def reply_write
      reply = Reply.new
      reply.content = params[:content]
      reply.post_id = params[:id_of_post]
      reply.save
      
      redirect_to "/home/index"
  end
  
  def write
      
      post = Post.new(title: params[:title], content: params[:content])
      
      if post.save
        redirect_to "/home/index"
      else
        render :text => post.errors.messages[:title].first
      end
  end
    
end
