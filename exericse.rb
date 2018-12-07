ballots = [{1 => 'Smudge', 2 => 'Tigger', 3 => 'Simba'},
  {1 => 'Bella', 2 => 'Lucky', 3 => 'Tigger'},
  {1 => 'Bella', 2 => 'Boots', 3 => 'Smudge'},
  {1 => 'Boots', 2 => 'Felix', 3 => 'Bella'},
  {1 => 'Lucky', 2 => 'Felix', 3 => 'Bella'},
  {1 => 'Smudge', 2 => 'Simba', 3 => 'Felix'}
]

counter = {}

ballots.each do |ballot|
  ballot.each do |vote, name|

    if counter[name] == nil
      counter[name] = 0
    end

    if vote == 1
      counter[name] += 3
    elsif vote == 2
      counter[name] += 2
    else
      counter[name] += 1
    end

  end
end

winner = counter.max_by { |name, score| score}

puts winner
