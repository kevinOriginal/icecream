class HomeController < ApplicationController
  def index
    @posts = Post.all.reverse
    
  end
  
  
  
  def write
   bond =Post.new
   bond.title = params[:title]
   bond.content = params[:content]
   if bond.save
    redirect_to "/home/index"
    else
    render text: bond.errors.messages[:title].first
   end
  end
  
  
  
  def datgul_write
    datgul = Datgul.new
    datgul.content = params[:content]
    datgul.post_id = params[:pid]
    datgul.save
    
    redirect_to "/home/index"
  end
  
  
  
  
end
