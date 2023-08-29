class StoresController < ApplicationController
  before_action :set_store, only: %i[ show edit update destroy ]

  def index
    @stores = Store.all
  end

  def show
  end

  def new
    @store = Store.new
  end

  def edit
  end

  def create
    @store = Store.new(store_params)

    respond_to do |format|
      if @store.save
        format.html { redirect_to store_url(@store), notice: "Store was successfully created." }
      else
        format.html { render :new, status: :unprocessable_entity }
      end
    end
  end

  def update
    respond_to do |format|
      if @store.update(store_params)
        format.html { redirect_to store_url(@store), notice: "Store was successfully updated." }
      else
        format.html { render :edit, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @store.destroy

    respond_to do |format|
      format.html { redirect_to stores_url, notice: "Store was successfully destroyed." }
    end
  end

  private
  
  def set_store
    @store = Store.find(params[:id])
  end

  def store_params
    params.require(:store).permit(:title)
  end
end
