class Employee < ApplicationRecord
  belongs_to :company

  # touch라는 method를 호출하면은 이게 호출된다는건데
  # touch라는 것이 updated_at의 timestamp를 current time으로
  # 업데이트해주는 것이라서 글쎄다 touch를 많이 사용하려나 잘 모르겠다.

  # callback이라는 것이 특정 시점에 call 되는 method 라고 이해하면 될 것 같다.
  # 여러가지 상황이 있으니 이건 차차 익숙해지도록 하는 것이 좋을 것 같다.
  after_touch :log_when_employee_touched

  private

  def log_when_employee_touched
    puts "An Employee was touched"
  end
end
