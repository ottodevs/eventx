class UserTicket < ActiveRecord::Base
  # before_create :add_ticket_number
  after_initialize :add_ticket_number

  belongs_to :user
  belongs_to :ticket_type
  belongs_to :booking, counter_cache: true

  private

  def add_ticket_number
    ticket_number ||= SecureRandom.hex
    ticket_number
  end
end