def eighties_b_movies
  # List all the movies from 1980-1989 with scores falling between
  # 3 and 5 (inclusive).
  # Show the id, title, year, and score.
  Movie.where(yr: (1980..1989), score: (3..5)).select(:id, :title, :yr, :score)
end

def bad_years
  # List the years in which a movie with a rating above 8 was not released.
 
  # Movie.where("yr NOT IN (?)", Movie.where('score > 8').pluck(:yr)).distinct.pluck(:yr)
  Movie.where("yr NOT IN (?)", Movie.where('score > 8').select(:yr)).distinct.pluck(:yr)

  
end

def cast_list(title)
  # List all the actors for a particular movie, given the title.
  # Sort the results by starring order (ord). Show the actor id and name.
  Actor.joins(:castings).where('castings.movie_id IN (?)', Movie.where(title: title).select(:id)).select(:id, :name).order('castings.ord ASC')
end

def vanity_projects
  # List the title of all movies in which the director also appeared
  # as the starring actor.
  # Show the movie id and title and director's name.

  # Note: Directors appear in the 'actors' table.

end

def most_supportive
  # Find the two actors with the largest number of non-starring roles.
  # Show each actor's id, name and number of supporting roles.

end
