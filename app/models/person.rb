class Person < ApplicationRecord

  # validate 하는 가장 기본적인 것.
  # 존재의 필수 여부를 판별하는 것이다.
  # 모델단에서 검출하는 것은 가장 마지막이라 최종 검수느낌인데
  # 사실 이게 제일 좋은 방법이라고 한다. 좀 더 윗단에서 검출하는 것이 나쁘지 않다고 생각했었는데
  # 꼭 그런건 아닌가보다. 설명에 따르면은 컨트롤러단에서 검출하는 것은 테스트하기 좀 어렵다고 하네.

  # Active Record는 두 가지 종류가 있다. DB에서 가져온 것과 그렇지 않는 것.
  # new_record?라는 메소드를 통해서 이것이 DB에서 가져온 것인지, 단순히 new를 통해서 만들어진 object인지 판별 할 수 있다.
  # 단순히 new를 해서 save를 하더라도 new_record?는 false 즉, DB와 관련있는 Active Record라고 판별한다.

  # validate는 create, update, save 할떄 이루진다.
  # 또는 create!, update!, save! 이다.
  # new라는 것을 할떄는 validates를 지정했을때의 에러를 띄우지는 않는다. 물론 valid를 하면은 false를 리턴하겠지만 말이다.
  validates :name, presence: true
end
