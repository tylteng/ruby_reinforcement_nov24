ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
           {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
           {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
           {1 =>'Boots', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
           {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}]

tally = {'Smudge' => 0, 'Tigger' => 0, 'Simba' => 0, 'Bella' => 0, 'Lucky' => 0, 'Boots' => 0, 'Felix' => 0}

ballots.each do |x|
  tally.each do |name, value|
    if x.has_value?(name)
      if x.key(name) == 1
        tally[name] = value + 3
      elsif x.key(name) == 2
        tally[name] = value + 2
      else x.key(name) == 1
        tally[name] = value + 1
      end
    end
  end
end

tally = tally.sort_by(&:last)
tally_placement = tally.reverse

counter = 1

tally_placement.each do |x|
  puts "#{x.first} is in place #{counter} with #{x.last} votes!!"
  counter += 1
end
