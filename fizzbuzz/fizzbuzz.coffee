class FizzBuzz
  @run: (count = 100) ->
   console.log @fizz(x) for x in [1..count]

  @fizz: (num) ->
    if num % 15 == 0
      'fizzbuzz'
    else if num % 3 == 0
      'fizz'
    else if num % 5 == 0
      'buzz'
    else num

FizzBuzz.run()
