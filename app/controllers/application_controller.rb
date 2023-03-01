class ApplicationController < Sinatra::Base
  set :default_content_type, "application/json"

  # user sign in
  patch "/login" do
    user = User.find_by(name: params[:name], password: params[:password])
    { isRegistered: "#{!!user}", userId: user.id }.to_json
  end

  # user sign up
  post "/signup" do
    is_signed_up = User.find_by(email: params[:email])
    if is_signed_up
      { isAlreadyRegistered: "#{!!is_signed_up}" }.to_json
    else
      user = User.create(name: params[:name], email: params[:email], password: params[:password])
      user.to_json
    end
  end

  # user create task
  post "/tasks/create" do
    task = Task.create(
      name: params[:name],
      description: params[:description],
      due: params[:due],
      status: params[:status],
      user_id: params[:user_id],
    )
    task.to_json
  end

  # user updates task
  patch "/tasks/update/:id" do
    task = Task.find(params[:id])
    task.update(status: params[:status])
    task.to_json
  end

  # user gets individual task
  get "/tasks/:id" do
    task = Task.find(params[:id])
    task.to_json
  end

  # user lists all their own tasks
  patch "/tasks/" do
    task = Task.where(user_id: params[:user_id])
    task.to_json
  end

  # user delete specific tasks
  delete "/tasks/:id" do
    task = Task.find(params[:id])
    task.destroy
    task.to_json
  end
end
