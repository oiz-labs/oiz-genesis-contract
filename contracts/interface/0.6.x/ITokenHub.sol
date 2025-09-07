pragma solidity 0.6.4;

interface ITokenHub {
    function getMiniRelayFee() external view returns (uint256);

    function getContractAddrByBEP2Symbol(bytes32 oiz2Symbol) external view returns (address);

    function getBep2SymbolByContractAddr(address contractAddr) external view returns (bytes32);

    function bindToken(bytes32 oiz2Symbol, address contractAddr, uint256 decimals) external;

    function unbindToken(bytes32 oiz2Symbol, address contractAddr) external;

    function transferOut(
        address contractAddr,
        address recipient,
        uint256 amount,
        uint64 expireTime
    ) external payable returns (bool);

    function recoverBCAsset(bytes32 tokenSymbol, address recipient, uint256 amount) external;
    function cancelTokenRecoverLock(bytes32 tokenSymbol, address attacker) external;

    /* solium-disable-next-line */
    function batchTransferOutOIZ(
        address[] calldata recipientAddrs,
        uint256[] calldata amounts,
        address[] calldata refundAddrs,
        uint64 expireTime
    ) external payable returns (bool);

    function withdrawStakingOIZ(uint256 amount) external returns (bool);

    function cancelTransferIn(address tokenAddress, address attacker) external;
}
