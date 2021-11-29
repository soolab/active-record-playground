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
  # 그 이외에 여러가지가 있긴 한데, 이외의 메소드는 validate를 skip하니까 조심하도록 해야 한다.
  # 또는 save(validate:false) 를 하게 되면은 validate를 하지 않는다는 특징이 있는데, 이런건 조심해서 써야한다.

  # validate에서 error가 생긴다면은 Active Record의 errors라는 method를 통해서
  # 어떤 것이 error를 발생시켰는지 확인 할 수 있다.
  # save!, update!, create!를 하지 않는 이상 error를 raise하지는 않는다
  # 그렇기 때문에 !를 뺀 method를 시도해보고, error가 발생한다면은 ActiveRecord.errors 또는 ActiceRecords.errors.full_messages
  # 라는 것을 이용해서 어떤 것이 error를 유발했는지 테스트하도록 하자.

  # 관련하여 ActiceRecord.errors.first.full_message
  # 이런식으로 사용법이 있는걸 보아서는 errors라는 것은 error의 array를 리턴한다고 생각하면 되고
  # 각각의 full_message를 볼때는 full_message를 사용한다고 생각하면 된다.
  validates :name, presence: true
end
