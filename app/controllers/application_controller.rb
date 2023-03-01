class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # User sign in
  patch "/login" do
    user = User.find_by(name: params[:name], password: params[:password])
    { isRegistered: "#{!!user}" }.to_json
  end

  #User sign up
  post "/signup" do
    is_signed_up = User.find_by(email: params[:email])
    if is_signed_up
      { isAlreadyRegistered: "#{!!is_signed_up}" }.to_json
    else
      user = User.create(name: params[:name], email: params[:email], password: params[:password])
      user.to_json
    end
  end




end
