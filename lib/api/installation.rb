module AirlyClient
    class Installation < Entity
        def id
            @raw['id']
        end

        def location
            @raw['location']
        end

        def elevation
            @raw['elevation']
        end

        def address
            @raw['address']
        end
        
        def airly
            @raw['airly']
        end
    end
end