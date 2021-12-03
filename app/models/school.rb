class School < ApplicationRecord

  # 이것에 대한 문제가 이제야 풀리는구만.
  # 보면은 school은 students를 많이 가지고 있다.
  # 그래서 school.students를 이용할 수 있겠지 왜냐하면은 has_many관계를 가지고 있기 때문이다.
  # 이렇게 아래와 같이 설정하게 되면은 school.students를 불러올떄 student의 name이 jinsoo 인것만 불러오게 된다는 것이다.
  # 물론 아래와 같은 조건처럼 쓸 일은 별로 없을것이다.
  # 그렇지만 만약 soft_delete를 했을 경우라면은
  # has_many :students, -> { where delete_at: nil } 이런식으로 유의미하게 작성가능할 것이다
  # 아마 다른 프로젝트들도 이런식으로 많이 사용하고 있는 것 같다. 이러한 설정을 해주는 것은 굉장히 편리한 기능이라고 생각한다.
  # 그럼 잘 되는지 테스트를 해보자.
  # 잘 되네 이름이 'jinsoo' 인것만 잘 딸려오는 것을 확인했다.
  # 앞으로 이런 구문을 잘 이해할 수 있을 것으로 기대한다.
  has_many :students, -> { where name: 'jinsoo'}
end
