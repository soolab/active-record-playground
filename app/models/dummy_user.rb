class DummyUser < ApplicationRecord

  # 이렇게 동시에 해도 상관은 없나보다.
  # 두 개의 칼럼이 같은 validation을 받으면은 이렇게 하도록 하자.
  validates :login, :email, presence: true


  # 이런식으로 validation 하기 전에 callback을 호출하라고 이해하면 된다.
  # 그냥 validation 하기 전에 특정 함수를 호출한다라고 이해하면 된다.
  # 아마 복수의 것을 해도 상관 없을 것 같다.
  # 그건 테스트 해보자. 역시나 두개를 해도 상관 없다.
  before_validation :ensure_login_has_a_value
  before_validation :ensure_email_has_a_value

  # 뭐 이런식으로도 작성가능하다.
  # after_validation :set_location, on: [:create, :update]

  # 이런식으로 해도 상관 없긴 한데, 그냥 따로 private로 method를 파서
  # 하는게 더 깔끔한 방식이라고 생각됨. before , after + ~~  여러개가 있을 것 같으니
  # 필요에 따라서 작성하도록 하자.
  # before_create do
  #   self.name = login.capitalize if name.blank?
  # end

  # 이런식으로 user가 초기화 될 때 마다 뭔가 호출하도록 하게 할 수 있음.
  # 이런게 다 call back의 종류라고 생각할 수 있다.
  after_initialize do |user|
    puts "#{user.login} you have initialized an object!"
  end

  # 찾아 질 떄 마다 부루는게 있구나.
  # 뭔가 찾고나서 후처리를 해야 할 경우 쓰면 괜찮을 것 같다.
  # 이런것들도 do end가 아니라 method로 만들고 제공하고 싶은데 되려나.
  # 근데 user가 있네. parameter를 하나 주면 되려나.
  # 파라미터 하나 주고 하려고 했는데 실패함. yield의 영역이락 그런감.
  # 나중에 더 찾아봐야 할 것 같다.
  after_find do |user|
    puts " #{user.login} You have found an object"
  end

  private

  def ensure_login_has_a_value
    if login.nil?
      self.login = email unless email.blank?
    end
  end

  def ensure_email_has_a_value
    if email.nil?
      self.email = login unless login.blank?
    end
  end
end
