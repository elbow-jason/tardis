defmodule Tardis.Delta do
  alias :calendar, as: Cal
  alias Tardis.Conversion, as: Convert

  @day_zero {0,1,1}

  def ago({date, time}) do
    difference(Cal.universal_time(), {date, time})
  end

  def from_now({date, time}) do
    sum(Cal.universal_time(), {date, time})
  end

  def in_the_future({date, time}) do
    from_now({date, time})
  end

  defp sum(t1, t2) do
    summed = Convert.to_seconds(t1) + Convert.to_seconds(t2)
    Convert.seconds_to_datetime(summed)
  end

  defp difference(t1, t2) do
    diff = Convert.to_seconds(t1) - Convert.to_seconds(t2)
    Convert.seconds_to_datetime(diff)
  end

end
