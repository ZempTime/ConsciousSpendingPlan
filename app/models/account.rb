class Account < ActiveRecord::Base
  has_many :disbursments
  has_many :paychecks, through: :disbursments

  def current_balance
    disbursments.sum(:amount)
  end
end
