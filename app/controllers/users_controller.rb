class UsersController < ApplicationController

  # GET /users
  # def index
  #   @users = User.all

  #   render json: @usersra
  # end

  # GET /users?email=junaid@evercam.io
  def show
    user = User.find_by(email: params[:email])
    render :json => user.as_json 
  end

  # POST /users
  def create
    @user = User.new(
      first_name: params[:first_name],
      last_name: params[:last_name],
      email: params[:email],
      password: params[:password]
      )

    if @user.save
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # PATCH/PUT /users/1
  def update
    if @user.update(user_params)
      render json: @user
    else
      render json: @user.errors, status: :unprocessable_entity
    end
  end

  # DELETE /users/1
  def destroy
    @user.destroy
  end

  # private
  #   # Use callbacks to share common setup or constraints between actions.


  #   # Only allow a trusted parameter "white list" through.
  #   def user_params
  #     params.require(:user).permit(:first_name, :last_name, :email, :password)
  #   end
end
