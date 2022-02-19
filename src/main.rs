use teloxide::prelude2::*;

#[tokio::main]
async fn main() {
    teloxide::enable_logging!();
    log::info!("Starting dices_bot...");

    let bot_token = std::env::var("TELEGRAM_BOT_TOKEN").unwrap();
    let bot = Bot::new(bot_token).auto_send();

    teloxide::repls2::repl(bot, |message: Message, bot: AutoSend<Bot>| async move {
        bot.send_dice(message.chat.id).await?;
        respond(())
    })
    .await;
}