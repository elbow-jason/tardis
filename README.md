Tardis
======

You already know what the tardis is. Let's see what it can do.


**Time...** - A Representation
------------------------------

```elixir
{{year, month, day}, {hour, minute, second}, descriptor}
```

The ```descriptor``` is a string that represents

**And...** - Some features
--------------------------

Assuming the date is 17:16:20 on Saturday, 23 November 1963 (in GMT). (This may in fact be an invalid date for many computers, but it's just an example. =/ )

```elixir
right_now = Tardis.now()

# => {{1963, 11, 23}, {17, 16, 20.000}, "GMT"}
```

**Relative...** - ...ly Easy
----------------------------

```elixir
import Tardis

right_now = now()
# => {{1963, 11, 23}, {17, 16, 20.000}, "GMT"}

1 |> seconds |> ago
# => {{1963, 11, 23}, {17, 16, 19.000}, "GMT"}

```

> "LOL. '```elixir 1 |> seconds |> ago```'. A plural 'seconds' for a singular '1'. Amateurish."
-Some Punk

> "Your block quotes don't scare me."
-Jason

```elixir
1 |> second |> ago
# => {}
```

**Dimension...** ...ally Rich
-----------------------------

```elixir
two_weeks = 2 |> weeks
# => {{0, 0, 14}, {0, 0, 0}, "delta"}

two_weeks |> ago
# => {{1963, 11, 9}, {17, 16, 20.000}, "GMT"}
```

Oh look two weeks gives 14 days and a descriptor of "delta".

And look at that! the ```elixir ago``` function does some sort of subtraction from the current time.

**In...** ...touch with your feelings.
--------------------------------------

Aren't you happier now that you've see some easy examples?


**Space!!!** ...is saved in your source code
--------------------------------------------

TARDIS can help turn your 1.0kb source code files into 1.5kb of dependency files!
