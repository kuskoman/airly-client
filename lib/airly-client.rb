require 'httparty'
require 'uri'

class AirlyClient
    def initialize(api_key, base_url = "https://airapi.airly.eu/v2/")
        @api_key = api_key
        @base_url = base_url
    end

    def nearest(latitude, longtitude, maxDistanceKM: 5, maxResults: 1)
        res = fetch("installations/nearest",
            {
                "lat" => latitude,
                "lng" => longtitude,
                "maxDistanceKM" => maxDistanceKM,
                "maxResults" => maxResults
            })
    end

    private

        def headers
            {
                'Accept' => 'application/json',
                'Accept-Language' => 'en',
                'apikey' => @api_key
            }
        end

        def fetch(resource, params = {})
            HTTParty.get(
                @base_url + resource + stringify_params(params),
                headers: headers
            )
        end

        def stringify_params(params)
            if params.nil?
                ""
            else
                "?" + URI.encode_www_form(params)
            end
        end
end