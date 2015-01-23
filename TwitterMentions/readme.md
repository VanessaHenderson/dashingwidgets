Another Twitter widget is rolling your way! This widget will scroll through the most recent tweets
that mention the account associated with the keys!
To get this widget up and running you only need to add your keys into this area of twitter.rb:

  config.consumer_key = 'YOUR_CONSUMER_KEY'
  config.consumer_secret = 'YOUR_CONSUMER_SECRET_KEY'
  config.access_token = 'YOUR_ACCESS_TOKEN'
  config.access_token_secret = 'YOUR_ACCESS_TOKEN_SECRET'

  If you haven't got your keys yet, head over to https://dev.twitter.com/docs/auth/tokens-devtwittercom
  and grab them there.

  To display the mentions, the comments widget provided with dashing was used. 
  This is what you need in your dashboard .erb file to make them work. The widget also inserts
  the twitter bird logo behind the widget for astetics.

  <li data-row="1" data-col="1" data-sizex="2" data-sizey="1">
      <div data-id="twitter_mentions" data-view="Comments" style="background-color:#00afd7;" data-moreinfo="Tweets @sourceclear" ></div>
      <i class="icon-twitter icon-background"></i>
  </li>
