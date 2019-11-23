pragma solidity ^0.5.0;

/// @title IBetCondition
/// @author Balaji Shetty Pachai
/// @dev Interface that is implemented by all the bet types
interface IBetCondition {
    function betCondition(string calldata _betType) external;
    function winningCriteria(string calldata _criteria) external;
    fucntion hasWon() external view returns (bool);
}