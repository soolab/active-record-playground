class Library < ApplicationRecord
  has_many :books

  # 꼭 관계를 맺어야 할 때 이렇게 사용한다.
  # 하지만 book에는 validates_associated :library를 사용하면 안된다
  # 그러면은 서로 참조하며 무한 루프에 빠지기 때문에 여기처럼 그냥 has_many관계에서 설정하도록 하자.

  # 어떤식으로 돌아게기 되냐면은 사실 이건 book의 생성에 더 직접적인 영향을 끼치는 것이다.
  # book에 library가 참조되어 있지 않으면은 book은 valid 하지 않는 것으로 판별된다.
  # 근데 이것을 쓴 프로젝트는 아직 보지 못했던 것 같은데 나중에 이것을 쓰는지 참조해보자.
  validates_associated :books
end
