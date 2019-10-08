module AirlyClient
    class Location < Entity
        def latitude
            @raw['latitude']
        end

        def longtitude
            @raw['longtitude']
        end
    end
end