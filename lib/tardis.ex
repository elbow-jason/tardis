defmodule Tardis do
  alias :calendar, as: Cal

  def now do
    Cal.universal_time()
  end

end
