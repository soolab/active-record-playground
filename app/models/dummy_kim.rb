class DummyKim < ApplicationRecord

  # inverse_of의 비밀이 풀리는 날이구만
  # association을 할 떄 보통, bidirection 관계를 많이 설정을 할텐데
  # 그 과정에서 has_many에서만 관계를 정해두어도, inverse_of를 사용하면은
  # 반대쪽에서 belongs_to를 사용하지 않아도 된다는 말임.
  # 반대쪽의 칼럼에는 DummyKim에 대한 내용을 dummy_kim field로 정한다는 말이다
  # 아마 다른걸로 지정하면은 field name이 바뀌지 않을까 싶은데 그건 한 번 테스트를 해보도록 하자
  # 그건 아니네? 그럼 저 string의 값은 왜 있는거지, 그냥 true 값으로 하던가. 잘 모르겠네
  # 그럼 반대편에서 바꿔보면 어떨까.
  # 글쎄다 inverse_of는 좀 망했다. 실험이 망했음.
  has_many :dummy_lees, inverse_of: 'dummy_kim'
end
