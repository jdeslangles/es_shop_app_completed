class Laptop < Product

  index_name 'products'

  key :ram,       String
  key :os,        String
  key :cpu,       String
  key :hdd,       String
  key :hdd_type,  String

end
