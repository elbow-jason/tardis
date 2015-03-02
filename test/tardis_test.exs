defmodule TardisTest do
  use ExUnit.Case

  test "Tardis.now returns 3-item tuple with GMT descriptor" do
    {{yr, mon, day}, {hr, min, sec}} = Tardis.now
    assert is_integer(yr)
    assert is_integer(mon)
    assert is_integer(day)
    assert is_integer(hr)
    assert is_integer(min)
    assert is_integer(sec)
  end

end


defmodule TardisConversionTest do
  use ExUnit.Case
  import Tardis.Conversion

  test "to_days works for all tuple patterns" do
    assert to_days({0,  1,  1}) == 0
    assert to_days({0,  1,  2}) == 1
    assert to_days({1,  1,  1}) == 366
    assert to_days({0, 12, 31}) == 365

    assert to_days({{   0,  1,  3}, {12, 34, 55}}) == 2
    assert to_days({{   0,  1,  4}, {12, 34, 55}}) == 3
    assert to_days({{1963, 11, 23}, {17, 16, 19}}) == 717297
  end

  test "to_seconds works for times and datetimes" do
    assert to_seconds({0, 0, 0}) == 0
    assert to_seconds({0, 0, 1}) == 1
    assert to_seconds({{ 2000, 1, 1}, {0, 0, 0}}) == 63113904000
  end


end
