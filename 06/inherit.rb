class Employee 
	attr_accessor :name, :title, :salary, :age
end


class Manager < Employee
	attr_accessor :direct_reports
end

class Intern < Employee
	attr_accessor :college_credit
end

manager = Manager.new
manager.name = "Nicki Minaj"
manager.title = "Boss ass bitch"
manager.direct_reports = ['Rebort','Vincent']


puts manager.title
puts manager.direct_reports


employee = Manager.new
employee.salary = 1 
employee.direct_reports = ['Someone']