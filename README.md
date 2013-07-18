Coffee Katas
---------

### [FizzBuzz](http://en.wikipedia.org/wiki/Bizz_buzz)
----
Enough said. FizzBuzz in a class, with an optional count.

```javascript
FizzBuzz.count(3);
// => [ 1, 2, 'fizz' ]
```

### [Y Combinator](http://en.wikipedia.org/wiki/Fixed-point_combinator#Y_combinator)
----
Again, not much to say about this one.
See [y_combinator.spec.coffee](https://github.com/ryalnd/coffee_katas/blob/master/spec/y_combinator.spec.coffee) for examples of how to use it.

## Running the tests
The `jasmine` script currently assumes that `jasmine-node` is installed locally with npm.

```bash
$ ./jasmine # runs all specs

$ ./jasmine fizzbuzz # runs only the fizzbuzz specs
```
