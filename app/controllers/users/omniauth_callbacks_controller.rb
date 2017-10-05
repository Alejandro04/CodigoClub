class Users::OmniauthCallbacksController < ApplicationController 
    def facebook
     raise request.env["onmiauth.auth"].to_yaml
    end
  end
  