class SongsController < ApplicationController

def index
  @songs = Song.all
end

def show
  @song = Song.find_by(params[:id])
end

def create
  @song = Song.new
  if @song.save
    redirect_to @song
  else
    render :edit
end
end

def update
end

def edit
end

def destroy
end


end
