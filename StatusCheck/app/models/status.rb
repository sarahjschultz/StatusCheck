class Status < ActiveRecord::Base
  after_initialize :default_state

  enum state: { up: 0, down: 1 }

  validates_presence_of :state

  def default_state
    self.state ||= Status.last.state
  end

end

