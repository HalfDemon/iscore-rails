class Ability
  include CanCan::Ability

  def initialize(user)
    user ||= User.new # guest user (not logged in)
    if user.admin?
      can :manage, :all
    elsif user.blue?
     	can :manage, :all, site_id: user.site_id
    elsif user.red?
    end
  end
end