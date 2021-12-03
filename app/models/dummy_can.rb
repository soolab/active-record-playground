class DummyCan < ApplicationRecord
  # 사실은 원래는 belogns_to :dummy_trash 라고 하는게 맞다.
  # 하지만은 상황에 따라서 칼럼명을 다르게 해야 할 일도 있을 것이다
  # 이럴때는 이렇게 명시적으로 이름을 바꾸어주고, class_name을 바꾸어주고
  # foreign_key를 설정을 해주면 된다.
  # class_name과 foreign_key를 지정해주지 않는다면은
  # 어떤것으로 trash라는 이름만 보고 판단해야 하는데, trash라는 model_class는 존재하지 않고
  # 그에 맞는 foreign_key도 존재하지 않기 때문에 이렇게 명시적으로 적어줘야 한다는 것임.
  belongs_to :trash, class_name: 'DummyTrash', foreign_key: 'dummy_trash_id'
end
