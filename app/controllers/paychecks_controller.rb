class PaychecksController < ApplicationController
  def index
    @paychecks = Paycheck.all
  end

  def show
    @paycheck = Paycheck.find(params[:id])
  end

  def new
    @paycheck = Paycheck.new
  end

  def create
    @paycheck = Paycheck.new(paycheck_params)

    if @paycheck.save
      redirect_to @paycheck
    else
      render action: :new
    end
  end

  private

    def paycheck_params
      params.require(:paycheck).permit(:total_amount, :received_at)
    end
end
