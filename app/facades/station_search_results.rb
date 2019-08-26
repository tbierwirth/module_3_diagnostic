class StationSearchResults

  def initialize(zip)
    @zip = zip
  end

  def stations
    service = NRELService.new
    service.nearby_stations(@zip).map do |station_info|
      Station.new(station_info)
    end
  end

end
