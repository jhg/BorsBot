defmodule BorsNgBot.Bot do
  @bot :BorsNgBot

  use ExGram.Bot,
    name: @bot,
    setup_commands: true

  command("inspect", description: "Print info about a message")
  command("thispersondoesnotexist", description: "Get a photo from thispersondoesnotexist.com")

  middleware(ExGram.Middleware.IgnoreUsername)

  def bot(), do: @bot

  def handle({:command, :thispersondoesnotexist, msg}, context) do
    BorsNgBot.Bot.ThisPersonDoesNotExist.handle(msg, context, @bot)
  end

  def handle({:command, :inspect, msg}, context) do
    BorsNgBot.Bot.InspectMsg.handle(msg, context, @bot)
  end
end
