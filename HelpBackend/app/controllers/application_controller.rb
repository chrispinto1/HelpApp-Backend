class ApplicationController < ActionController::API

  def encode_token(id)
    JWT.decode({user_id: id}, "some_secret_code")[0]["user_id"]
  end

  def get_auth_header
    request.headers["Authorization"]
  end

  def decoded_token
    begin
      JWT.decode(get_auth_header, "some_secret_code")[0]["user_id"]
    rescue
      nil
    end
  end

  def session_user
    User.find_by(id: decoded_token)
  end

end
