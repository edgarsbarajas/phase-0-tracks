def count_to_5
  index = 1
  until index == 5
    yield("Edgar", index)
    index += 1
  end
end

count_to_5 { |name, index| puts "#{name} is counting: #{index}" }