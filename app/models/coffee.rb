class Coffee < ApplicationRecord

  # nil을 허용한다는 것이다.
  # allow_nil을 하지 않으면은 in 안에 있는 것들만 가능하겠지만
  # 여기서는 nil을 포함하고 In 안에 있는 것들이 들어갈 수 있다 정도로 이해하면 될 것 같다.
  validates :size, inclusion: { in: %w(small medium large), message: "%${value} is not a valid size", allow_nil: true}

  # nil을 넣어봤더니 가능했다. 뭐 nil이나 ''이나 사실 같은 말이니까 그려려니 해도 될 듯.
  validates :name, inclusion: { in: %w(americano latte), allow_blank: true }
end
