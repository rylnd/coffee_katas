describe 'Y', ->
  describe 'factorial', ->
    factorial = null

    beforeEach ->
      almost_factorial = (fac) ->
        (n) ->
          if n is 0
            1
          else
            n * fac(n-1)

      factorial = Y(almost_factorial)

    it "calculates factorials", ->
      for expected, num in [1, 1, 2, 6, 24, 120, 720]
        expect(factorial(num)).toBe expected
