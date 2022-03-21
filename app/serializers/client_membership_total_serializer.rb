class ClientMembershipTotalSerializer < ActiveModel::Serializer
  attributes :name, :age, :total_charges

  def total_charges
    "Total Membership Charges: $#{self.object.memberships.sum(:charge)}"
  end
  
end
