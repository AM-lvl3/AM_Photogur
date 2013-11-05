class PicturesController < ApplicationController

	def index

	@pictures = Picture.all
    
  end

  def show
    @pictures = @picture = Picture.find(params[:id])

  end

  def new

  end

  def create

      render :text => "Saving a picture. URL: #{params[:url]}, title: #{params[:title]}, artist: #{params[:artist]}"

  end
  

end




