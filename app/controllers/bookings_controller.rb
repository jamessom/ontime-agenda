# frozen_string_literal: true

class BookingsController < ApplicationController
  before_action :set_booking, only: %i[show edit update destroy]

  # GET /bookings
  # GET /bookings.json
  def index
    @bookings = Booking.all
  end

  # GET /bookings/1
  # GET /bookings/1.json
  def show; end

  # GET /bookings/new
  def new
    @booking = Booking.new
  end

  # GET /bookings/1/edit
  def edit; end

  # POST /bookings
  # POST /bookings.json
  def create
    @booking = Booking.new(booking_params)

    unless @booking.save
      respond_to do |format|
        format.any { render :new }
        return
      end
    end

    respond_to do |format|
      format.html { redirect_to @booking, notice: 'Booking was successfully created.' }
      format.json { render :show, status: :created, location: @booking }
    end
  end

  # PATCH/PUT /bookings/1
  # PATCH/PUT /bookings/1.json
  def update
    unless @booking.update(booking_params)
      respond_to do |format|
        format.any { render :edit }
        return
      end
    end
    
    respond_to do |format|
      format.html { redirect_to @booking, notice: 'Booking was successfully updated.' }
      format.json { render :show, status: :ok, location: @booking }
    end
  end

  # DELETE /bookings/1
  # DELETE /bookings/1.json
  def destroy
    @booking.destroy
    respond_to do |format|
      format.html { redirect_to bookings_url, notice: 'Booking was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_booking
    @booking = Booking.find(params[:id])
  end

  # Never trust parameters from the scary internet, only allow the white list through.
  def booking_params
    params.require(:booking).permit(:description, :user_id)
  end
end
