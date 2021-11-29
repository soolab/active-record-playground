class Product < ApplicationRecord

  # 뭐 굳이 이런걸 해야 하는 경우는 그리 많지 않을 것 같다.
  # 테이블 명을 바꾸는 방법.
  # self.table_name = 'my_products'
  # # pk를 바꾸는 방법
  # self.primary_key = 'product_id'

  # 하지만 위와 같은 코드를 작성한다고 하더라도
  # rails db:migrate 를 할 때 그게 바뀌는 것이 아님.
  # rails db:migrate migrate 파일하고만 관련있다고 보면 되고
  # 그것으로 만들어진 db 스키마를 적용할 때 바뀐 테이블 명과 pk column을 찾는다고 생각하면 됨
  # 그러니까 순서는 schema를 만들고 model에서 변경하면 된다.
end
