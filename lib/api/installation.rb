require_relative 'location'
require_relative 'address'
require_relative 'sponsor'

module AirlyClient
    class Installation < Entity
        def id
            @raw['id']
        end

        def location
            @location ||= Location.new(@raw['location'])
        end

        def elevation
            @raw['elevation']
        end

        def address
            @address ||= Address.new(@raw['address'])
        end
        
        def airly
            @raw['airly']
        end

        def sponsor
            @sponsor ||= Sponsor.new(@raw['sponsor'])
        end
    end
end