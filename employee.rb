#Employee payroll Details
module Employee
    def details
      puts "Enter Employee Id"
      @emp_id=gets.to_i
      puts "Enter Employee Name"
      @emp_name=gets
      puts "Enter Date of Birth"
      date=gets.to_i
      puts "Ente the Employee Salary"
      @emp_salary=gets.to_i
    end
end
module Salary
    def salaries
      @da = @emp_salary*15/100
      @hra = @emp_salary*10/100
      @pf = @emp_salary*12/100
      @esi = @emp_salary*2/100
      @deduction=@pf + @esi
      @gross_sal=@emp_salary + @da + @hra
      @net_sal=@gross_sal- @deduction
        puts "\nEmployee Id = #{@emp_id}"
        puts "Employee Name = #{@emp_name}"
        puts "\nGross Salary = $#{@gross_sal}"
        puts "Employee DA  = $#{@da}"
        puts "Employee HRA  = $#{@hra}"
        puts "Employee PF deduction = $#{@pf}"
        puts "Employee ESI deduction = $#{@esi}"
    end
end
module Hours
  def pay_per_hour
    pay_for_period=(@emp_salary / 365) * 12
      puts "\nPay per hour = $#{pay_for_period}"
      puts "\nYour Net Salary = $#{@net_sal}"
  end
end
class Pay
  include Employee
  include Salary
  include Hours
  def role
    if @emp_salary == 0
      puts "A salary of $#{@emp_salary} isn't valid!"
    else
      puts "\nPlease type Your Bank A/C"
      bank=gets.to_i
      puts "\nYour Net Salary = $#{@net_sal} is Credited in Your account"
      puts "\nHave a Nice Day!!"
    end
  end
end
obj1=Pay.new
obj1.details
obj1.salaries
obj1.pay_per_hour
obj1.role
