class PArt < ApplicationRecord
  # 뭐 이것도 마찬가지이다.
  # 재밋는건 그냥 바로 has_many 한 것 처럼 적어버리네
  # jointable을 작성할거라고 생각했는데 말이다.
  # 하긴 그런데 그 Model 자체를 만들지도 않는구나.
  # 뭐 그렇게 생각하면 될 것 같다.
  has_and_belongs_to_many :assemblies
end

# has_one을 사용해야 할까 belongs_to를 사용해야 할까 고민이다?
# 이건 어떤것이 owner가 되어야 하는 문제를 말하는 것 같다.
# 여기서 말하는 것은 foreign key의 위치가 어느 테이블에 있느냐를 의마하는건데
# 사실 그게 owner가 누구냐를 의미하는 것이랑 사실 같은 말이라고 생각한다.
# supplier가 account를 가지고 있는게 맞음으로
# supplier에서 has_one을 작성하고 account가 belongs_to를 사용하면 된다.
# 그럼 foreign_key는 어느쪽에 생성되는 것이지?
# 아마 account에서 생성되는 것 같다. belongs_to를 사용하는 테이블에 foreign_key 가 생긴다고
# 생각을 하면 쉬울 것 같다.

# choosing between has_many , through and has_and_belongs_to_many
# 이 두개의 차이점에 대해서 알아보도록 하자. 개인적으로는 has_many, through를 사용해야 한다고 이미 알고 있지만 말이다.
# 여기서도 비슷한 말을 하고 있다 앵간해서는 through를 사용하도록 하자 관계 정보 외에 다른 정보도 넣을 수 있기 때문이다.
# 뭐 이정도만 알면 될 듯. 이미 알고 있었더 내용이라서.
