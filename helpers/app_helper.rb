# Helpers for main sinatra web application
module AppHelpers
  def cinema(theater_id)
    CinemaInfo.new(theater_id)
  end

  def cinema_names(theater_id)
    cinema(theater_id).movie_names
  rescue => e
    logger.error "Fail: #{e}"
    halt 400
  end

  def cinema_table(theater_id)
    cinema(theater_id).movie_table
  rescue => e
    logger.error "Fail: #{e}"
    halt 400
  end

  def film_times(theater_id, film_name)
    cinema(theater_id).film_times(film_name)
  rescue => e
    logger.error "Fail: #{e}"
    halt 400
  end

  def films_after_time(theater_id, date_time)
    cinema(theater_id).films_after_time(date_time)
  rescue => e
    logger.error "Fail: #{e}"
    halt 400
  end
  # def check_movie_info(movie_names, times)
  #   @check_info = {}
  #   movie_names.map do |movie_name|
  #     found = MovieInfo.new(movie_name).times
  #     [movie_name, times.select {|time| !found.include? time}]
  #   end.to_h
  # rescue
  #   halt 404
  # end
end
