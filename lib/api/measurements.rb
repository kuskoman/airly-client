require_relative 'single_measurement'

module AirlyClient
    class Measurements < Entity
        def current
            @current ||= SingleMeasurement.new(@raw['current'])
        end

        def history
            @history ||= parse_array_of_measurements(@raw['history'])
        end

        def forecast
            @forecast ||= parse_array_of_measurements(@raw['forecast'])
        end

        private 
        
            def parse_array_of_measurements(array)
                parsed = []

                array.each do |measurement|
                    parsed << SingleMeasurement.new(measurement)
                end

                parsed
            end
    end
end