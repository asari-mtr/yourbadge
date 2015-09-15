class DashboardsController < ApplicationController
  before_action only: [:index]
  def index
    @achievements = Achievement.includes(:user).references(:user).where("users.name" => "asari")
  end
end
