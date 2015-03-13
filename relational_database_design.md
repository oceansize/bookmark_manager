# Relational Database Design

When using a Database, one of the easiest ways to gain access to a world of hurt is to rush in without understanding how the information in your database relates to each other. To know how each piece of information in your database connects to the next, is to know a happy life filled with restful sleep and bountiful harvests. Or at the very least, a future filled with a lot less debugging.

Once you have gained this knowledge, you will then be in a position to design databases that have logical layouts which will allow for a robust system that can easily be maintained and extended.

### Spreading the Joy

A really good way to start thinking about databases is if you concentrate on tables. And if you can compare a table with a spreadsheet, you are certainly on your way. Regard the following:

band          | vocals                         | guitar                       | bass            | drums
--------------|--------------------------------|------------------------------|-----------------|----------
Black Sabbath | Ozzy Osbourne, Ronny James Dio | Tony Iommi                   | Geezer Butler   | Bill Ward
Led Zeppelin  | Robert Plant                   | Jimmy Page                   | John Paul Jones | John Bonham
Aerosmith     | Steven Tyler                   | Joe Perry, Brad Whitford     | Tom Hamilton    | Joey Kramer
Cream         | Jack Bruce, Eric Clapton       | Eric Clapton                 | Jack Bruce      | Ginger Baker
Guns N' Roses | Axl Rose                       | Slash, Izzy Stradlin         | Duff McKagan    | Steven Adler

Here we have a table, and each row represents a band. The lineup for a band is pretty important to their sound (not to mention Tony Iommi might not know any Guns N' Roses songs), to mix them up would be a pretty bad move, right? So with that in mind, it's imperative that associations between values remain in place. In other words, values stay in the rows they are initially assigned to.

Imagine we wanted to sort our table by band name. It should be completely reasonable to expect that as the order of band names changes (to say, adhere to A-Z using first letter of the band name), the related band members also move in position to stay in the same row as their band name. This integrity of information is key to the usefulness of databases.

#### :speak_no_evil: TechSpeak :speak_no_evil:

**Rows** can also be called **Records** or **Tuples**

#### Band Breakup

You may have noticed that there are some anomalies in the database. Namely Aerosmith and Guns N' Roses have two guitarists, while Cream and Black Sabbath have had two notable vocalists to their name.

With the example of Black Sabbath particularly, one vocalist replaced the other, which raised a good point - perhaps we want our database to be capable of recording changes in the lineup over time. For this, we could insert extra tables:

band          | vocals_1      | vocals_2        | guitar_1    | guitar_2      | bass            | drums
--------------|---------------|-----------------|-----------------------------|-----------------|----------
Black Sabbath | Ozzy Osbourne | Ronny James Dio | Tony Iommi  | ~             | Geezer Butler   | Bill Ward
Led Zeppelin  | Robert Plant  | ~               | Jimmy Page  | ~             | John Paul Jones | John Bonham
Aerosmith     | Steven Tyler  | ~               | Joe Perry   | Brad Whitford | Tom Hamilton    | Joey Kramer
Cream         | Jack Bruce    | Eric Clapton    | Eric Clapton| ~             | Jack Bruce      | Ginger Baker
Guns N' Roses | Axl Rose      | ~               | Slash       | Izzy Stradlin | Duff McKagan    | Steven Adler

But this doesn't help us see who is currently in the band. What we ideally need is another field (or column) that shows wether a musician is currently in the band. But how do we do that elegantly?

band          | vocals_1      | vocals_1_in_band | vocals_2        | vocals_2_in_band
--------------|---------------|------------------|-----------------|------------------
Black Sabbath | Ozzy Osbourne | yes              | Ronny James Dio | no
Led Zeppelin  | Robert Plant  | yes              | ~               | ~
Aerosmith     | Steven Tyler  | yes              | ~               | ~
Cream         | Jack Bruce    | yes              | Eric Clapton    | yes
Guns N' Roses | Axl Rose      | yes              | ~               | ~

This is not the best idea. See how


### Database Mini Glossary

Although this list is in no way exhaustive*, here are some terms that are very useful to learn when working with Databases:

**Column** - alternative name for _field_.

**Database** - a collection of data stored in an organized way so that it can be searched and retrieved later

**Field** - a set of data grouped by some relevant property

**Record** - a single database entry. Comprises of one or more values separated by columns (also known as fields).

**Row** - alternative name for _record_.

**Table** - a collection of data related to each other. Can be thought of as a kind of spreadsheet, made up of one or more rows and columns.

**Tuple** - alternative name for _record_.


*As with all course documentation, you should feel free to make pull requests with any changes you think should be made - including adding material!
