class MainController < ApplicationController
    
    def home
      #render plain: "Sesion Iniciada"
      @post = Post.new
      @posts = Post.all
    end
  
    def unregistered
      render plain: "Debe iniciar sesion"
    end
  
  end
  