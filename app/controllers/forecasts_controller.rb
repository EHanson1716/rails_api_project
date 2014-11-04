require 'open-uri'
require 'json'

class ForecastsController < ApplicationController
  def location
    raw_address = params[:address]
    clean_address = URI.encode(raw_address)
    @address = clean_address
    # @lat = ["lat"]
    # @long = ["long"]
    # @current = ["current"]
    # @hourly_outlook = ["hourly_outlook"]
    # @daily_outlook = ["daily_outlook"]


# Inside the location action, do all the work you need to

# retrieve the user input (whatever they typed after the slash)
# exchange it for a lat/lng pair from the Geocoding API
# exchange the lat/lng pair for weather info from the Forecast API
# place any values that you want to show the user in instance variables
# write some HTML around the instance variables in the view template

  render 'location'

  end

end
