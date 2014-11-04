require 'open-uri'
require 'json'

class ForecastsController < ApplicationController
  def location

# Inside the location action, do all the work you need to

# retrieve the user input (whatever they typed after the slash)

    raw_address = params[:address]
    clean_address = URI.encode(raw_address)
    @address = clean_address

# exchange it for a lat/lng pair from the Geocoding API

    url_of_data_we_want = "http://maps.googleapis.com/maps/api/geocode/json?address=#{clean_address}"

raw_data = open(url_of_data_we_want).read
parsed_data =JSON.parse(raw_data)
@test = parsed_data

# first = parsed_data["results"][0]
# geometry = first['geometry']
# coords = geometry['location']

# the_latitude = coords['lat']
# the_longitude = coords['lng']

# exchange the lat/lng pair for weather info from the Forecast API



    # @current = ["current"]
    # @hourly_outlook = ["hourly_outlook"]
    # @daily_outlook = ["daily_outlook"]


# place any values that you want to show the user in instance variables
# write some HTML around the instance variables in the view template

  render 'location'

  end

end
