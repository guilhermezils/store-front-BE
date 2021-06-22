class Api::V1::UsersController < ApplicationController
    skip_before_action :authorized, only: [:create]


    

      
        def create
          @user = User.create(user_params)
          if @user.valid?
            @token = encode_token(user_id: @user.id)
            render json: { user: UserSerializer.new(@user), jwt: @token }, status: :created
          else
            render json: { error: 'failed to create user' }, status: :not_acceptable
          end
        end
       




    
    
    
    
    
    
    
    
    private
    def user_params
        params.require(:user).permit(:username, :password)
    end
end

    # def create
    #     @user = User.create(user_params)
    #     if @user.valid?
    #       render json: { user: UserSerializer.new(@user) }, status: :created
    #     else
    #       render json: { error: 'failed to create user' }, status: :not_acceptable
    #     end
    #   end
      
      


# def login
#     @user = User.find_by username: params[:user][:username]

#         if !@user
#             render json: { error: 'Invalid username or password'}, status: :unauthorized
#             else
#                     if !@user.authenticate params [:user][:password]
#                             render json: { error: 'Invalid username or password'}, status: :unauthorized
                  
#                     else
#                                 payload = {user_id: @user.id}
#                                 secret = 'lkhgkjyt9786riutdiufkglyufro86rfkjhgfku6ri86fruy'
#                                 @token = JWT.encode payload, secret
#                                 render json: { token: @token }, status: :ok
#                     end

#                 end

#             end