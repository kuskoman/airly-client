module AirlyClient
    class SingleMeasurement < Entity
        def initialize(raw)
            super
            parse_values
        end

        def from_date_time
            @raw['fromDateTime']
        end

        def till_date_time
            @raw['tillDatetime']
        end

        def pm1
            @values['PM1']
        end

        def pm10
            @values['PM10']
        end

        def pm25
            @values['PM25']
        end

        def pressure
            @values['PRESSURE']
        end

        def humidity
            @values['HUMIDITY']
        end

        def temperature
            @values['TEMPERATURE']
        end

        private

            def parse_values
                @values = {}
                @raw['values'].each do |value|
                    name = value['name']
                    @values[name] = value['value']
                end
            end
    end
end