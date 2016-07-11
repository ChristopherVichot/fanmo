class FoursquareController < ApplicationController

  def search
  end

  def index
    p params
    url = "https://api.foursquare.com/v2/venues/search?client_id=TZVJDKVW5PPACBJPIQHZTPBDBRNOTE5D0ZHQMXQ4EYS42YOR&client_secret=A2LGMVVHUUJZRKRWJL5EZZIYJOS054FP1HQZDI5ZCUNULYUT&v=20130815&ll=40.7,-74&query=#{params[:search]}&near=Miami"
    @response = HTTParty.get(url)
    @venues = @response["response"]["venues"]
  end
end
