class Camera < Product

  # mapping do
  #   indexes :id,           :index    => :not_analyzed
  #   indexes :name,         :analyzer => 'snowball', :boost => 100
  #   indexes :manufacturer, :analyzer => 'snowball', :boost => 50
  #   indexes :description,  :analyzer => 'snowball'
  # end

  index_name 'products'

  key :resolution,  String
  key :zoom,        String
  key :weight,      Integer

  def self.facets
    standard_facets.merge({
      :price      => Proc.new { range :price, [
                                {to:   50},
                                {from: 50,  to: 100},
                                {from: 100, to: 250},
                                {from: 250}
                              ]},

      :resolution => Proc.new { terms :resolution },

      :zoom       => Proc.new { terms :zoom },

      :weight     => Proc.new { range :weight, [
                                {to:   100},
                                {from: 100, to: 150},
                                {from: 150, to: 200},
                                {from: 200, to: 300},
                                {from: 300}
                              ]}
    })
  end

end
