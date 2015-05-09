class TouristsController < ApplicationController
  before_action :set_tourist, only: [:show, :edit, :update, :destroy]
  before_filter :load_tourist

  def index
    @tourists = Tourist.all
    @tourists = Tourist.search(params[:search])
    if @tourists.class == Array
      @tourists = Kaminari.paginate_array(@tourists).page(params[:page]).per(3)
    else
      @tourists = @tourists.page(params[:page]).per(15)
    end
  end

  def show
  end

  def new
    @tourist = Tourist.new
  end

  def edit
    @tourist = Tourist.friendly.find(params[:id])
  end

  def create
    @tourist = Tourist.new(tourist_params)

    respond_to do |format|
      if @tourist.save
        format.html { redirect_to @tourist, notice: 'Tourist was successfully created.' }
        format.json { render action: 'show', status: :created, location: @tourist }
      else
        format.html { render action: 'new' }
        format.json { render json: @tourist.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    @tourist = Tourist.friendly.find(params[:id])

    respond_to do |format|
      if @tourist.update_attributes(tourist_params)
        format.html { redirect_to @tourist, notice: 'Tourist was successfully updated.' }
        format.json { render :show, status: :ok, location: @tourist }
      else
        format.html { render action: 'edit' }
        format.json { render json: @tourist.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @tourist = Tourist.friendly.find(params[:id])
    @tourist.destroy

    respond_to do |format|
      format.html { redirect_to tourists_url, notice: 'Tourist was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def load_tourist
      @tourist = Tourist.friendly.find(params[:tourist_id]) if params[:tourist_id].present?
    end

    def set_tourist
      @tourist = Tourist.friendly.find(params[:id])
    end

    def tourist_params
      params.require(:tourist).permit(:client,
                                      :lastname_ua,
                                      :firstname_ua,
                                      :middlename_ua,
                                      :lastname_en,
                                      :firstname_en,
                                      :day_born,
                                      :gender,
                                      :add_lastname_en_one,
                                      :add_firstname_en_one,
                                      :add_passport_one,
                                      :add_day_born_one,
                                      :add_phone_one,
                                      :add_passport_day_issue_one,
                                      :add_passport_validity_one,
                                      :add_lastname_en_two,
                                      :add_firstname_en_two,
                                      :add_passport_two,
                                      :add_day_born_two,
                                      :add_phone_two,
                                      :add_passport_day_issue_two,
                                      :add_passport_validity_two,
                                      :add_lastname_en_three,
                                      :add_firstname_en_three,
                                      :add_passport_three,
                                      :add_day_born_three,
                                      :add_phone_three,
                                      :add_passport_day_issue_three,
                                      :add_passport_validity_three,
                                      :add_lastname_en_four,
                                      :add_firstname_en_four,
                                      :add_passport_four,
                                      :add_day_born_four,
                                      :add_phone_four,
                                      :add_passport_day_issue_four,
                                      :add_passport_validity_four,
                                      :add_lastname_en_five,
                                      :add_firstname_en_five,
                                      :add_passport_five,
                                      :add_day_born_five,
                                      :add_phone_five,
                                      :add_passport_day_issue_five,
                                      :add_passport_validity_five,
                                      :country,
                                      :foreign_suite,
                                      :foreign_number,
                                      :foreign_day_issue,
                                      :issued_by,
                                      :validity,
                                      :city,
                                      :street,
                                      :post_index,
                                      :house,
                                      :apartment,
                                      :phone_mobile,
                                      :phone_home,
                                      :phone_work,
                                      :email,
                                      :skype,
                                      :comment,
                                      :client_status,
                                      :learned_from,
                                      :msg_sms,
                                      :msg_mail,
                                      orders_attributes: [:id, :tourist_id, :_destroy ]
                                     )
    end
end
