class Television < Product

  # mapping do
  #   indexes :id,           :index    => :not_analyzed
  #   indexes :name,         :analyzer => 'snowball', :boost => 100
  #   indexes :manufacturer, :analyzer => 'snowball', :boost => 50
  #   indexes :description,  :analyzer => 'snowball'
  # end

  index_name 'products'

  key :tech,    String
  key :size,    String
  key :format,  String
  key :feature, Array

  def self.facets
    standard_facets.merge({
      :price      => Proc.new { range :price, [
                                {to:   50_00},
                                {from: 50_00,  to: 100_00},
                                {from: 100_00, to: 200_00},
                                {from: 200_00}
                              ]},

      :size       => Proc.new { terms :size },

      :tech       => Proc.new { terms :tech },

      :format     => Proc.new { terms :zoom },

      :feature    => Proc.new { terms :feature }

    })
  end

end
