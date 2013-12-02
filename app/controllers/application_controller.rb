class ApplicationController < ActionController::Base
<<<<<<< HEAD
  protect_from_forgery
=======
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
>>>>>>> 95dc8c639a8344b695ac56b4b1871601f0a1c2df
end
