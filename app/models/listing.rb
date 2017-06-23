class Listing < ActiveRecord::Base

  belongs_to :host, class_name: "User"
  belongs_to :neighborhood
  has_many :reservations
  has_many :reviews, through: :reservations
  has_one :city, through: :neighborhoods
  #has_many :guests, class_name: "User", foreign_key: "guest_id"
  has_many :guests, through: :reservations
  #belongs_to :guest, class_name: "User"

end
