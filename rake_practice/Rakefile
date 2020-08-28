task :default => :mac_and_cheese

desc "Task to make mac & cheese"
task :mac_and_cheese => [:boil_water, :buy_pasta, :buy_cheese] do 
	puts "Making Mac & Cheese"
end

desc "Task to buy cheese"
task :buy_cheese => [:go_to_store] do
	puts "Buying Cheese"
end

desc "task to buy pasta"
task :buy_pasta => [:go_to_store] do 
	puts "Buying Pasta"
end

desc "tas to boil water"
task :boil_water => [:buy_pasta, :buy_cheese] do
	puts "Boiling Water"
end

desc "task to go to the store"
task :go_to_store do
	puts "Going to the Store"
end

desc "a namespace to demonstrate 2 go_to_store tasks"
namespace :apple do
	task :go_to_store do
		puts "Go to Apple Store"
	end
end