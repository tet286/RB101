# twenty_one_v01.rb - initial version
# player == user, indicate if "hit" or "stay"
# dealer == computer

loop do
  loop do
    cards = [2, 3, 4, 5, 6, 7, 8, 9, 10, :J, :Q, :K, :A]

    deck = { :hearts   => cards.dup,
            :diamonds => cards.dup,
            :clubs    => cards.dup,
            :spades   => cards.dup }

    def deal_card(deck, player_cards)
      suit = deck.keys.sample
      cards = deck[suit]
      player_cards << cards.shuffle!.pop
    end

    def score(cards)
      sum = 0
      cards.each do |card|
        case card
        when :A then sum += 11
        when :K  then sum += 10
        when :Q then sum += 10
        when :J  then sum += 10
        else sum += card
        end
      end

      # correct for Ace cards
      cards.select{|card| card == :A}.count.times do
        sum -= 10 if sum > 21
      end

      sum
    end

    def busted?(score)
      score > 21
    end

    # Player cards: can see both
    # Calculate player cards score

    player_cards = []
    dealer_cards = []

    2.times do
      deal_card(deck, player_cards)
      deal_card(deck, dealer_cards)
    end

    puts "Your cards are #{player_cards[0].to_s} and #{player_cards[1].to_s}"
    puts "One of your dealer cards is #{dealer_cards[0].to_s}"
    player_score = score(player_cards)
    puts "Your current card score is #{player_score}"

    # player/ user turn:
    answer = nil
    loop do
      puts "hit or stay?"
      answer = gets.chomp
      break if answer == 'stay'
      deal_card(deck, player_cards)
      player_score = score(player_cards)
      puts "Your current card score is #{player_score}"
      break if busted?(player_score)
    end

    if busted?(player_score)
      puts "You're busted! Dealer wins!"
      break
    else
      puts "You chose to stay!"
    end

    # Dealer turn: card has to be >= 17
    puts "Dealer's turn"
    dealer_score = score(dealer_cards)
    puts "Dealer's current card score is #{dealer_score}"
    loop do
      break if dealer_score >= 17
      deal_card(deck, dealer_cards)
      dealer_score = score(dealer_cards)
      puts "Dealer's current card score is #{dealer_score}"
      break if busted?(dealer_score)
    end

    if busted?(dealer_score)
      puts "Dealer's busted! Player wins!"
      # play again loop?
    else
      if player_score > dealer_score
        puts "Player won!"
      elsif player_score == dealer_score
        puts "It's a tie!"
      else
        puts "Dealer won!"
      end
    end
    break
  end
  
  puts "Play again? Y/N"
  answer = gets.chomp
  break if answer.downcase.start_with?('n')
end
