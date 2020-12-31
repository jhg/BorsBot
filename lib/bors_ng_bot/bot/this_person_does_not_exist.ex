defmodule BorsNgBot.Bot.ThisPersonDoesNotExist do
  @moduledoc """
  Reply with a photo from thispersondoesnotexist.com website.
  """
  import ExGram.Dsl, only: [answer: 3]

  def handle(msg, context, bot) do
    options = [
      reply_to_message_id: msg.message_id,
      disable_notification: true,
      show_alert: false
    ]
    ExGram.send_chat_action(msg.chat.id, "upload_photo", bot: bot)
    result = Tesla.get("https://thispersondoesnotexist.com/image", query: [
    ])
    case result do
      {:ok, response} -> ExGram.send_photo(msg.chat.id, {:file_content, response.body, "thispersondoesnotexist.jpg"}, options ++ [
          bot: bot,
          caption: "thispersondoesnotexist.com",
        ])
      _ -> answer(context, "I can not get the photo now, sorry", options)
    end
  end
end
