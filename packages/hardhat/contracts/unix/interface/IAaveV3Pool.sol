pragma solidity ^0.8.24;
import '../library/DataTypes.sol';

interface IAaveV3Pool {
	function supply(address asset, uint256 amount, address onBehalfOf, uint16 referralCode) external;
	function withdraw(address asset, uint256 amount, address to) external returns (uint256);
	function getReserveData(address asset) external view returns (DataTypes.ReserveData memory);
}