defmodule Tardis do

  def now do
    {{year, month, day}, {hours, minutes, seconds}} = :calendar.universal_time()
    {{year, month, day}, {hours, minutes, seconds}, "GMT"}
  end


end
