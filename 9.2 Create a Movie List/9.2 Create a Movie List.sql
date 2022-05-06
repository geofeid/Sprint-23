



db.createCollection(movies, { movies_title: string,
                                  movie_minutes: number,
                                  movie_author: string,
                                  movie_year: number})


    db.movies.insertMany({
        movies_title: "A Space Odyssey",
        movie_minutes: 141,
        movie_author: "Stanley Kubrick",
        movie_year: 2014
    },
    {
        movies_title: "The Godfather",
        movie_minutes: 175,
        movie_author: "Francis Ford Coppola",
        movie_year: 1972
    },
    {
        movies_title: "Citizen Kane",
        movie_minutes: 119,
        movie_author: "Orson Welles",
        movie_year: 1941
    },
    {
        movies_title: "Raiders of the Lost Ark",
        movie_minutes: 115,
        movie_author: "Steven Spielberg",
        movie_year: 1981
    },
    {
        movies_title: "Jeanne Dielman, 23 Quai du Commerce, 1080 Bruxelles",
        movie_minutes: 201,
        movie_author: "Chantal Anne Akerman",
        movie_year: 1975
    },
    {
        movies_title: "La Dolce Vita",
        movie_minutes: 174,
        movie_author: "unknown",
        movie_year: 1960
    },
    {
        movies_title: "Seven Samurai",
        movie_minutes: 200,
        movie_author: "Akira Kurosawa",
        movie_year: 1954
    },
    {
        movies_title: "In the Mood for Love",
        movie_minutes: 97,
        movie_author: "Wong Kar-wai",
        movie_year: 2000
    },
    {
        movies_title: "There Will Be Blood",
        movie_minutes: 200,
        movie_author: "Paul Thomas Anderson",
        movie_year: 2007
    },
    {
        movies_title: "Time Out says",
        movie_minutes: 102,
        movie_author: "Stanley Donen, Gene Kelly",
        movie_year: 1952
    })

    db.movies.find( { "movie_title": "Time Out says" } )


    db.movies.update(
    {"movie_title" : "La Dolce Vita"},
    {$set: { "movie_title" : "GoodFellas",
             "movie_author": "Martin Scorsese",
             "movie_minnutes": 145,
             "movie_year": 1990,}});



    db.movies.deleteOne( { "movie_title": "There Will Be Blood" })

    db.movies.updateMany({}, {$set:{"movie_price": number}})

-- 9. Add prices to all movies.
    -- You can repeat this 10 times or use updateMany method.

    db.movies.updateMany({"movie_title": "A Space Odyssey"},
                     {$set:{"movie_price": 10}})


    db.movies.updateMany({"movie_title": "The GodFather"},
                     {$set:{"movie_price": 10}})


    db.movies.updateMany({"movie_title": "Citizen Kane"},
                     {$set:{"movie_price": 10}})


    db.movies.updateMany({"movie_title": "Jeanne Dielman, 23, Quai du Commerce, 1080 Bruxelles"},
                     {$set:{"movie_price": 10}})

 db.movies.updateMany({"movie_title": "Raiders of the Lost Ark"},
                     {$set:{"movie_price": 10}})

db.movies.updateMany({"movie_title": "Goodfellas"},
                     {$set:{"movie_price": 10}})

db.movies.updateMany({"movie_title": "Seven Samurai"},
                     {$set:{"movie_price": 10}})

db.movies.updateMany({"movie_title": "In the Mood for Love"},
                     {$set:{"movie_price": 10}})

db.movies.updateMany({"movie_title": "There Will Be Blood"},
                     {$set:{"movie_price": 10}})

db.movies.updateMany({"movie_title": "Singin’ in the Rain"},
                     {$set:{"movie_price": 10}})



            db.movies.find({movie_price: {$lt:5}})

            db.movies.drop()
     
            db.dropDatabase()
