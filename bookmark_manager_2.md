# Bookmark Manager - V2

Welcome to Bookmark Manager.

### Learning Objectives:

* Use a Database (PostgreSQL)
* Use an ORM (DataMapper)
* Implement the MVC pattern
* Improve your Front End skills
* Test with Capybara
* Build a _modular_ Sinatra app
* Basic User Interface design
* User Authentication & Account Creation
* Discover metadata, such as Tagging

### What is a Bookmark?

Essentially, we are talking about links here. For example, we could just simply have a page that contained data such as:

* [AtoZ CSS](http://www.atozcss.com/)
* [CoDrops CSS Reference](http://tympanus.net/codrops/css_reference/)
* [CSS Tricks](https://css-tricks.com/)
* [Learn CSS Layout](http://learnlayout.com/)

While that's a mighty list of CSS bookmarks, we can go MUCH further. How about allowing different users to create their own accounts, and add links that interest them? We could even allow them to assign metadata such as [tags](http://en.wikipedia.org/wiki/Tag_%28metadata%29) to allow our users to categorize their bookmarks for easy sorting - a very popular technique to improve [UX](http://en.wikipedia.org/wiki/User_experience_design).

### What might our Users want?

One of the best ways to begin designing an app, is to walk through the journey of actually using it. Put yourself in the position of someone who might need a Bookmark Manager:

* What are the primary requirements that must be satisfied?
  1. Must be able to save a link
  2. Must be able to retrieve and display that link


* What else is a user likely to want?
  1. The ability to associate links with particular users
  2. To somehow categorize the links
  3. Secure accounts for each user
  4. To see when the link was posted, and by whom

While this is by no means an exhaustive list of features, it's certainly enough to be getting on with. So what do we do now?

### MVP (Minimum Viable Product)

When starting a project, it's nearly always a good idea to first identify what your [MVP](http://en.wikipedia.org/wiki/Minimum_viable_product) is, and aim to get there before allowing the scope of your project to [creep out of control.](http://en.wikipedia.org/wiki/Feature_creep) A few paragraphs ago, I stated that the __primary requirements__ of this product are to provide the ability to **save a link**, and **retrieve (& display)** it.

Armed with this information, it's probably quite a good idea to think about how your Users will be able to interact with these features. A great way to do this, is to create a visual representation of your product, which should help you get a solid idea of what it is you are going to be building.

There are many ways in which you can sketch a basic UI (User Interface). I have used a mockup tool called [Balsamiq](https://balsamiq.com/) and created a REALLY simple interface which literally does the bare minumum, in order to satisfy our minimum requirements and get us to MVP stage:

![Image](/images/bmm-mvp.png "Bookmark Manager - MVP")

Although it's hardly likely to be bought by Facebook just yet, you can already see clearly what the product does, just from one simple piece of UI design. Also notice how even at this early stage, I can be making assumptions about the interface which will affect the functionality...

### The Missing Link (sections)

While putting together my mockup, I made a personal design decision to show the user to omit the `http://` part when entering the link. My intention here is to reduce the level of thought needed for the User when entering links. Over time (and various different systems), conventions for displaying [URLs](http://en.wikipedia.org/wiki/Uniform_resource_locator) change quite a bit. It is not uncommon to see a link displayed in the following formats:

* [http://www.makersacademy.com](http://makersacademy.com)
* [http://makersacademy.com](http://makersacademy.com)
* [www.makersacademy.com](http://makersacademy.com)
* [makersacademy.com](http://makersacademy.com)

Now this might seem like a small thing to consider, but it's actually an important consideration:

* What are the restrictions on the data we accept?
* How do we communicate that to a User?

Do we need to make our interface more instructive, should our application be able to accept all possible variations of data and process it for consistency on the server-side, or both?

The right answer to these questions is somewhat subjective, and is only likely to present itself in time, after build iterations, User testing etc. Of course, it is possible to have an instinct that for example, we should make the input of data as robust as possible and prevent the user from needing to think at all - but it's also possible that this instinct could be wrong. Either way, perhaps it's more useful at this point to build our product to a basic stage - then we can perhaps implement variations for [A/B testing...](http://en.wikipedia.org/wiki/A/B_testing)

### ONWARD TO MVP!!!

Now it's time to start building the basic version of our app. The whole point of our product is to store data (namely links) - so let's explore one of the most common ways of storing data in software engineering: [THE DATABASE.](http://en.wikipedia.org/wiki/Database)

[Click here to continue to the next section of our project: **Relational Database Design**]()
