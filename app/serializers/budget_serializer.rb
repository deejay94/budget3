class BudgetSerializer < ActiveModel::Serializer
  attributes :name, :id, :goal, :actual
end
