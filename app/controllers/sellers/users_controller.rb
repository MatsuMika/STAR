class Sellers::UsersController < ApplicationController
  def top
    now = Time.current
    @orders = Order.where(created_at: now.all_day)
  end

  def about
  end

  def index
  end

  def show
  end

  def edit
  end

  def update
  end
end
