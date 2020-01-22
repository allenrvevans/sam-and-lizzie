class RsvpsController < ApplicationController

  def search 
    @code = params[:code]
    render action: 'show'
  end

  def show
  end
end