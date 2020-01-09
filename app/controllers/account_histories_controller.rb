class AccountHistoriesController < ApplicationController
  before_action :set_account_histories, only: [:show, :update, :edit, :destroy]
  def new
    @account_histories = AccountHistory.new
  end

  def edit
  end

  def show
  end

  def index
    @account_histories = AccountHistory.all.paginate(page: params[:page],per_page: 10)
  end

  def destroy
    @account_histories.destroy
    redirect_to account_histories_path
  end

  def create
    @account_histories = AccountHistory.new(account_histories_params)
    respond_to do |format|
      if @account_histories.save
        format.html { redirect_to @account_histories, notice: 'account_history was successfully created.' }
        format.json { render :show, status: :created, location: @account_histories }
      else
        format.html { render :new }
        format.json { render json: @account_histories.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @account_histories.update(account_histories_params)
        format.html { redirect_to @account_histories, notice: 'account_history was successfully updated.' }
        format.json { render :show, status: :ok, location: @account_histories }
      else
        format.html { render :edit }
        format.json { render json: @account_histories.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_account_histories
    @account_histories = AccountHistory.find(params[:id])
  end

  def account_histories_params
    params.require(:account_history).permit(:account_id, :credit_rating)
  end
end
