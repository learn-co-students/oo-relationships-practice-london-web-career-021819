require_relative '../config/environment.rb'

def reload
  load 'config/environment.rb'
end

faiz = Users.new('Faiz')
khang = Users.new('Khang')
kai = Users.new('Kai')

project_one = Projects.new(1000)
project_two = Projects.new(250)

faiz_pledge_one = Pledges.new(500, project_one, faiz)
faiz_pledge_two = Pledges.new(200, project_one, faiz)
khan_pledge = Pledges.new(550, project_one, khang)
# khang_pledge_two = Pledges.new(100, project_two, khang)

Pry.start
'lol'
