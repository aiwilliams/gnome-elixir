defmodule Cache do
  alias Cache.Runtime.Server

  defdelegate load(key, calc), to: Server
end
