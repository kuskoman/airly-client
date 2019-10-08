require_relative 'api/client'
require_relative 'api/entity'
require_relative 'api/installation'
require_relative 'api/measurements'

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

        def nearest_installation(latitude, longtitude, max_distance_km: 5, max_results: 1)
            res = api.make_request("installations/nearest",
                {
                    "lat" => latitude,
                    "lng" => longtitude,
                    "maxDistanceKM" => max_distance_km,
                    "maxResults" => max_results
                })

            installations = []

            res.each do |raw|
                installations << Installation.new(raw)
            end

            installations
        end

        def installation(id)
            res = api.make_request("installations/#{id}")

            Installation.new(res)
        end

        def measurements(installation_id, index_type = 'AIRLY_CAQI')
            res = api.make_request("measurements/installation",
                {
                    "installationId" => installation_id,
                    "indexType" => index_type
                })

            Measurements.new(res)
        end
    end
end