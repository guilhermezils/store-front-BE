class UsersController < ApplicationController

    def index
        @users = User.all
        render json: @users, status: :ok
    end

    def create
        @user = User.create user_params
        render json:@user
    end

    def login
        @user = User.find_by username: params[:user][:username]
        if !@user
            render json: { error: 'Invalid username or password'}, status: :unauthorized
        else
            if !@user.authenticate params[:user][:password]
            render json: { error: 'Invalid username or password'}, status: :unauthorized
            else 
                payload = { user_id: @user.id}
                secret = 'yu585i7647eweryshtys'
                @token = JWT.encode payload,secret
                render json: { token: @token }, status: :ok
            end
        end
    end
   


    private
    def user_params
        params.require(:user).permit(:username, :password)
    end

end
