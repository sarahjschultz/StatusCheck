class ApplicationController < ActionController::Base
  include ActionController::ImplicitRender
  include ActionController::MimeResponds
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
end
