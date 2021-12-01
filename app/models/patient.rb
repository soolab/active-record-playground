class Patient < ApplicationRecord

  # 같은 구조로 되어있으니까 이렇게 작성을 하면 될 것이다.
  has_many :appointments
  has_many :phsicians, through: :appointments
end
