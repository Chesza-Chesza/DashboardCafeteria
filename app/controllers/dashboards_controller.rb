class DashboardsController < ApplicationController
  def index
    @coffees_in_months = Coffee.group_by_month(:created_at).count
  end
end
