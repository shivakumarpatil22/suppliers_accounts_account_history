class AccountsController < ApplicationController
  before_action :set_account, only: [:show, :update, :edit, :destroy]
  def new
    @account = Account.new
  end

  def edit
  end

  def show
  end

  def index
    @accounts = Account.all.paginate(page: params[:page],per_page: 10)
  end

  def destroy
    @account.destroy
    redirect_to accounts_path
  end

  def create
    @account = Account.new(account_params)
    respond_to do |format|
      if @account.save
        format.html { redirect_to @account, notice: 'account was successfully created.' }
        format.json { render :show, status: :created, location: @account }
      else
        format.html { render :new }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end


  def update
    respond_to do |format|
      if @account.update(account_params)
        format.html { redirect_to @account, notice: 'account was successfully updated.' }
        format.json { render :show, status: :ok, location: @account }
      else
        format.html { render :edit }
        format.json { render json: @account.errors, status: :unprocessable_entity }
      end
    end
  end

  private

  def set_account
    @account = Account.find(params[:id])
  end

  def account_params
    params.require(:account).permit(:supplier_id, :account_number)
  end
end
