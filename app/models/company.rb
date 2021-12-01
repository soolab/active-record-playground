class Company < ApplicationRecord
  has_many :employees

  after_touch :log_when_employees_or_company_touched

  private

  def log_when_employees_or_company_touched
    puts "Employee/Company was touched."
  end
end
