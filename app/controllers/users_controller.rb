class UsersController < ApplicationController

  def search
    user_search = UserSearch.new(search_name: params[:search_name],search_age: params[:search_age])
    #user_search = UserSearch.new(params_user_search)
    @users = user_search.execute
  end

  private

  def params_user_search
    params.permit(:search_name, :search_age)
  end
end
