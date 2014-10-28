class UsersController < ApplicationController


  def show
    @user = User.find(params[:id])
    @rant = Rant.new
    @follow = Follow.all
    @rants = Rant.order('favorites_count ASC')
    @comment = Comment.new
  end

  def new
    @user = User.new
    render :layout => "root"
  end

  def create
    @user = User.new(accepted_params)
    respond_to do |format|
      if @user.save
        UserMailer.registration_confirmation(@user, login_url+"/#{@user.sign_in_token}").deliver
        flash[:success] = "Please Check Your Email to Verify your Registration!"
        redirect_to (verifyemail_path)
        set_cookie
        flash[:notice] = "Thank you for registering!"
        redirect_to root_path
      else
        render :new, :layout => "root"
      end
    end
  end

  def edit
    @user = current_user
    render :layout => "edit"
  end

  def update
    @user = current_user
    @user.update_attributes(accepted_params)
    if @user.save
      redirect_to dashboard_path(@user)
    else
      flash[:notice] = "Information not saved"
    end
  end

  def destroy
    @user = User.find(params[:id])
    @user.destroy
  end

  def set_complete
    @user = User.find(params[:user])
    @user.update_attributes(:confirmed => true)
    redirect_to signin_path
  end
end

private

def accepted_params
  params.require(:user).permit(:username, :password, :firstname, :lastname, :bio, :frequency, :avatar, :email)
end

def set_cookie
  cookies.permanent[:registered] = true
end


