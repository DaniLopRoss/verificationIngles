class Ability
  include CanCan::Ability

  def initialize(usuario)
    user ||= Usuario.new
    if usuario.role == "Administrador"
      can :manage, :all
    elsif user.role == "usuario"
      alias_action :create, :read, :update, :to => :cru
      cannot :cru, Departamento
      can :cru, Licencia
      can :cru, Equipo
     end
    end
   end