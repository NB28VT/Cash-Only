class TransactionsController<ApplicationController
  def index
  end

  def new
    @users = User.all
    @transaction = Transaction.new
  end

  def create
    @transaction = Transaction.create(transaction_params)
    @transaction.save
    redirect_to dashboard_index_path
  end

  def destroy
    Transaction.find(params[:id]).destroy
    redirect_to dashboard_index_path
  end

  private

  def transaction_params
    params.require(:transaction).permit(:payer_id, :payee_id, :amount)
  end

end
