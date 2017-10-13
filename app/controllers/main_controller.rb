class MainController < ApplicationController
    
    def home
      render plain: "Sesion Iniciada"
    end
  
    def unregistered
      render plain: "Debe iniciar sesion"
    end
  
  end
  