task default: :coffee

task :email do
  puts 'check email'
end

task :coffee do
  puts 'drink coffee'
end

task :checkout do
  puts 'checkout code'
end

task :jira do
  puts 'review jira'
end

task :standup => [:email, :jira] do
  puts 'ready for stand up'
end

# tasks with named arguments

task :call, :response do |t, args|
  response = args[:response]
  puts 'parsing response: ' + response.to_s
end


  task :send, [:request, :response] do |t, args|
    puts "Request: #{ args[:request]}"
    puts "Response: #{ args[:response]}"
  end


namespace :requests do
  task :send, [:request, :response] do |t, args|
    puts "Request: #{ args[:request]}"
    puts "Response: #{ args[:response]}"
  end
end
