class BudgetSerializer < ActiveModel::Serializer
  attributes :id, :goal, :actual
end
