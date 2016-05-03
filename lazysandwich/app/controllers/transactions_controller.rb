class TransactionsController < ApplicationController
  before_action :authenticate_user!

  def index
    #transactions made by the current user
    @customer_transactions = Transaction.where(:user => current_user)
    #logical AND to get the postings of the current user in the transactions table
    # @producer_transactions = []
    @producer_transactions = Transaction.where.not(:user => current_user)
  end

  def show
  end

  def create
    @transaction = Transaction.new
    @posting = Posting.find(params[:posting_id])
    @transaction.name = @posting.name
    @transaction.price = @posting.price
    @transaction.producer_id = @posting.user_id
    @transaction.street = @posting.street
    @transaction.city = @posting.city
    @transaction.state = @posting.state
    @transaction.user = current_user
    @transaction.save
    redirect_to root_path
  end

  def update
    respond_to do |format|
      if @transaction.update(transaction_params)
        format.html { redirect_to @transaction, notice: 'Transaction was successfully updated.' }
        format.json { render :show, status: :ok, location: @transaction }
      else
        format.html { render :edit }
        format.json { render json: @transaction.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    set_transaction
    @transaction.destroy
    respond_to do |format|
      format.html { redirect_to transactions_url, notice: 'Transaction was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_transaction
      @transaction = Transaction.find(params[:id])
    end
      
    def transaction_params
      params.require(:transaction).permit(:posting_id)
    end
end
