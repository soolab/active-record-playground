class DummyTrash < ApplicationRecord
  has_many :dummy_cans, dependent: :destroy
end
