// SPDX-License-Identifier: MIT
pragma solidity >=0.8.24;

/* Autogenerated file. Do not edit manually. */

// Import store internals
import { IStore } from "@latticexyz/store/src/IStore.sol";
import { StoreSwitch } from "@latticexyz/store/src/StoreSwitch.sol";
import { StoreCore } from "@latticexyz/store/src/StoreCore.sol";
import { Bytes } from "@latticexyz/store/src/Bytes.sol";
import { Memory } from "@latticexyz/store/src/Memory.sol";
import { SliceLib } from "@latticexyz/store/src/Slice.sol";
import { EncodeArray } from "@latticexyz/store/src/tightcoder/EncodeArray.sol";
import { FieldLayout } from "@latticexyz/store/src/FieldLayout.sol";
import { Schema } from "@latticexyz/store/src/Schema.sol";
import { EncodedLengths, EncodedLengthsLib } from "@latticexyz/store/src/EncodedLengths.sol";
import { ResourceId } from "@latticexyz/store/src/ResourceId.sol";

struct VrgdaData {
  int256 targetPrice;
  int256 decayConstant;
  int256 perTimeUnit;
  int256 startingTime;
  uint256 totalUnitsSold;
}

library Vrgda {
  // Hex below is the result of `WorldResourceIdLib.encode({ namespace: "", name: "Vrgda", typeId: RESOURCE_TABLE });`
  ResourceId constant _tableId = ResourceId.wrap(0x7462000000000000000000000000000056726764610000000000000000000000);

  FieldLayout constant _fieldLayout =
    FieldLayout.wrap(0x00a0050020202020200000000000000000000000000000000000000000000000);

  // Hex-encoded key schema of ()
  Schema constant _keySchema = Schema.wrap(0x0000000000000000000000000000000000000000000000000000000000000000);
  // Hex-encoded value schema of (int256, int256, int256, int256, uint256)
  Schema constant _valueSchema = Schema.wrap(0x00a005003f3f3f3f1f0000000000000000000000000000000000000000000000);

  /**
   * @notice Get the table's key field names.
   * @return keyNames An array of strings with the names of key fields.
   */
  function getKeyNames() internal pure returns (string[] memory keyNames) {
    keyNames = new string[](0);
  }

  /**
   * @notice Get the table's value field names.
   * @return fieldNames An array of strings with the names of value fields.
   */
  function getFieldNames() internal pure returns (string[] memory fieldNames) {
    fieldNames = new string[](5);
    fieldNames[0] = "targetPrice";
    fieldNames[1] = "decayConstant";
    fieldNames[2] = "perTimeUnit";
    fieldNames[3] = "startingTime";
    fieldNames[4] = "totalUnitsSold";
  }

  /**
   * @notice Register the table with its config.
   */
  function register() internal {
    StoreSwitch.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Register the table with its config.
   */
  function _register() internal {
    StoreCore.registerTable(_tableId, _fieldLayout, _keySchema, _valueSchema, getKeyNames(), getFieldNames());
  }

  /**
   * @notice Get targetPrice.
   */
  function getTargetPrice() internal view returns (int256 targetPrice) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /**
   * @notice Get targetPrice.
   */
  function _getTargetPrice() internal view returns (int256 targetPrice) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 0, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /**
   * @notice Set targetPrice.
   */
  function setTargetPrice(int256 targetPrice) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((targetPrice)), _fieldLayout);
  }

  /**
   * @notice Set targetPrice.
   */
  function _setTargetPrice(int256 targetPrice) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 0, abi.encodePacked((targetPrice)), _fieldLayout);
  }

  /**
   * @notice Get decayConstant.
   */
  function getDecayConstant() internal view returns (int256 decayConstant) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /**
   * @notice Get decayConstant.
   */
  function _getDecayConstant() internal view returns (int256 decayConstant) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 1, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /**
   * @notice Set decayConstant.
   */
  function setDecayConstant(int256 decayConstant) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((decayConstant)), _fieldLayout);
  }

  /**
   * @notice Set decayConstant.
   */
  function _setDecayConstant(int256 decayConstant) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 1, abi.encodePacked((decayConstant)), _fieldLayout);
  }

  /**
   * @notice Get perTimeUnit.
   */
  function getPerTimeUnit() internal view returns (int256 perTimeUnit) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /**
   * @notice Get perTimeUnit.
   */
  function _getPerTimeUnit() internal view returns (int256 perTimeUnit) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 2, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /**
   * @notice Set perTimeUnit.
   */
  function setPerTimeUnit(int256 perTimeUnit) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((perTimeUnit)), _fieldLayout);
  }

  /**
   * @notice Set perTimeUnit.
   */
  function _setPerTimeUnit(int256 perTimeUnit) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 2, abi.encodePacked((perTimeUnit)), _fieldLayout);
  }

  /**
   * @notice Get startingTime.
   */
  function getStartingTime() internal view returns (int256 startingTime) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /**
   * @notice Get startingTime.
   */
  function _getStartingTime() internal view returns (int256 startingTime) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 3, _fieldLayout);
    return (int256(uint256(bytes32(_blob))));
  }

  /**
   * @notice Set startingTime.
   */
  function setStartingTime(int256 startingTime) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((startingTime)), _fieldLayout);
  }

  /**
   * @notice Set startingTime.
   */
  function _setStartingTime(int256 startingTime) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 3, abi.encodePacked((startingTime)), _fieldLayout);
  }

  /**
   * @notice Get totalUnitsSold.
   */
  function getTotalUnitsSold() internal view returns (uint256 totalUnitsSold) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreSwitch.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Get totalUnitsSold.
   */
  function _getTotalUnitsSold() internal view returns (uint256 totalUnitsSold) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    bytes32 _blob = StoreCore.getStaticField(_tableId, _keyTuple, 4, _fieldLayout);
    return (uint256(bytes32(_blob)));
  }

  /**
   * @notice Set totalUnitsSold.
   */
  function setTotalUnitsSold(uint256 totalUnitsSold) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((totalUnitsSold)), _fieldLayout);
  }

  /**
   * @notice Set totalUnitsSold.
   */
  function _setTotalUnitsSold(uint256 totalUnitsSold) internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setStaticField(_tableId, _keyTuple, 4, abi.encodePacked((totalUnitsSold)), _fieldLayout);
  }

  /**
   * @notice Get the full data.
   */
  function get() internal view returns (VrgdaData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreSwitch.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Get the full data.
   */
  function _get() internal view returns (VrgdaData memory _table) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    (bytes memory _staticData, EncodedLengths _encodedLengths, bytes memory _dynamicData) = StoreCore.getRecord(
      _tableId,
      _keyTuple,
      _fieldLayout
    );
    return decode(_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function set(
    int256 targetPrice,
    int256 decayConstant,
    int256 perTimeUnit,
    int256 startingTime,
    uint256 totalUnitsSold
  ) internal {
    bytes memory _staticData = encodeStatic(targetPrice, decayConstant, perTimeUnit, startingTime, totalUnitsSold);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using individual values.
   */
  function _set(
    int256 targetPrice,
    int256 decayConstant,
    int256 perTimeUnit,
    int256 startingTime,
    uint256 totalUnitsSold
  ) internal {
    bytes memory _staticData = encodeStatic(targetPrice, decayConstant, perTimeUnit, startingTime, totalUnitsSold);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function set(VrgdaData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.targetPrice,
      _table.decayConstant,
      _table.perTimeUnit,
      _table.startingTime,
      _table.totalUnitsSold
    );

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Set the full data using the data struct.
   */
  function _set(VrgdaData memory _table) internal {
    bytes memory _staticData = encodeStatic(
      _table.targetPrice,
      _table.decayConstant,
      _table.perTimeUnit,
      _table.startingTime,
      _table.totalUnitsSold
    );

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.setRecord(_tableId, _keyTuple, _staticData, _encodedLengths, _dynamicData, _fieldLayout);
  }

  /**
   * @notice Decode the tightly packed blob of static data using this table's field layout.
   */
  function decodeStatic(
    bytes memory _blob
  )
    internal
    pure
    returns (int256 targetPrice, int256 decayConstant, int256 perTimeUnit, int256 startingTime, uint256 totalUnitsSold)
  {
    targetPrice = (int256(uint256(Bytes.getBytes32(_blob, 0))));

    decayConstant = (int256(uint256(Bytes.getBytes32(_blob, 32))));

    perTimeUnit = (int256(uint256(Bytes.getBytes32(_blob, 64))));

    startingTime = (int256(uint256(Bytes.getBytes32(_blob, 96))));

    totalUnitsSold = (uint256(Bytes.getBytes32(_blob, 128)));
  }

  /**
   * @notice Decode the tightly packed blobs using this table's field layout.
   * @param _staticData Tightly packed static fields.
   *
   *
   */
  function decode(
    bytes memory _staticData,
    EncodedLengths,
    bytes memory
  ) internal pure returns (VrgdaData memory _table) {
    (
      _table.targetPrice,
      _table.decayConstant,
      _table.perTimeUnit,
      _table.startingTime,
      _table.totalUnitsSold
    ) = decodeStatic(_staticData);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function deleteRecord() internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreSwitch.deleteRecord(_tableId, _keyTuple);
  }

  /**
   * @notice Delete all data for given keys.
   */
  function _deleteRecord() internal {
    bytes32[] memory _keyTuple = new bytes32[](0);

    StoreCore.deleteRecord(_tableId, _keyTuple, _fieldLayout);
  }

  /**
   * @notice Tightly pack static (fixed length) data using this table's schema.
   * @return The static data, encoded into a sequence of bytes.
   */
  function encodeStatic(
    int256 targetPrice,
    int256 decayConstant,
    int256 perTimeUnit,
    int256 startingTime,
    uint256 totalUnitsSold
  ) internal pure returns (bytes memory) {
    return abi.encodePacked(targetPrice, decayConstant, perTimeUnit, startingTime, totalUnitsSold);
  }

  /**
   * @notice Encode all of a record's fields.
   * @return The static (fixed length) data, encoded into a sequence of bytes.
   * @return The lengths of the dynamic fields (packed into a single bytes32 value).
   * @return The dynamic (variable length) data, encoded into a sequence of bytes.
   */
  function encode(
    int256 targetPrice,
    int256 decayConstant,
    int256 perTimeUnit,
    int256 startingTime,
    uint256 totalUnitsSold
  ) internal pure returns (bytes memory, EncodedLengths, bytes memory) {
    bytes memory _staticData = encodeStatic(targetPrice, decayConstant, perTimeUnit, startingTime, totalUnitsSold);

    EncodedLengths _encodedLengths;
    bytes memory _dynamicData;

    return (_staticData, _encodedLengths, _dynamicData);
  }

  /**
   * @notice Encode keys as a bytes32 array using this table's field layout.
   */
  function encodeKeyTuple() internal pure returns (bytes32[] memory) {
    bytes32[] memory _keyTuple = new bytes32[](0);

    return _keyTuple;
  }
}
