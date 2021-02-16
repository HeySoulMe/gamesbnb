class BoardgamePolicy < ApplicationPolicy
  class Scope < Scope
    def resolve
      scope.all
    end
  end

  def index?
    true
  end
  
<<<<<<< HEAD
  def show?
    true
  end

=======
  def create?
    true
  end

  def show?
    true
  end
>>>>>>> master
end
