class CouponsController < ApplicationController
    
    def create
        @coupon = Coupon.create(params.require(:coupon).permit(:coupon_code, :store))
        redirect_to coupon_path(@coupon)
    end
    def index
        @coupons = Coupon.all
    end 
    def show
        @coupon = Coupon.find(params[:id])
    end 
    def new
        @coupon = Coupon.new
    end
    
end 