class AscentsController < ApplicationController
  def index
    ascents = current_user.ascents
    render json: ascents
  end

  def create
    ascent = Ascent.new(
      user_id: current_user.id,
      route_id: params[:route_id],
      discipline: params[:discipline],
      grade: params[:grade],
      date: params[:date],
      attempts: params[:attempts],
      beta: params[:beta],
    )
    if ascent.save
      render json: ascent
    else
      render json: { errors: post.errors.full_messages }, status: :bad_request
    end
  end
end
