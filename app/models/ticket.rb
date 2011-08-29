class Ticket < ActiveRecord::Base
  belongs_to :client

  validates_presence_of :title
end
