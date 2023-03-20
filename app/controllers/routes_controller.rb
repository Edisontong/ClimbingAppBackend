class RoutesController < ApplicationController
  def index
    routes = Route.where(area_id: params[:area_id])
    render json: routes
  end
end
