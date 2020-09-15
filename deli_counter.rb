katz_deli = []

def line(derp)
  if derp == []
    puts "The line is currently empty."
  else
    status = "The line is currently:"
    derp.each_with_index do |name, index|
      status += " #{index + 1}. #{name}"
    end
    puts status
  end
end

def take_a_number(katz_deli, name)
  katz_deli.push(name)
  number = katz_deli.index(name) + 1
  puts "Welcome, #{name}. You are number #{number} in line."
end

def now_serving(katz_deli)
	if katz_deli.empty?
		puts "There is nobody waiting to be served!"
	else
		serving = katz_deli[0]
		puts "Currently serving #{serving}."
		katz_deli.shift
	end

end
