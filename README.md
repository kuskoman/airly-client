# AirlyClient

AirlyClient is a ruby client for [airly.eu](https://airly.eu/) API.

## Usage

```
AirlyClient.set_api_key(key) # Setup API key
AirlyClient.nearest_installation(latitude, longtitude, max_distance_km: distance, max_results: results) # Find nearest installations
AirlyClient.installation(id) # Get installation data by id
AirlyClient.measurements(installation_id) # Get measurements for station
```