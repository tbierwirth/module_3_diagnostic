class NRELService

  def nearby_stations(zip)
    get_json("alt-fuel-stations/v1/nearest.json?location=#{zip}&radius=6&fuel_type=ELEC,LPG&access_days_time&station_name&street_address&city&state&zip&distance&limit=11")
  end

  private
  def conn
    Faraday.new(url: 'https://developer.nrel.gov/api/') do |f|
      f.headers['X-Api-Key'] = ENV['NREL_API_KEY']
      f.adapter Faraday.default_adapter
    end
  end

  def get_json(url)
    response = conn.get(url)
    JSON.parse(response.body, symboilize_names: true)
  end

end
