class MembershipsController<ApplicationController
  def create
    @membership = Membership.create(membership_params)
    @membership.save
    redirect_to dashboard_index_path
  end

  def new
    @membership = Membership.new
  end



  private
  def membership_params
    params.require(:membership).permit(:user_id, :friend_id)
  end
end
