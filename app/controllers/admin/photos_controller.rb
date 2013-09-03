class Admin::PhotosController < AdminController

# DELETE /events/1
  # DELETE /events/1.json
  def destroy
    @photo = Photo.find(params[:id])
    @event = @photo.parent
    @photo.destroy
    respond_to do |format|
      format.html { redirect_to admin_event_url(@event) }
      format.json { head :no_content }
    end
  end

end  