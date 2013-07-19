require ['src/y_combinator.coffee-compiled'], (Y) ->
  describe 'Y', ->
    describe 'factorial', ->
      factorial = null

      beforeEach ->
        almost_factorial = (f) ->
          (n) ->
            if n is 0
              1
            else
              n * f(n-1)

        factorial = Y(almost_factorial)

      it "calculates factorials", ->
        for expected, num in [1, 1, 2, 6, 24, 120, 720]
          expect(factorial(num)).toBe expected

    describe 'fibonacci', ->
      fibonacci = null

      beforeEach ->
        almost_fibonacci = (f) ->
          (n) ->
            if n is 0 or n is 1
              n
            else
              f(n-1) + f(n-2)

        fibonacci = Y(almost_fibonacci)

      it "calculates fibonacci", ->
        for expected, num in [0, 1, 1, 2, 3, 5, 8, 13]
          expect(fibonacci(num)).toBe expected
