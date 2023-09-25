class PagesController < ApplicationController
  def main
    @paintings = Painting.order(created_at: :desc).limit(5)
  end

  def about
  end

  def contact
  end
end
