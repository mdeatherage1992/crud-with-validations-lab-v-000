class SongsController < ApplicationController

def index
  @songs = Song.all
end

def show
  @song = Song.find(params[:id])
end

def create
  @song = Song.new
  if @song.save
    redirect_to @song
  else
    render :new
  end
end

def update
  @song = Song.find(params[:id])
  if @song.update(song_params)
    redirect_to @song
  else
    render :edit
  end
end

def edit
end

def destroy
end


end
