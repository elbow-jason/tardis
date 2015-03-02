TARDIS
======

You already know what the TARDIS is. Let's see what it can do.


**Time...** ...A Representation
------------------------------

When using TARDIS dates are represented by a 2-item tuple (just like erlang):

```elixir
{{year, month, day}, {hour, minute, second}}
```

**And...** ...Some features
--------------------------

Assuming the date is 17:16:20 on Saturday, 23 November 1963 (in GMT). (This may in fact be an invalid date for many computers, but it's just an example. =/ )

```elixir
right_now = Tardis.now()

# => {{1963, 11, 23}, {17, 16, 20}}
```

**Relative...** ...ly Easy
----------------------------

```elixir
import Tardis

right_now = now()
# => {{1963, 11, 23}, {17, 16, 20}}

1 |> seconds |> ago
# => {{1963, 11, 23}, {17, 16, 19}}

```

> "LOL. '```elixir 1 |> seconds |> ago```'. A plural 'seconds' for a singular '1'. Amateurish."

-Some Punk

> "Your block quotes don't scare me."

-Jason

```elixir
1 |> second |> ago
# => {{1963, 11, 23}, {17, 16, 19}}
```

**Dimension...** ...ally Rich
-----------------------------

```elixir
two_weeks = 2 |> weeks
# => {{0, 1, 15}, {0, 0, 0}}

two_weeks |> ago
# => {{1963, 11, 9}, {17, 16, 20}}
```

Oh look two weeks gives 15 days and 1 month... What the...

Well, kiddo, in erlang's calendar (a Gregorian calendar) the first day was ```{0,1,1}``` which means that any date delta must be the date ```{0,1,1}``` applied to the intuitive magic number of units of time.

And look at that! the ```ago``` function does some sort of subtraction from the current time.

**In...** ...touch with your feelings.
--------------------------------------

Aren't you happier now that you've see some easy examples?


**Space!!!** ...is saved in your source code
--------------------------------------------

TARDIS can help turn your 1.0kb source code files into 1.0 kb of source files and 1.5kb of dependency files!
