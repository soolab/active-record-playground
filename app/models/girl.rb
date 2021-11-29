class GoodnessValidator < ActiveModel::Validator
  def validate(record)

    # options를 통해서 해당 필드들을 일일히 검사하는 그런 로직이다.
    # 어려운 건 아니고 이렇게 진행된다 정도로 이해하면 될 것 같다.
    if options[:fields].any? { |field| record.send(field) == "Evil" }
      record.errors.add :base, "This person is evil"
    end
  end
end

class Girl < ApplicationRecord

  validates :first_name, presence: true, length: { maximum: 10, message: 'over 10 charaters' }
  validates :last_name, presence: true, length: { maximum: 10, message: 'over 10 charaters' }

  # 이렇게 field 라는 것을 GoodnessValidator에다가 넘겨준다음.
  validates_with GoodnessValidator, fields: %i(first_name last_name)
end
