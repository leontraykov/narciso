class PagesController < ApplicationController
  def main
    @paintings = Painting.order(created_at: :desc).limit(5)
    @user = current_user
  end

  def about
  end

  def contact
    @user = current_user
  end
end
