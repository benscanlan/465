class ReferencesController < ApplicationController

   # GET /references
   def index
      @references = Reference.all
   end
# GET /references/1
def show
    @reference = Reference.find(params[:id])
end
# GET /references/new
def new
    @reference = Reference.new
end

# POST /references
def create
    @reference = Reference.new(params.require(:reference).permit(:URL, :topic, :annotation))
    if @reference.save
        redirect_to @reference, notice: 'A new reference was successfully created.'
        else
        render :new
    end
end
# GET /references/1/edit
def edit
    @reference = Reference.find(params[:id])
end


# PATCH /references/1
def update
    @reference = Reference.find(params[:id])
    if @reference.update(params.require(:reference).permit(:URL, :topic, :annotation))
        redirect_to @reference, notice: 'Reference was successfully updated.'
        else
        render :edit
    end
end
# DELETE /references/1
def destroy
    @reference = Reference.find(params[:id])
    @reference.destroy
    redirect_to references_url, notice: 'Reference was successfully destroyed.'
end

end
