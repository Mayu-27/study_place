class SpotsController < ApplicationController
  
  # ピン留めのテストように１件のみ取得
  def index
    @spot = Spot.find(4)
  end
end
