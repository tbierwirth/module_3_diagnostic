require 'rails_helper'

describe Station do
  it "exists" do
    attributes = {
      station_name: "Quick Charge",
      street_address: "335 Electric Ave",
      city: "Denver",
      state: "CO",
      zip: "80203",
      fuel_type_code: "ELEC",
      distance: "0.5",
      access_days_time: "M-F 6am - 10pm"
    }
    station = Station.new(attributes)

    expect(station).to be_a Station
    expect(station.name).to eq("Quick Charge")
    expect(station.address).to eq("335 Electric Ave")
    expect(station.city).to eq("Denver")
    expect(station.state).to eq("CO")
    expect(station.zip).to eq("80203")
    expect(station.fuel_type).to eq("ELEC")
    expect(station.distance).to eq("0.5")
    expect(station.hours).to eq("M-F 6am - 10pm")
  end

end
