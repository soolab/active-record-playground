class DummyAccount < ApplicationRecord

  # jointable에서는 이렇게 설정을 해주면 된다는 것이다. ㅇㅇ
  belongs_to :dummy_supply
  has_one :account_history
end
