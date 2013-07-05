class Employee < ActiveRecord::Base
  attr_accessible :first_name, :last_name


  def self.build_from_csv(row)
    @error = nil
    cust = Employee.find_or_initialize_by_first_name(row[0])
    cust.attributes ={:first_name => row[0],
                      :last_name => row[1]}
    return cust,@error
  end

  def self.EmployeeHeader
    "First Name,Last Name".split(',')
  end

end
