
# right answer ----- create a class called ApplicationControler inheritting from :
# class Base namespaced under ActionController 
class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
end
