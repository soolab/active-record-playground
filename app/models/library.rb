class Library < ApplicationRecord
  has_many :books

  # 꼭 관계를 맺어야 할 때 이렇게 사용한다.
  # 하지만 book에는 validates_associated :library를 사용하면 안된다
  # 그러면은 서로 참조하며 무한 루프에 빠지기 때문에 여기처럼 그냥 has_many관계에서 설정하도록 하자.

  # 어떤식으로 돌아게기 되냐면은 사실 이건 book의 생성에 더 직접적인 영향을 끼치는 것이다.
  # book에 library가 참조되어 있지 않으면은 book은 valid 하지 않는 것으로 판별된다.
  # 근데 이것을 쓴 프로젝트는 아직 보지 못했던 것 같은데 나중에 이것을 쓰는지 참조해보자.
  validates_associated :books

  # exclusion은 배타적인 것이고 in이랑 같이 사용된다.
  # in 안에 있는 것은 제외를 해야 하는 validation이고 다음과 같이 message를 안에다가 넣어줄 수 있다.
  # 아마 %{value}가 유저가 입력하려고 했던 그 값을 의미하는 것 같다.
  # 그 값을 rails가 value에 넣어주는 것이라고 생각하면 된다.
  validates :name, exclusion: { in: %w(hello world), message: "%{value} is reserved." }

  # 특정 format이 되어야 하는 경우도 있을 것이다.
  # 그럴 때 사용하는 것이 이 format 옵션이라고 생각하면 되고 문법은 이러하다 정도만 기억하면 될 것 같다.
  # Email을 validation을 할 때 썼던걸로 기억하고, 정규 표현식에 대해서 어느정도 알면 될 것 같다는 생각이 든다.
  validates :name, format: { with: /\A[a-zA-Z]+\z/, message: 'only allows letters' }
end
