defmodule Cache.Runtime.Application do
  def start(_type, _args) do
    Cache.Runtime.Server.start_link()
  end
end
