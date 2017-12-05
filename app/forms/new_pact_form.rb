class NewPactForm
  include ActiveModel::Model

  attr_accessor :name, :email, :action, :people_requirement

  validates :name, :email, :action, presence: true
  validates :people_requirement, numericality: {only_integer: true, greater_than: 0}
end
