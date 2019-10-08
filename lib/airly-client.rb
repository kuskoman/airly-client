require 'httparty'

class AirlyClient
    def initialize(api_key, base_url = "https://airapi.airly.eu/v2/")
        @api_key = api_key
        @base_url = base_url
    end

    private

        def headers
            {
                'Accept' => 'application/json',
                'Accept-Language' => 'en',
                'apikey' => @api_key
            }
        end

        def fetch(resource)
            HTTParty.get(
                base_url + resource,
                headers: headers 
            )
        end
end