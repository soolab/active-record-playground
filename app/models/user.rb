class User < ApplicationRecord

  # create 와 new의 차이
  # new 라는 것은 model class를 이용해서 object를 만드는 것 뿐이지
  # 실제 db와 연동되는 Method는 아니다.
  # new를 하여 object를 생성한다음에 object.save를 해야지 create와 동일한 결과를 얻을 수 있다.

  # 반면 create는 object를 return 하고
  # db에 해당 object의 정보를 저장한다고 생각하면 된다.
end
