class HomeController < ApplicationController
          
          require 'ladder'
          require 'words4'
          
          def index
         	 @start_word = dictionary.sample
         	 @end_word = dictionary.sample
          end
          
          def show
          	@start_word = params[:start_word]
          	@query_field1 = params[:query_field1]
          	@query_field2 = params[:query_field2]
          	@query_field3 = params[:query_field3]
          	@query_field4 = params[:query_field4]
          	@query_field5 = params[:query_field5]
          	@end_word = params[:end_word]
          	@array = [@start_word, @query_field1, @query_field2, @query_field3, @query_field4, @query_field5, @end_word]
          	@array = @array.reject { |x| x.empty?}
          	@win = legal @array
          
		if @win == true
          		@win = "You have won the game of word ladder"
          	else 
          		@win = "You have lost the game of  word ladder"
      		end
	end
end
