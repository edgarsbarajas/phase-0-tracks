def add_5 (name, start_num)
  5.times do
    yield(name, start_num)
    start_num+=1
  end

end

add_5("Edgar", 10) { |name, start_num| puts "#{name} is counting: #{start_num}" }