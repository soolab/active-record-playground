class Dummy < ApplicationRecord

  # 이렇게 여러가지 필드들을 한 조건을 걸어서
  # validate 할 수 있다 정도로 알면 되겠음.
  validates_each :name, :surname do |record, attr, value|
    record.errors.add(attr, 'must start with upper case')  if value =~ /\A[[:lower:]]/
  end
end
