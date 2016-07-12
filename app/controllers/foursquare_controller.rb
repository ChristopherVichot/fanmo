class FoursquareController < ApplicationController

  def search
  end

  def index
    p params
    url = "https://api.foursquare.com/v2/venues/explore?ll=25.8034485,-80.2029306&radius=3200&client_id=R2H3IGBZMHHGUELI5NUI3OJBFNXNS5KDB2PV5NMEU0XGHTRT&client_secret=2WXFH2VPVT4CGDDHIRDAYQLJFQ5AJ1LDCGOJE5TO211DIFMJ&v=20160712"
    @response = HTTParty.get(url)
    @venues = @response["response"]["venues"]
    @results = @response['response']['groups'][0]['items']
  end
end
