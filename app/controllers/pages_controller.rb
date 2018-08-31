class PagesController < ApplicationController
  skip_before_action :authenticate_user!, only: [:home]

  def home
 @array = []
 @designs = Design.all
 @designs.each do |design|
 @array << design.theme.to_s
 @array = @array.uniq
 end
  end

  def checkout
    @basket
  end
end
