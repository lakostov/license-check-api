class LicensesController < ApplicationController
  before_action :authenticate_request
  def get
    #Get the license for the authenticated user by license key
    @license = License.find_by(key: params[:id])
    #Return json result if license key is found
    #with user's id licensed product and licensed modules including their experation dates
    render json: @license ? {user_id: @license.user_id,
       product: {name: @license.product.name, exp_date: @license.exp_date},
        submodules: @license.modullicenses.map {|s| {name: s.submodule.name, exp_date: s.exp_date}}} :
         {error: 'Resource Not Found'}, status: 404
  end
end
