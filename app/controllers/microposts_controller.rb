class MicropostsController < ApplicationController
  skip_before_filter :require_login, only: [:index, :new, :create]
  before_action :set_micropost, only: [:show, :edit, :update, :destroy]

  def index
    @microposts = Micropost.all

    respond_to do |format|
      format.html
      format.json { render json: @microposts }
    end
  end

  def show
  end

  def new
    @micropost = Micropost.new
  end

  def edit
  end

  def create
    @micropost = Micropost.new(micropost_params)

    respond_to do |format|
      if @micropost.save
        format.html { redirect_to @micropost, notice: 'Micropost was successfully created.' }
        format.json { render :show, status: :created, location: @micropost }
      else
        format.html { render :new }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @micropost.update(micropost_params)
        format.html { redirect_to @micropost, notice: 'Micropost was successfully updated.' }
        format.json { render :show, status: :ok, location: @micropost }
      else
        format.html { render :edit }
        format.json { render json: @micropost.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @micropost.destroy
    respond_to do |format|
      format.html { redirect_to microposts_url, notice: 'Micropost was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_micropost
      @micropost = Micropost.friendly.find(params[:id])
    end

    def micropost_params
      params.require(:micropost).permit(:author, :email, :review)
    end
end
