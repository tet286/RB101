    
def detect_winner(brd)   
  if brd[line[0]] == PLAYER_MARKER &&
     brd[line[1]] == PLAYER_MARKER &&
     brd[line[2]] == PLAYER_MARKER
    return 'Player'
  elsif brd[line[0]] == COMPUTER_MARKER &&
        brd[line[1]] == COMPUTER_MARKER &&
        brd[line[2]] == COMPUTER_MARKER
    return 'Computer'
  end
end

