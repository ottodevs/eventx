class Subscription < ActiveRecord::Base
  belongs_to :event
  belongs_to :manager_profile
end
