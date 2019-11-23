pragma solidity ^0.5.0;

import "../interface/IBetCondition.sol";

/// @title EachWayBet
/// @author Balaji Shetty Pachai
/// @dev “An each-way bet is a two-part bet, with half the stake going on the selection to win and the other half on the selection to place. It costs double that of a traditional win bet and will yield some sort of return if the selection wins or is placed.
    For example, you place £5 each-way (£10 in total) on a horse priced at 8-1 with a bookmaker offering 1/4 odds for three places. If the horse places you will receive £15, but if the horse wins you will collect £60 (£45 for the win and £15 for the place), both returns including the original stake.”
contract EachWayBet is IBetCondition {

}
