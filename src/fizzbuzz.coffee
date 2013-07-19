define ->
  class FizzBuzz
    @count: (count = 100) ->
      @rule_for(x) for x in [1..count]

    @rule_for: (num) ->
      if num % 15 == 0
        'fizzbuzz'
      else if num % 3 == 0
        'fizz'
      else if num % 5 == 0
        'buzz'
      else num
