class Disbursment < ActiveRecord::Base
  belongs_to :account
  belongs_to :paycheck
end
