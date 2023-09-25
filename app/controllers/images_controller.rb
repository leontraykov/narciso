class ImagesController < ApplicationController
  before_action :set_painting
  before_action :set_image, only: [:destroy]
  
  def create
    @image = @painting.images.build(image_params)
    if @image.save
      redirect_to edit_painting_path(@painting), notice: 'Image was successfully added.'
    else
      render 'paintings/edit'
    end
  end

  def destroy
    @image.destroy
    respond_to do |format|
      format.html { redirect_to edit_painting_path(@painting), notice: 'Image was successfully removed.' }
      format.js   # Это будет искать шаблон destroy.js.erb
    end
  end
  
  private
  
  def set_painting
    @painting = Painting.find(params[:painting_id])
  end
  
  def set_image
    @image = Image.find(params[:id])
  end
  
  def image_params
    params.require(:image).permit(:image)
  end
end
