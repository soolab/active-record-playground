class User < ApplicationRecord

  # create 와 new의 차이
  # new 라는 것은 model class를 이용해서 object를 만드는 것 뿐이지
  # 실제 db와 연동되는 Method는 아니다.
  # new를 하여 object를 생성한다음에 object.save를 해야지 create와 동일한 결과를 얻을 수 있다.

  # 반면 create는 object를 return 하고
  # db에 해당 object의 정보를 저장한다고 생각하면 된다.

  # 읽는 방법에 대해서 알아보자
  # User.all 이 있고, User.first, User.last 뭐 이런 간단한 것들이 존재하는 것이고
  # User.find_by(key:value) 형식으로 주면은 where 절을 비슷하게 구현할 수 있다는 것이다.
  # User.where(key:value, key:value) 형식으로도 찾을 수 있는데
  # 찾으면은 보통 array 형식으로 리턴이 나올 텐데
  # 여기에 .order(key: :desc, :asc)를 하면 정렬을 할 수 있다. order by 를 이렇게 이용하면 될 것 같다.
  # find_by!를 하고 조건에 맞는 record를 찾지 못한다면은 error를 리턴하게 됨
  # ActiveRecord::RecordNotFound를 리턴한다는 것을 알아두도록 하자. 꼭 있어야 하는 것일때 이렇게 설정하면 좋을 것 같다.
  # 그나저나 find_by 와 where의 차이점은 무엇이란 말인가??

  # update는 간단하다. 일단 해당 Record를 읽어온다음에
  # setter를 통해서 변경한다. 그리고 save를 하면 되는 것임.

  # delete도 간단하다.
  # 방법은 몇개 있는데 일단 record를 읽어온다음에 해당 object에서 object.destroy를 하면 된다.
  # 다른 방법은 find_by와 비슷하게 User.destroy_by(key: value)를 넣으면 된다.

end
