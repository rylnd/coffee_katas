Y = (func) ->
  (
    (x) -> x(x)
  )(
    (y) ->
      func (z) -> y(y)(z)
  )

window.Y = Y
