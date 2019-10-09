class ApplicationController < ActionController::API
  include Response
  include ExceptionHandler

  # called before every action on controllers
  before_action :authorize_request
  attr_reader :current_user

  private

  # Check for valid request token and return user
  def authorize_request
    @current_user = (AuthorizeApiRequest.new(request.headers).call)[:user]
  end
end

# on every request: app will verify request, by calling the (request authorization service)
# IF authed, will set (CURRENT_USER ) object to be used in other controllers
# don't have guard classes, or conditionals, because of our error handling implementation
