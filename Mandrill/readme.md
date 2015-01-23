This is a widget that will get the number of mandrill mail sent today and 
the number sent yesterday is stored. The first iteration will not show the previous days
mail count.

This widget requires a Mandrill API key. It should be put in mandrill.rb in place of 
'YOUR_API_KEY'

To display it on your dashboard use the following code

<li data-row="1" data-col="1" data-sizex="1" data-sizey="1">
  <div data-id="mandrilltodaysent" data-view="Number" data-title="Emails Sent Today"></div>
</li>

The Number widget provided by Dashing is used to display the widget.

