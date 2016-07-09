module TextgramsHelper
    def self_or_other(textgram)
        textgram.user == current_user ? "self" : "other"
    end
    
    def textgram_interlocutor(textgram)
        textgram.user == textgram.chat.sender ? textgram.chat.sender : textgram.chat.receiver
    end
end
