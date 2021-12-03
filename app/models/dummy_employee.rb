class DummyEmployee < ApplicationRecord

  # 이런식으로 self_join을 할 수 있는 것인데
  # 보통 상황과 같이
  # field name만으로 다른 model을 참조 할 수 없다.
  # 그렇기 때문에 class_name이라는 것을 사용하는 것이고, foreign_key나 optional 같은 추가 조건을 주어서
  # 매니저가 있는 employee도 있고 그럴지 않은 employee도 있도록 한 것이라고 생각하면 된다
  # 개인적으로 이렇게 class_name을 적어주는 것이 명시적이라서 더 좋지만은
  # 아마도 coc에 맞지 않음으로 rails에서는 선호하지 않을 것으로 생각한다.
  # rails에서는 field name으로 판별할 수 있으면은 class_name을 생략하는 것을 아마도 선호할 것이기 때문이다.
  has_many :subordinate, class_name: 'DummyEmployee', foreign_key: 'manager_id'
  belongs_to :manager, class_name: 'DummyEmployee', optional: true
end
