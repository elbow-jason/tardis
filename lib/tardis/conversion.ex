defmodule Tardis.Conversion do
  alias :calendar, as: Cal

  @day_zero {0,1,1}

  def to_days({date, time}) do
    to_days(date)
  end
  def to_days({year, month, day}) do
    Cal.date_to_gregorian_days(year, month, day)
  end

  def to_seconds({date, time}) do
    Cal.datetime_to_gregorian_seconds({date, time})
  end
  def to_seconds({hr, min, sec}) do
    to_seconds({@day_zero, {hr, min, sec}})
  end

  def days_to_date(days) do
    Cal.gregorian_days_to_date(days)
  end

  def seconds_to_datetime(seconds) do
    Cal.gregorian_seconds_to_datetime(seconds)
  end

end
