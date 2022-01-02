class User < ActiveRecord::Base
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable, :trackable and :omniauthable
  devise :database_authenticatable, :recoverable, :validatable, :trackable

  def computed_permissions
    roles.map(&:computed_permissions).reduce(RoleCore::ComputedPermissions.new, &:concat)
  end
end
