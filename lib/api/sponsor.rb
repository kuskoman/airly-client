module AirlyClient
    class Sponsor < Entity
        def id
            @raw['id']
        end

        def name
            @raw['name']
        end

        def description
            @raw['description']
        end

        def logo
            @raw['logo']
        end

        def link
            @raw['link']
        end
    end
end