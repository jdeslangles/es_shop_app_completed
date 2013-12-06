class Store

  include Tire::Model::Search
  include Tire::Model::Callbacks
  include MongoMapper::Document
  include Geocoder::Model::MongoMapper

  key :address, String
  key :lon_lat,  Array

  geocoded_by       :address, :coordinates => :lon_lat
  after_validation  :geocode  # auto-fetch coordinates

  mapping do
    indexes :address, type: 'string'
    indexes :lon_lat, type: 'geo_point'
  end

  timestamps!

  def self.s(params, options={})

    # set the query
    q = params[:q] || "London"
    center_lon_lat = Geocoder.search(q).first.coordinates.reverse rescue [0, 0]

    # perform search
    tire.search load: true do |s|
      s.query { all }
      s.sort do
        by :_geo_distance, {
          lon_lat: center_lon_lat ,
          order: "asc",
          unit: 'mi'
        }
      end
    end

  end

end
