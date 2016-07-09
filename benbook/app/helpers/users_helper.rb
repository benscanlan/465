module UsersHelper
  def chat_interlocutor(chat)
    chat.receiver == current_user ? chat.sender : chat.receiver
  end
end
