class RegistrationsController < Devise::RegistrationsController
  def create
    @user = User.new(user_params)
    if @user.save
      @user.workspaces.create(name:"#{@user.email}'s workspace", plan_id:1, manager_id: @user.id)
      flash[:notice] = "Email sent to verificate your account"
      redirect_to root_path
    else
      flash[:danger] = "Something went wrong"
    end
  end

  private 
  def user_params
    params.require(:user).permit(:email, :password, :role)
  end
end