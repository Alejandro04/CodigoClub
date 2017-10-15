class MainController < ApplicationController
    
    def home
    end
  
    def unregistered
      render plain: "Debe iniciar sesion"
    end
  
  end
  