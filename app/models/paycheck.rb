class Paycheck < ActiveRecord::Base
  has_many :disbursments
  has_many :accounts, through: :disbursments

  after_save :create_disbursements

  validates :total_amount, presence: true

  def create_disbursements
    #TODO: Create our disbursements for this paycheck based upon accounts

    # Iterate through each account
    # Create disbursement with amount = paycheck.amount * account.percentage
    Account.all.each do |account|
      disbursments.create(account_id: account.id, amount: total_amount * account.percentage / 100.0)
    end
  end
end
