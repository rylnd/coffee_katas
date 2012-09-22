describe 'FizzBuzz', ->
  describe '.count', ->
    describe 'return value', ->
      it 'returns an Array', ->
        expect(FizzBuzz.count().constructor) instanceof Array

    describe 'arguments', ->
      it 'defaults to 100', ->
        expect(FizzBuzz.count().length).toBe 100

      it 'allows a size to be specified', ->
        expect(FizzBuzz.count(num).length).toBe(num) for num in [1..10]

    describe 'domain rules', ->
      it "returns 'fizz' for multiples of 3", ->
        expect(FizzBuzz.count()[num-1]).toBe('fizz') for num in [3, 6, 9, 12]

      it "returns 'buzz' for multiples of 5", ->
        expect(FizzBuzz.count()[num-1]).toBe('buzz') for num in [5, 10, 20]

      it "returns 'fizzbuzz' for multiples of both 3 and 5", ->
        expect(FizzBuzz.count()[num-1]).toBe('fizzbuzz') for num in [15, 30, 45]

      it 'returns the number otherwise', ->
        expect(FizzBuzz.count()[num-1]).toBe(num) for num in [1, 2, 4, 7]
