class UsersController < ApplicationController
  before_filter :authenticate_user!

  def index
      @users = User.where.not("id = ?",current_user.id).order("created_at DESC")
      @chats = Chat.involving(current_user).order("created_at DESC")
  end
end
