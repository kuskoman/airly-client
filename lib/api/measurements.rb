module AirlyClient
    class Measurements < Entity
        def current
            SingleMeasurement.new(@raw['current'])
        end
        
        class SingleMeasurement < Entity
            def from_date_time
                @raw['fromDateTime']
            end

            def till_date_time
                @raw['tillDatetime']
            end

            def pm1
                @raw['values'].select {|v| v["name"] == "PM1" }.first
            end

            def pm10
                @raw['values'].select {|v| v["name"] == "PM10" }.first
            end

            def pm25
                @raw['values'].select {|v| v["name"] == "PM25" }.first
            end

            def pressure
                @raw['values'].select {|v| v["name"] == "Pressure" }.first
            end
        end
    end
end