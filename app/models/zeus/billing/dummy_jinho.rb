# frozen_string_literal: true

module Zeus
  module Billing
    class DummyJinho < ApplicationRecord
      belongs_to :dummy_jinsoo, class_name: 'Zeus::Business::DummyJinsoo', optional: true
    end
  end
end
