class DummyBook < ApplicationRecord

  # belongs_to 를 설정할때는 반드시 단수형을 써야한다.
  # 만약에 여기에 복수형을 쓴다면은 Book.create(authors: @author) 이런식으로 될것이고
  # 그렇게 된다면은 뭐 그렇다쳐도 일단은 에러가 난다는 것이다. COC이니까 그냥 알아두면 됨.
  # 이렇게 하는 이유는 rails가 알아서 class를 추론하니까 convention에 알아서 맞추어주면 된다는 말임.
  # 일단 book에서 belongs_to를 걸면은 book은 author를 알게 됨 하지만 그건 단방향 관계임.
  # belongs_to 에서 상대방이 쓸 수 있는 관계는 has_one이나 has_many일것이다.
  # 원하는 관계에 따라서 양방향 관계가 될 수 있도록 하면 된다는 것임.

  # 하지만 이렇게 한다고 해서 database에 영향을 주는게 아니니까
  # foreign_key는 알아서 설정을 해줘야 한다
  # migration에서는 foreign_key: true 옵션을 줘야 한다는 것을 알면 되겠음
  # 이렇게 관계 설정을 하는 것은 application level이라는 것이다.
  belongs_to :author
end
