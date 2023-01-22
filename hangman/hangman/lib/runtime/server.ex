defmodule Hangman.Runtime.Server do
  @type t :: pid()

  alias Hangman.Impl.Game

  use GenServer

  @impl true
  def init(_) do
    {:ok, Game.new_game()}
  end

  @impl true
  def handle_call({:make_move, guess}, _from, game) do
    {updated_game, tally} = Game.make_move(game, guess)
    {:reply, tally, updated_game}
  end

  @impl true
  def handle_call({:tally}, _from, game) do
    {:reply, Game.tally(game), game}
  end
end
