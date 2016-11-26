Cooking bot challenge interview

A cooking bot used to get recipese from a website, using it's restful api structure.

Use of telegram-bot-ruby gem (https://github.com/atipugin/telegram-bot-ruby), to connect and run bot.

Attempted to use Watson, an AI to handle chatbot conversations. Created the conversation dialogue and tested successfully, but could not take any further during the interview as the Watson service crashed during the interview.

Thus moved on to using ruby version. At first, attempted to use the Kraft Heinz recipe api, but due to it's complexities in accessing the recipes (see kraft_api_service.rb) we moved on to using Big Oven (http://www.bigoven.com/). Unfortunately, could not use their api (no free service), but had a good RESTful uri structure that made it easy to create links from the user inputs.

The aim was to get somethign working, although very basic and issues with user input being a list of non ingredient words will create a useless url.

### Future

To use Botmaster instead and get this working (I had trouble getting this connected with Telegram at first).

Get Watson working. So that I can use the conversational abilities to make the bot more human like.

Connect Botmaster to Watson.
