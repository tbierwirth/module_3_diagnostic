class Station
  attr_reader :name,
              :address,
              :city,
              :state,
              :zip,
              :fuel_type,
              :distance,
              :hours
  def initialize(attributes = {})
    @name = attributes["station_name"]
    @address = attributes["street_address"]
    @city = attributes["city"]
    @state = attributes["state"]
    @zip = attributes["zip"]
    @fuel_type = attributes["fuel_type_code"]
    @distance = attributes["distance"].to_s
    @hours = attributes["access_days_time"]
  end

  def full_address
    "#{@address}, #{@city}, #{@state} #{@zip}"
  end

end
