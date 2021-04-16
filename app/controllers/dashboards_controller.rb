class DashboardsController < ApplicationController
  def index
    @coffees = Coffee.all
    @sales_12_months = Coffee.group_by_month(:created_at, last:12).sum(:price)
    @quantity_12_months = Coffee.group_by_month(:created_at, last:12).sum(:amount)
    @average_12_months = Coffee.group_by_month(:created_at, last:12).average(:amount)
    
    @pie_chart_12_months = Coffee.where(created_at: 5.months.ago..Date.today).group(:origin).count
    @pie_chart_6_months = Coffee.where(created_at: 5.months.ago..Date.today).group(:origin).count
    @pie_chart_3_months = Coffee.where(created_at: 2.months.ago..Date.today).group(:origin).count
    @pie_chart_last_month = Coffee.where(created_at: 30.days.ago..Date.today).group(:origin).count
    
    @pie_blend_name_12_months = Coffee.where(created_at: 11.months.ago..Date.today).group(:blend).count
    @pie_blend_name_6_months = Coffee.where(created_at: 5.months.ago..Date.today).group(:blend).count  
    @pie_blend_name_3_months = Coffee.where(created_at: 2.months.ago..Date.today).group(:blend).count
    @pie_blend_name_last_month = Coffee.where(created_at: 30.days.ago..Date.today).group(:blend).count
  end  
end