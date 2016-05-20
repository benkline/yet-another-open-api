class Api::UsersController < ApiController
  before_action :authenticated?

  def index
    users = User.all
    render json: users, each_serializer: UserSerializer
  end

# api_users     GET    /api/users(.:format)          api/users#index {:format=>:json}
#               POST   /api/users(.:format)          api/users#create {:format=>:json}
# new_api_user  GET    /api/users/new(.:format)      api/users#new {:format=>:json}
# edit_api_user GET    /api/users/:id/edit(.:format) api/users#edit {:format=>:json}
# api_user      GET    /api/users/:id(.:format)      api/users#show {:format=>:json}
#               PATCH  /api/users/:id(.:format)      api/users#update {:format=>:json}
#               PUT    /api/users/:id(.:format)      api/users#update {:format=>:json}
#               DELETE /api/users/:id(.:format)      api/users#destroy {:format=>:json}

end
