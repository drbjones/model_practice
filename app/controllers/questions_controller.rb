class QuestionsController < ApplicationController
  def question_1
    # What is the most recent movie on the list that the second actor appeared in?

    # Your Ruby goes here.

    @most_recent_movie_for_second_actor = Actor.second.movies.order("year DESC").first.title
  end

  def question_2
    # Who directed the longest movie on the list?

    # Your Ruby goes here.
    @director_of_longest_movie = Movie.order( "duration DESC").first.director.name
    @longest_movie = Movie.order( "duration DESC").first.title
    @longest_movie_duration = Movie.order( "duration DESC").first.duration
  end

  def question_3
    # Which director has the most movies on the list?

    # Your Ruby goes here.

    movie_counts = []

    Director.all.each do |the_director|
      number_of_movies_directed_by_the_director = the_director.movies.count

      movie_counts.push(number_of_movies_directed_by_the_director)
    end

    @most_number_of_movies_by_a_single_director = movie_counts.max

    Director.all.each do |the_director|
      if the_director.movies.count == movie_counts.max
        @director_with_the_most_movies = the_director.name
      end
    end
  end

  def question_4
    # Which actor has been in the most movies on the list?

    # Your Ruby goes here.
    movie_counts = []

    Actor.all.each do |the_actor|
      number_of_movies_with_the_actor = the_actor.movies.count

      movie_counts.push(number_of_movies_with_the_actor)
    end

    @most_number_of_movies_by_a_single_actor = movie_counts.max

    Actor.all.each do |the_actor|
      if the_actor.movies.count == movie_counts.max
        @actor_with_the_most_movies = the_actor.name
      end
    end
    # @actor_with_the_most_movies = ???
  end

  def question_5
    # This one is hard. Work on it after all your other review is complete.

    # Which actor/director pair has the most movies on the list?

    # Your Ruby goes here.

    # @actor = ???
    # @director = ???
    # @movies_together = ???
  end
end
