class WrongNumberOfPlayersError <  StandardError ; end
class NoSuchStrategyError <  StandardError ; end

def rps_game_winner(game)
  raise WrongNumberOfPlayersError unless game.length == 2
  raise NoSuchStrategyError unless (game[0][1] =~ /[psr]/i and game[1][1] =~ /[psr]/i)
  strategies = %w(RR PP SS PR SP RS)
  strategies.include?(game[0][1].upcase + game[1][1].upcase) ? game[0] : game[1]
end

def rps_tournament_winner(tournament)
  if tournament[0][0].is_a?(String)
    rps_game_winner(tournament)
  else
    rps_game_winner([rps_tournament_winner(tournament[0]), rps_tournament_winner(tournament[1])])
  end
end
