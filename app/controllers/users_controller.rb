class UsersController < ApplicationController

  def index
    @all_users = User.all
    @friends = current_user.friends
    @not_friends = @all_users.where.not(id: @friends.ids)
    @other_users = @not_friends.where.not(id: current_user.id)
  end

  def my_portfolio
    @tracked_stocks = current_user.stocks
  end

  def my_friends
    @friends = current_user.friends
  end

end
