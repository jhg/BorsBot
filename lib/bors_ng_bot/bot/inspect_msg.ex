defmodule BorsNgBot.Bot.InspectMsg do
  @moduledoc """
  Reply with the properties of that message, or the mensaje requested
  replying to that message with the command and "that" text.
  """
  import ExGram.Dsl, only: [answer: 3]

  # Bot param is keep even not used to make all different modules to handle messages uniform
  def handle(%{reply_to_message: msg, message_id: message_id, text: "that"}, context, _bot) do
    answer(context, "#{inspect(msg, pretty: true)}", [
      reply_to_message_id: message_id,
      disable_notification: true,
      show_alert: false
    ])
  end
  def handle(msg, context, _bot) do
    answer(context, "#{inspect(msg, pretty: true)}", [
      reply_to_message_id: msg.message_id,
      disable_notification: true,
      show_alert: false
    ])
  end
end
