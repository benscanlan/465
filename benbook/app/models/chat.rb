class Chat < ActiveRecord::Base
    belongs_to :sender, :foreign_key => :sender_id, class_name: 'User'
    belongs_to :receiver, :foreign_key => :receiver_id, class_name: 'User'
    
    has_many :textgrams, dependent: :destroy
    
    validates_uniqueness_of :sender_id, :scope => :receiver_id
    
    # retrieves  chats.
    scope :involving, -> (user) do
    where("chats.sender_id =? OR chats.receiver_id =?",user.id,user.id)
    end
    # Some simple logic to make sure a sender to reciever chat is the same as reciever to sender.
    scope :between, -> (sender_id,receiver_id) do
    where("(chats.sender_id = ? AND chats.receiver_id =?) OR (chats.sender_id = ? AND chats.receiver_id =?)", sender_id,receiver_id, receiver_id, sender_id)
    end

end

