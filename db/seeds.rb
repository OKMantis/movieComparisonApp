Comparison.destroy_all
Movie.destroy_all
User.destroy_all

christopher = User.create(name: "Christopher Nolan")
quentin = User.create(name: "Quentin Tarantino")

dark_night = Movie.create(title: "The Dark Knight", year: 2008)
pulp_fiction = Movie.create(title: "Pulp Fiction", year: 1994)
citizen_kane = Movie.create(title: "Citizen Kane", year: 1941)

Comparison.create(user_id: christopher.id, superior_movie_id: dark_night.id, inferior_movie_id: citizen_kane.id)
Comparison.create(user_id: christopher.id, superior_movie_id: citizen_kane.id, inferior_movie_id: pulp_fiction.id)
Comparison.create(user_id: quentin.id, superior_movie_id: citizen_kane.id, inferior_movie_id: dark_night.id)
Comparison.create(user_id: quentin.id, superior_movie_id: pulp_fiction.id, inferior_movie_id: citizen_kane.id)
