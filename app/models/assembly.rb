class Assembly < ApplicationRecord
  # 이건 단순하게 through로 연결한게 아니라
  # 그냥 manyTomany라고 이해하면 되는데
  # 글쎄다 그닥 좋은 것 같다고 생각하지는 않는다.
  # 앵간하면 through를 이용하는 것이 맞다고 생각한다.
  has_and_belongs_to_many :parts
end
