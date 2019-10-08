require_relative 'api/client'
require_relative 'api/entity'
require_relative 'api/installation'

require 'httparty'
require 'uri'

module AirlyClient
    class << self
        def api
            @client ||= ApiClient.new
        end

        def set_api_key(api_key)
            api.api_key = api_key
        end

        def nearest(latitude, longtitude, maxDistanceKM: 5, maxResults: 1)
            res = api.fetch("installations/nearest",
                {
                    "lat" => latitude,
                    "lng" => longtitude,
                    "maxDistanceKM" => maxDistanceKM,
                    "maxResults" => maxResults
                })

            p Installation.new(res)
        end
    end
end