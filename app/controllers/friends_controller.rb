class FriendsController<ApplicationController
  before_filter :authenticate_user!
  def index
    @groups = Friend.all
  end

  def new
    @friend_group = Friend.new
  end

  def create
    @friend_group = Friend.create(friend_group_params)
    if @friend_group.save
      redirect_to @friend_group
    else
      render action: 'new'
    end
  end

  def show
    @friend_group = Friend.find(params[:id])
    @membership = Membership.new
  end



  private
  def friend_group_params
    params.require(:friend).permit(:group_name)
  end
end
