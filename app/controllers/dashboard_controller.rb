class DashboardController < ApplicationController
  def index
    @archivements = Archivement.includes(:user).references(:user).where("users.name" => "asari")
  end
end
