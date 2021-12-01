class PArt < ApplicationRecord
  # 뭐 이것도 마찬가지이다.
  # 재밋는건 그냥 바로 has_many 한 것 처럼 적어버리네
  # jointable을 작성할거라고 생각했는데 말이다.
  # 하긴 그런데 그 Model 자체를 만들지도 않는구나.
  # 뭐 그렇게 생각하면 될 것 같다.
  has_and_belongs_to_many :assemblies
end
