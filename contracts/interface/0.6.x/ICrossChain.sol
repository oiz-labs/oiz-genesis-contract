pragma solidity 0.6.4;

interface ICrossChain {
    /**
     * @dev Send package to OIZ Beacon Chain
     */
    function sendSynPackage(uint8 channelId, bytes calldata msgBytes, uint256 relayFee) external;
}
