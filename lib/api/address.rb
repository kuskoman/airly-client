module AirlyClient
    class Address < Entity
        def country
            @raw['country']
        end

        def city
            @raw['city']
        end

        def street
            @raw['street']
        end

        def number
            @raw['number']
        end

        def display_address1
            @raw['displayAddress1']
        end

        def display_address2
            @raw['displayAddress2']
        end
    end
end