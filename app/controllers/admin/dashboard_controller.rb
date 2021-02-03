class Admin::DashboardController < ApplicationController
  # puts ENV['ADMIN_USERNAME']
  # puts ENV['ADMIN_PASSWORD']
  http_basic_authenticate_with name: ENV['ADMIN_USERNAME'].to_s, password: ENV['ADMIN_PASSWORD'].to_s

  def show
  end
end