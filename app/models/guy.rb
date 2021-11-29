# frozen_string_literal: true

# validator calss를 만들 수 있다.
class GoodnessValidator < ActiveModel::Validator
  def validate(record)
    record.errors.add :base, 'This person is evil' if record.name == 'Evil'
  end
end

class Guy < ApplicationRecord

  validates :name, presence: true, length: { maximum: 10, message: 'Over 10 characters is not accepted' }

  # validator class를 이용해서 validate를 할 수 있다.
  # 사실 class라는 것 보다 validate 라는 instance method가 더 중요하다고 생각한다.
  validates_with GoodnessValidator
end
