class ClientSerializer < ActiveModel::Serializer
  attributes :name, :age, :total

  def total
    self.object.memberships.sum(:charge)
  end
end
