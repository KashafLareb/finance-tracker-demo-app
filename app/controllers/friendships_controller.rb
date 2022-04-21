class FriendshipsController < ApplicationController

  def create
    Friendship.create(user_id: current_user.id, friend_id: params[:user])
    redirect_to my_friends_path
  end

  def destroy
    friend = User.find(params[:id])
    friendship = Friendship.where(user_id: current_user.id, friend_id: friend.id).first
    friendship.destroy
    flash[:notice] = "Unfriended '#{friend.email}' successfully!"
    redirect_to my_friends_path
  end
  
end
