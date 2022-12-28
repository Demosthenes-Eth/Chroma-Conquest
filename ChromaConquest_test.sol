// SPDX-License-Identifier: MIT
pragma solidity ^0.8.2;

contract ChromaConquest {

  uint256 constant public totalHexes = 124;
  
  struct Hex {
    string hexId;
    string row;
    string col;
    uint256 valueOfRed;
    uint256 valueOfGreen;
    uint256 valueOfBlue;
    uint8[3] rgbOfHex;
  }

  Hex[] hexes;

  mapping(string => Hex) public tile;

  enum Channel{
    Red,
    Green,
    Blue
  }

  enum Direction{
    Increment,
    Decrement
  }

  constructor () {

    hexes.push(Hex('A0', 'A', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('A1', 'A', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('A2', 'A', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('A3', 'A', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('A4', 'A', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('A5', 'A', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('A6', 'A', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('B0', 'A', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('B1', 'B', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('B2', 'B', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('B3', 'B', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('B4', 'B', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('B5', 'B', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('B6', 'B', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('B7', 'B', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('C0', 'C', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('C1', 'C', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('C2', 'C', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('C3', 'C', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('C4', 'C', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('C5', 'C', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('C6', 'C', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('C7', 'C', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('C8', 'C', '8', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('D0', 'D', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('D1', 'D', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('D2', 'D', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('D3', 'D', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('D4', 'D', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('D5', 'D', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('D6', 'D', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('D7', 'D', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('D8', 'D', '8', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('D9', 'D', '9', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E0', 'E', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E1', 'E', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E2', 'E', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E3', 'E', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E4', 'E', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E5', 'E', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E6', 'E', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E7', 'E', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E8', 'E', '8', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E9', 'E', '9', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('E10', 'E', '10', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F0', 'F', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F1', 'F', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F2', 'F', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F3', 'F', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F4', 'F', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F5', 'F', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F6', 'F', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F7', 'F', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F8', 'F', '8', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F9', 'F', '9', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F10', 'F', '10', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('F11', 'F', '11', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G0', 'G', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G1', 'G', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G2', 'G', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G3', 'G', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G4', 'G', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G5', 'G', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G6', 'G', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G7', 'G', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G8', 'G', '8', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G9', 'G', '9', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G10', 'G', '10', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G11', 'G', '11', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('G12', 'G', '12', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H0', 'H', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H1', 'H', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H2', 'H', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H3', 'H', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H4', 'H', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H5', 'H', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H6', 'H', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H7', 'H', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H8', 'H', '8', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H9', 'H', '9', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H10', 'H', '10', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('H11', 'H', '11', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I0', 'I', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I1', 'I', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I2', 'I', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I3', 'I', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I4', 'I', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I5', 'I', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I6', 'I', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I7', 'I', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I8', 'I', '8', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I9', 'I', '9', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('I10', 'I', '10', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('J0', 'J', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('J1', 'J', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('J2', 'J', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('J3', 'J', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('J4', 'J', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('J5', 'J', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('J6', 'J', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('J7', 'J', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('J8', 'J', '8', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('J9', 'J', '9', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('K0', 'K', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('K1', 'K', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('K2', 'K', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('K3', 'K', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('K4', 'K', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('K5', 'K', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('K6', 'K', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('K7', 'K', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('K8', 'K', '8', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('L0', 'L', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('L1', 'L', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('L2', 'L', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('L3', 'L', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('L4', 'L', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('L5', 'L', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('L6', 'L', '6', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('L7', 'L', '7', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('M0', 'M', '0', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('M1', 'M', '1', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('M2', 'M', '2', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('M3', 'M', '3', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('M4', 'M', '4', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('M5', 'M', '5', 127, 127, 127, [127, 127, 127]));
    hexes.push(Hex('M6', 'M', '6', 127, 127, 127, [127, 127, 127]));

    initializeMap();

  }

  function initializeMap () public {
      for (uint i = 0; i < hexes.length; i++) {
        // Set the value in the tile mapping for the current hex ID to the current hex object
        tile[hexes[i].hexId] = hexes[i];
      }
  }
  
  function getHex (string memory _tile) public view returns (string memory, string memory, string memory, uint, uint, uint) {
    
    return (
      tile[_tile].hexId, 
      tile[_tile].row, 
      tile[_tile].col, 
      tile[_tile].valueOfRed, 
      tile[_tile].valueOfGreen, 
      tile[_tile].valueOfBlue);
  }

  function changeRGB(string memory _tile, Channel _channel, Direction _direction) public {
    Channel channel = _channel;
    Direction direction = _direction;
    Hex storage Tile = tile[_tile];

    if (channel == Channel.Red) {
      if (direction == Direction.Increment) {
        // increment red
        ++Tile.valueOfRed;
        ++Tile.rgbOfHex[0];
      } else {
        // decrement red
        --Tile.valueOfRed;
        --Tile.rgbOfHex[0];
      }
    } else if (channel == Channel.Green) {
      if (direction == Direction.Increment) {
        // increment green
        ++Tile.valueOfGreen;
        ++Tile.rgbOfHex[1];
      } else {
        // decrement green
        --Tile.valueOfGreen;
        --Tile.rgbOfHex[1];
      }
    } else if (channel == Channel.Blue) {
      if (direction == Direction.Increment) {
        // increment blue
        ++Tile.valueOfBlue;
        ++Tile.rgbOfHex[2];
      } else {
        // decrement blue
        --Tile.valueOfBlue;
        --Tile.rgbOfHex[2];
      }
    }
  }
}
