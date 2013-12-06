# Doing this at startup is STUPID! This should be a rake task

Tire.index "products" do
  delete

  settings = {
    :index => {
      :analysis => {
        :analyzer => {
          :default_search => {
            :type => 'snowball'
          }
        }
      }
    }
  }

  common_mapping = {
    :properties => {
      :id             => {:type => 'string', :index    => :not_analyzed},
      :name           => {:type => 'string', :analyzer => 'snowball', :boost => 100},
      :manufacturer   => {:type => 'string', :analyzer => 'snowball', :boost => 50},
      :description    => {:type => 'string', :analyzer => 'snowball'}
    }
  }

  product_mappings = {}
  [:product, :camera, :television].each do |product_type|
    product_mappings[product_type] = common_mapping
  end

  create :mappings => product_mappings#, :settings => settings

end

Product.import
Store.import