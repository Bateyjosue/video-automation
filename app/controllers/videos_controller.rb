class VideosController < ApplicationController
  def index
    @videos = Video.all
  end

  def show
    @video = Video.find(params[:id])
  end

  def edit
    @video = Video.find(params[:id])
    @description = DescriptionTemplate.all
  end

  def update
    @video = Video.find(params[:id])
    @video.update(video_params)
    redirect_to videos_path(@video.id)
  end 
  private
  def video_params
    params.require(:video).permit(
      :youtube_id, 
      :title, 
      :tags, 
      :chapter_markers, 
      :description_template, 
      :presenters
    )
  end
end
