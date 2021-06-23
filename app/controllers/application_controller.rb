class ApplicationController < ActionController::API
# skip_before_action: :authenticate, only: [:create, :login]


    def auth_header
        request.headers['Authorization']
    end
    def decoded_token
        if auth_header
            token = auth_header.split(' ')[1]
            begin
                JWT.decode(token, 'yu585i7647eweryshtys')
            rescue JWT::DecodeError 
                "Bad token error"
            rescue JWT::VerificationError 
                "Bad secret error"
            end
        end
    end
    def current_user
        if decoded_token
            user_id = decoded_token[0]['user_id']
            User.find_by(id: user_id)
        end
    end
end
