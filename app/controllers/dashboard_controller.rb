class DashboardController<ApplicationController
  before_filter :authenticate_user!

  def index
    @transactions = Transaction.all
  end

end
