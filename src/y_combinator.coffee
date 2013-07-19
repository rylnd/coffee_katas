define ->
  (func) ->
    (
      (x) -> x(x)
    )(
      (y) ->
        func (z) -> y(y)(z)
    )
