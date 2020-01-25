class RsvpsController < ApplicationController

  def show
  end

  def edit
  end

  def update
    @person_details = params
    render action: :show
  end

end