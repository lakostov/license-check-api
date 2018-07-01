class ApplicationController < ActionController::API
attr_reader :current_user

private
def authenticate_request
  #Set to true to imitate authenticated user
  @current_user = true #Instead of true there should be a method of an authorization class
  #getting the authentication token from the request headers
  render json: {error: 'Not Authorized User'}, status: 401 unless @current_user
end
end
