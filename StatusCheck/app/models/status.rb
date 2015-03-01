class Status < ActiveRecord::Base

  enum state: { up:0, down:1 }

  validates_presence_of :state
  validates_presence_of :message

end
