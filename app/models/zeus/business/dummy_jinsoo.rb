# frozen_string_literal: true

module Zeus
  module Business
    class DummyJinsoo < ApplicationRecord

      # 일반적으로 같은 모듈안에 있으면은 class_name을 굳이 안써도 괜찮음
      # 왜냐하면은 field name을 보고 알아서 class를 찾아가기 때문이다
      # 하지만 같은 module내에 있지 않다면은 class_name을 직접 절대경로로 작성을 헤줘야 한다는 것이다.
      # 뭐 이정도 알면 될 것 같다는 생각이 든다. 실제로 Zeus 같은 경우 이렇게 class_name을 직접 입력한 경우가 많기 때문에
      # 이 방법을 알게되어서 좀 더 association에 대해서 이해 할 수 있었던 것 같다.
      has_many :dummy_jinhos, class_name: 'Zeus::Billing::DummyJinho'
    end
  end
end
