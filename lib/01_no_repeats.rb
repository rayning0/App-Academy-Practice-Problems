def no_repeats(year_start, year_end)
  answer = []

  (year_start..year_end).each do |year|
    answer << year if no_repeat?(year)
  end

  answer
end

def no_repeat?(year)
  year.to_s.split('').uniq.join.to_i == year
end
