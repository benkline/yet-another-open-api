class UserSerializer < ActiveModel::Serializer
  attributes :id, :created_at, :name, :email, :password, :bio

   def name
     object.name
   end

   def created_at
     object.created_at.strftime('%B %d, %Y')
   end

   def email
     object.email
   end

   def password
     object.password
   end

   def bio
     object.bio
   end

 end
