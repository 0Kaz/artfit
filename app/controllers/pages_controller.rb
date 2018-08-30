class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
    @designs = Design.first(3)
  end
end
