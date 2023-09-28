class PaintingsController < ApplicationController
  before_action :set_painting, only: %i[show edit update destroy]

  def index
    @paintings = Painting.all
    @user = current_user
  end

  def show
    @prev_painting = Painting.where("id < ?", @painting.id).order(id: :desc).first
    @next_painting = Painting.where("id > ?", @painting.id).order(id: :asc).first
    @user = current_user
  end

  def new
    @painting = Painting.new
  end

  def create
    @painting = Painting.new(painting_params)
    if @painting.save
      redirect_to @painting, notice: 'Painting was successfully created.'
    else
      render :new
    end
  end

  def edit
  end

  def update
    if @painting.update(painting_params)
      redirect_to @painting, notice: 'Painting was successfully updated.'
    else
      render :edit
    end
  end

  def destroy
    @painting.destroy
    redirect_to root_path, notice: 'Painting was successfully destroyed.'
  end

  private

  def set_painting
    @painting = Painting.find(params[:id])
  end

  def painting_params
    params.require(:painting).permit(:en_title, :en_description, :es_title, :es_description, :creation_date, images_attributes: [:id, :image, :_destroy])
  end
end
