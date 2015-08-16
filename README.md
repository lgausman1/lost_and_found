# Lost and Found App
## Find.it: San Francisco's Premier Lost and Found Resource

View the project: https://safe-shelf-2769.herokuapp.com/

Find.it is a simple app that allows users to create a profile and post an 'ad' for a lost or found item. Each post maps the location of the lost / found item on a Google maps interface.

## Technologies Used

Ruby, Rails, Postgres, JQuery, JavaScript, Bootstrap, AJAX

## User Stories

Users create a profile to create a post to advertise a lost or found item. If you've lost an item, you can view the post and connect with the person who posted the item via email. If you've found an item, you can post information about the item and help return it to its owner.

## Future Iterations

I wouldn't deploy this app into production without implementing some type of email cloaking. That is outside the scope of this assignment. 

Better authentication for user input. Right now, geocoding is modified to specify San Francisco, CA. I would add a zip code param to the create post form to evaluate if the zip code is in SF, and to send an error message to the user if it is not.
