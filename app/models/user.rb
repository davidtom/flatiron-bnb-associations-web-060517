class User < ActiveRecord::Base

  has_many :reviews, foreign_key: "guest_id"
  has_many :listings, foreign_key: "host_id" #has many listings where foreign_key of that reservation is host_id
  has_many :reservations, through: :listings
  has_many :trips, :class_name => 'Reservation', :foreign_key => 'guest_id' #joe comment

end
