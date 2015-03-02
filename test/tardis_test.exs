defmodule TardisTest do
  use ExUnit.Case

  test "Tardis.now returns 3-item tuple with GMT descriptor" do
    {{yr, mon, day}, {hr, min, sec}, "GMT"} = Tardis.now
    assert is_integer(yr)
    assert is_integer(mon)
    assert is_integer(day)
    assert is_integer(hr)
    assert is_integer(min)
    assert is_integer(sec)
  end

end
