class SearchController < ApplicationController

  def index
    render locals: {
      facade: StationSearchResults.new(params[:q])
    }
  end

end
