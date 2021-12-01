class Employee < ApplicationRecord
  belongs_to :company

  # touch라는 method를 호출하면은 이게 호출된다는건데
  # touch라는 것이 updated_at의 timestamp를 current time으로
  # 업데이트해주는 것이라서 글쎄다 touch를 많이 사용하려나 잘 모르겠다.
  after_touch :log_when_employee_touched

  private

  def log_when_employee_touched
    puts "An Employee was touched"
  end
end
