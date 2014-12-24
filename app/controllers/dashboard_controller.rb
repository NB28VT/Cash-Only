class DashboardController<ApplicationController
  before_filter :authenticate_user!

  def index
    binding.pry
    @transactions = Transaction.all
    @friend_group = current_user.friend
  end

end
