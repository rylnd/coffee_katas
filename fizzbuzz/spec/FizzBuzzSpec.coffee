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

    it "returns 'buzz' for multiples of 5", ->
      expect(FizzBuzz.count()[num-1]).toBe('buzz') for num in [5,10,20]

    it "returns 'fizzbuzz' for multiples of both 3 and 5", ->
      expect(FizzBuzz.count()[num-1]).toBe('fizzbuzz') for num in [15,30,45]
