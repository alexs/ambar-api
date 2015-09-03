class Api::V1::PicturesController < ApplicationController
  before_action :authenticate_with_token!, only: [:create, :update, :destroy]

  def index
    pictures = Picture.all
    render json: pictures
  end

  def show
    respond_with Picture.find(params[:id])   
  end

  def create
    picture = current_user.pictures.build(picture_params) 
    if picture.save
      render json: picture, status: 201, location: [:api, picture] 
    else
      render json: { errors: picture.errors }, status: 422
    end
  end

  def update
    picture = current_user.pictures.find(params[:id])
    if picture.update(picture_params)
      render json: picture, status: 200, location: [:api, picture] 
    else
      render json: { errors: picture.errors }, status: 422
    end
  end

  def destroy
    picture = current_user.pictures.find(params[:id]) 
    picture.destroy
    head 204
  end

  private

    def picture_params
      params.require(:picture).permit(:title, :price, :published) 
    end

end
