class TextgramsController < ApplicationController
    before_filter :authenticate_user!
    
    def create
        @chat = Chat.find(params[:chat_id])
        @textgram = @chat.textgrams.build(textgram_params)
        @textgram.user_id = current_user.id
        @textgram.save!
        
        @path = chat_path(@chat)
    end
    
    private
    
    def textgram_params
        params.require(:textgram).permit(:message)
    end
end
