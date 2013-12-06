class Review
  include MongoMapper::EmbeddedDocument

  key :title,   String
  key :content, String
  key :rating,  Integer
  timestamps!
end
