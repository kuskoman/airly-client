module AirlyClient
    class ApiClient
        attr_writer :api_key
        def initialize(api_key = nil, base_url = "https://airapi.airly.eu/v2/")
            @api_key = api_key
            @base_url = base_url
        end

        def fetch(resource, params = {})
            HTTParty.get(
                @base_url + resource + stringify_params(params),
                headers: headers
            )
        end

        private

            def headers
                {
                    'Accept' => 'application/json',
                    'Accept-Language' => 'en',
                    'apikey' => @api_key
                }
            end

            def stringify_params(params)
                if params.nil?
                    ""
                else
                    "?" + URI.encode_www_form(params)
                end
            end
    end
end