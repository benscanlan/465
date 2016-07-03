class Textgram < ActiveRecord::Base
  belongs_to :chat
  belongs_to :user
  
  validates_presence_of :message, :chat_id, :user_id
end
