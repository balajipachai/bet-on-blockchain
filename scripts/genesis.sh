#!/bin/bash

bet_types=(
    'Single'
    'Double'
    'Treble'
    'Accumulator'
    'Trixie'
    'Patent'
    'Yankee'
    'Lucky15'
    'Canadian'
    'Lucky31'
    'SuperYankee'
    'Heinz'
    'Lucky63'
    'SuperHeinz'
    'Goliath'
    'Alphabet'
    'SingleStakesAbout'
    'DoubleStakesAbout'
    'RoundRobin'
    'Flag'
    'SuperFlag'
    'SuperHeinzFlag'
    'GoliathFlag'
    'UnionJack'
    'Forecast'
    'EachWay'
    'ReverseForecast'
    'MatchBet'
    'Placepot'
    'Jackpot'
)

bet_types_comments=(
    'Arguably the most common betting type. A straight win bet, placed on a single event.'
    'A single bet on two outcomes in different events. Both selections must win to guarantee a return.'
    'A single bet on three outcomes in different events. All three selections must win to guarantee a return.'
    'An accumulator comprises of four or more selections in one bet. All of the selections must win to guarantee a return.'
    'A bet comprising three selections and four bets – three doubles and a treble. A minimum of two selections must win to guarantee a return. For example, a £2.50 Trixie would cost £10. A £2.50 each-way Trixie would cost £20.'
    'A bet involving three selections and seven bets – three singles, three doubles and one treble. It is the equivalent of a Trixie but with the addition of three singles. For example, a £2.50 Patent would cost £17.50.'
    'A bet consisting of four selections and 11 bets – six doubles, four trebles and a fourfold. A minimum of two selections must win to guarantee you a return. For example, a £2 Yankee would cost £22.'
    'A popular betting type among punters, it consists of four selections and 15 bets (hence the name) – four singles, six doubles, four trebles and a fourfold. Equivalent to a Yankee but with four singles, and only one selection must win to guarantee you a return. For example, a £2 Lucky 15 would cost £30.'
    'Also known as a Super Yankee, a Canadian is a bet on five selections consisting of 26 bets – ten doubles, ten trebles, five fourfold’s and a five-fold accumulator.'
    'A wager consisting of five selections and 31 bets – five singles, ten doubles, ten trebles, five fourfolds, and one fivefold. Only one selection must win to guarantee you a return. For example, a £1 Lucky 31 would cost £31.'
    'Also known as a Canadian, a Super Yankee is a bet on five selections consisting of 26 bets – ten doubles, ten trebles, five fourfolds and a fivefold accumulator.'
    'The Heinz bet is a six-selection bet consisting of 57 bets: 15 doubles, 20 trebles, 15 fourfolds, six fivefolds and a one sixfold accumulator. Aptly named after the 57 ‘varieties’ company slogan from Heinz, this 57 bet wager is a unique bet that combines every permutation of the 6 selections into one single wager.'
    'A Lucky 63 is a bet featuring six selections and 63 bets, including: six singles, 15 doubles, 20 trebles, 15 fourfolds, six fivefolds and one sixfold.'
    'The Super Heinz is a bet on seven selections taking part in various events consisting of 21 doubles, 35 trebles, 35 fourfolds, 21 fivefolds, seven sixfolds, and a sevenfold accumulator which totals a huge 120 bets. Two selections must win to ensure any returns.'
    'A Goliath is a bet on eight selections taking part in various events consisting of 28 doubles, 56 trebles, 70 fourfolds, 56 fivefolds, 28 sixfolds, eight sevenfolds and an eightfold accumulator totalling 247 bets. Two selections must win to ensure any returns.'
    'This is a bet on six selections composed of 26 bets: two patents (14 bets), one yankee (11 bets) and a sixfold accumulator (one bet).'
    'A Single Stakes About is an Any To Come bet consisting of two selections from events, these are then compiled to produce two bets derived from two singles. Any return on each single (up to the original stake amount) is used to fund a further single on the other selection.'
    'A Double Stakes About is an Any To Come bet consisting of two selections partaking in different events, which are compiled to produce two bets derived from two singles. Any return on each single, up to double the original stake amount, is used to fund a another single on the other selection.'
    'The Round Robin is a three selection wager compiled of ten bets: three doubles, one treble and three up-and-down single stakes about pairs.'
    'The ‘Flag’ wager is compiled of: six doubles, four trebles, one fourfold and six Up-And-Down SSA Pairs'
    'The ‘Super Flag’ is compiled of: ten doubles, ten trebles, five fourfolds, one five-fold and ten Up-And-Down single stakes about pairs'
    'The ‘Super Heinz Flag’ is compiled of: 21 doubles, 35 trebles, 35 fourfolds, 21 fivefolds, seven sixfolds, one sevenfold and 21 Up-And-Down single stakes about pairs'
    'The ‘Goliath Flag’ is compiled of: 28 doubles, 56 trebles, 70 fourfolds, 56 fivefolds, 28 sixfolds, eight sevenfolds, one eightfold and 28 Up-And-Down single stakes about pairs'
    '“The Union Jack consists of eight trebles from nine selections. Groupings are determined by laying out the selections in a 3×3 grid. This forms three horizontal trebles, three vertical trebles and two diagonal trebles.”'
    'A straight forecast is correctly predicting the finishing order of the horses in first and second in a race.'
    '“An each-way bet is a two-part bet, with half the stake going on the selection to win and the other half on the selection to place. It costs double that of a traditional win bet and will yield some sort of return if the selection wins or is placed.
    For example, you place £5 each-way (£10 in total) on a horse priced at 8-1 with a bookmaker offering 1/4 odds for three places. If the horse places you will receive £15, but if the horse wins you will collect £60 (£45 for the win and £15 for the place), both returns including the original stake.”'
    'A reverse forecast is correctly selecting the first two horses but in no particular order.'
    'Mаtched bеtting is a bеtting technique used by individuals to profit from the free bets and incentives offered by bookmakers.'
    'The Placepot is another favourite for racegoers. Select a horse in each of the first six races at a specific racecourse on a single day, and if that horse finishes in the placings you win a share of the total pool. One unplaced selection and the bet is off!'
    'Quite possibly the hardest bet to win. Correctly predict the first six winners at a specific racecourse on a single day to win a share of the pool. One wrong selection and the bet is off!'

)

i=0
j=0

for i in ${bet_types[@]}
do
touch ../contracts/bet/types/"$i"Bet.sol
printf "pragma solidity ^0.5.0;\n\nimport \"../interface/IBetCondition.sol\";\n\n/// @title "$i"Bet\n/// @author Balaji Shetty Pachai\n/// @dev ${bet_types_comments[$j]}\ncontract "$i"Bet is IBetCondition {\n\n}\n" >> ../contracts/bet/types/"$i"Bet.sol
j=$(( $j + 1 ))
done

