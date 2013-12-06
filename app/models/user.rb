class User
  include MongoMapper::Document

  key :name,                    String
  key :email,                   String
  key :encrypted_password,      String

  ## Recoverable
  key :reset_password_token,    String
  key :reset_password_sent_at,  DateTime

  ## Rememberable
  key :remember_created_at,     DateTime

  ## Trackable
  key :sign_in_count,           Integer, :default => 0
  key :current_sign_in_at,      DateTime
  key :last_sign_in_at,         DateTime
  key :current_sign_in_ip,      String
  key :last_sign_in_ip,         String


  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable

  # Setup accessible (or protected) attributes for your model
  attr_accessible :name, :email, :password, :password_confirmation, :remember_me

  timestamps!

end
