class Phsician < ApplicationRecord

  # 이건 명확하게 one to many관계이다.
  has_many :appointments

  # 직접적으로 physician이 patient를 가지고 있지는 않지만은
  # appointment를 통해서 patient를 가지고 있다고 생각하면 된다.
  # 보통은 many to many를 가져갈때 이런 구조를 많이 가져가니까
  # 이것을 주로 보면 된다. 말도 된다 appointments를 통해서 paitients와 엮여있는 구조니까
  # 이런식으로 through: appointments를 쓰는것은 언어적으로 맞는 것 같다.
  has_many :patients, through: :appointments
end
