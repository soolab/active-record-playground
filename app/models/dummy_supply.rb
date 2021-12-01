class DummySupply < ApplicationRecord

  # 이런식으로 has_one, through를 사용할 수 있는건데
  # 음 말이 되는 것 같기도 하고 왜냐면 has_many, through 와같이
  # 관계만 설정하는 것이 아닌 두 가지가 관계를 맺고 추가적인 칼럼을 넣을 수 있기 때문이다
  # 처음에는 이게 왜 있는거지 했는데 추가적인 칼럼을 넣을 수 있다는 것을 생각하면은
  # 왜 만들어졌는지 알 수 있을 것 같다.
  has_one :dummy_account
  has_one :account_history, through: :dummy_account
end
