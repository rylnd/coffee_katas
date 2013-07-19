define ['src/fizzbuzz.coffee-compiled'], (FizzBuzz) ->
  describe 'FizzBuzz', ->
    describe '.count', ->
      its = null
      beforeEach ->
        its = FizzBuzz.count()

      describe 'return value', ->
        it 'returns an Array', ->
          expect(its.constructor) instanceof Array

      describe 'arguments', ->
        it 'defaults to 100', ->
          expect(its.length).toBe 100

        it 'allows a size to be specified', ->
          for num in [1..10]
            expect(FizzBuzz.count(num).length).toBe num

      describe 'domain rules', ->
        it "returns 'fizz' for multiples of 3", ->
          for num in [3, 6, 9, 12]
            expect(its[num-1]).toBe 'fizz'

        it "returns 'buzz' for multiples of 5", ->
          for num in [5, 10, 20]
            expect(its[num-1]).toBe 'buzz'

        it "returns 'fizzbuzz' for multiples of both 3 and 5", ->
          for num in [15, 30, 45]
            expect(its[num-1]).toBe 'fizzbuzz'

        it 'returns the number otherwise', ->
          for num in [1, 2, 4, 7]
            expect(its[num-1]).toBe num
