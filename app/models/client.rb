class Client < ActiveRecord::Base
  has_many :tickets

  validates_presence_of :name, :email
  validates_uniqueness_of :email

  accepts_nested_attributes_for :tickets, :allow_destroy => :true,
                                :reject_if => proc { |ticket| ticket['title'].blank? }
end
