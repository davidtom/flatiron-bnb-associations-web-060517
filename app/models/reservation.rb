class Reservation < ActiveRecord::Base

  has_many :reviews
  belongs_to :listing
  has_one :neighborhood, through: :listing
  belongs_to :guest, class_name: "User"
  #has_one :user, foreign_key: "guest_id"
  has_one :host, through: :listing

end
