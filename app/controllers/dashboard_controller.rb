class DashboardController < ApplicationController
  def index
    @achievements = Achievement.includes(:user).references(:user).where("users.name" => "asari")
  end
end
