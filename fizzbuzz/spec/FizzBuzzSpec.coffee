describe 'FizzBuzz', ->
  describe '.count', ->

    it 'returns an Array', ->
      expect(FizzBuzz.count().constructor) instanceof Array

    it 'is the correct size', ->
      expect(FizzBuzz.count(1).length).toBe 1
      expect(FizzBuzz.count(3).length).toBe 3

    it 'defaults to 100', ->
      expect(FizzBuzz.count().length).toBe 100

    it "returns 'fizz' for multiples of 3", ->
      expect(FizzBuzz.count()[num-1]).toBe('fizz') for num in [3,6,9,12]
