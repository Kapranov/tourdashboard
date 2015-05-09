class OrdersController < ApplicationController
  before_action :find_tourist

  def index
    @orders = @tourist.present? ? @tourist.orders : Order.all
    # @orders = Order.search(params[:search])

    if @orders.class == Array
      @orders = Kaminari.paginate_array(@orders).page(params[:page]).per(6)
    else
      @orders = @orders.page(params[:page]).per(15)
    end

    respond_to do |format|
      format.html
      format.json
    end
  end

  def show
    tourist = Tourist.friendly.find(params[:tourist_id])
    @order = tourist.orders.friendly.find(params[:id])

    respond_to do |format|
      format.html
      format.json  { render json: @order }
    end
  end

  def new
    tourist = Tourist.friendly.find(params[:tourist_id])
    @order = tourist.orders.build

    respond_to do |format|
      format.html
      format.json  { render json: @order }
    end
  end

  def edit
    tourist = Tourist.friendly.find(params[:tourist_id])
    @order = tourist.orders.friendly.find(params[:id])
  end

  def create
    tourist = Tourist.friendly.find(params[:tourist_id])
    @order = tourist.orders.create(order_params)
    @order.tourist = @tourist

    respond_to do |format|
      if @order.save
        format.html { redirect_to [@order.tourist, @order], notice: 'Order was successfully created.' }
        format.json { render action: 'show', status: :created, location: [@order.tourist, @order] }
      else
        format.html { render action: 'new' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    tourist = Tourist.friendly.find(params[:tourist_id])
    @order = tourist.orders.friendly.find(params[:id])

    respond_to do |format|
      if @order.update_attributes(order_params)
        format.html { redirect_to [@order.tourist, @order], notice: 'Order was successfully updated.' }
        format.json { render action: 'show', status: :ok, location: [@order.tourist, @order] }
      else
        format.html { render action: 'edit' }
        format.json { render json: @order.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    tourist = Tourist.friendly.find(params[:tourist_id])
    @order = tourist.orders.friendly.find(params[:id])
    @order.destroy

    respond_to do |format|
      format.html { redirect_to tourist_orders_url, notice: 'Order was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

    def order_params
      params.require(:order).permit(
        :tourist_id,
        :odd,
        :mark,
        :order_day,
        :country,
        :tour_day_begin,
        :tour_day_end,
        :night,
        :aircross_begin,
        :aircross_end,
        :airtable,
        :airclass,
        :airline,
        :hotel_begin,
        :hotel_end,
        :hotel_name,
        :hotel_class,
        :hotel_city,
        :hotel_class_room,
        :hotel_pay,
        :service_begin,
        :service_end,
        :service_name,
        :medical_begin,
        :medical_end,
        :medical_name,
        :visa_begin,
        :visa_end,
        :visa_need,
        :agency_id,
        :payment_tour,
        :payment_currency,
        :sell_tour,
        :sell_currency,
        :operator,
        :operator_currency,
        :in_total,
        :total_currency,
        :paid,
        :paid_currency,
        :debt,
        :debt_currency,
        tourists_attributes: [ :id, :lastname_en, :_destroy ]
      )
    end

    def find_tourist
      if params[:tourist_id]
        @tourist = Tourist.friendly.find(params[:tourist_id])
      end
    end
end
