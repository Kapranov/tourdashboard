class AgenciesController < ApplicationController
  before_action :set_agency, only: [:show, :edit, :update, :destroy]

  def index
    @agencies = Agency.all
  end

  def show
  end

  def new
    @agency = Agency.new
  end

  def edit
  end

  def create
    @agency = Agency.new(agency_params)

    respond_to do |format|
      if @agency.save
        format.html { redirect_to @agency, notice: 'Agency was successfully created.' }
        format.json { render :show, status: :created, location: @agency }
      else
        format.html { render :new }
        format.json { render json: @agency.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @agency.update(agency_params)
        format.html { redirect_to @agency, notice: 'Agency was successfully updated.' }
        format.json { render :show, status: :ok, location: @agency }
      else
        format.html { render :edit }
        format.json { render json: @agency.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @agency.destroy
    respond_to do |format|
      format.html { redirect_to agencies_url, notice: 'Agency was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_agency
      @agency = Agency.friendly.find(params[:id])
    end

    def agency_params
      params.require(:agency).permit(
        :agency_name,
        :agency_pn,
        :agency_edrpoy,
        :agency_city,
        :agency_street,
        :agency_post_index,
        :agency_house,
        :agency_apart,
        :city_legal,
        :street_legal,
        :post_index_legal,
        :house_legal,
        :apart_legal,
        :agency_phone_work,
        :agency_phone_mobile,
        :agency_email_one,
        :agency_email_two,
        :agency_email_three,
        :agency_web,
        :agency_comment,
        :bank, :mfo,
        :account,
        :contract_number,
        :contract_from
      )
    end
end
