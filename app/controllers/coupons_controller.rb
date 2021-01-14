class CouponsController < ApplicationController
  def index
    @coupons = Coupon.all
  end

  def show
    @coupon = Coupon.find(params[:id])
  end

  def new
    @coupon = Coupon.new
  end

  def create
    new_coupon = Coupon.create(coupon_params)
    redirect_to coupon_path(new_coupon)
  end

  private

  def coupon_params
    params.require(:coupon).permit(:coupon_code, :store)
  end
end
