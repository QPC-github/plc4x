/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */

#include <stdio.h>
#include <plc4c/spi/evaluation_helper.h>
#include <plc4c/driver_modbus_static_helper.h>
#include "modbus_adu.h"

// Code generated by code-generation. DO NOT EDIT.

// Array of discriminator values that match the enum type constants.
// (The order is identical to the enum constants, so we can use the
// enum constant to directly access a given type's discriminator values)
const plc4c_modbus_read_write_modbus_adu_discriminator plc4c_modbus_read_write_modbus_adu_discriminators[] = {
  {/* plc4c_modbus_read_write_modbus_tcp_adu */
   .driverType = plc4c_modbus_read_write_driver_type_MODBUS_TCP },
  {/* plc4c_modbus_read_write_modbus_rtu_adu */
   .driverType = plc4c_modbus_read_write_driver_type_MODBUS_RTU },
  {/* plc4c_modbus_read_write_modbus_ascii_adu */
   .driverType = plc4c_modbus_read_write_driver_type_MODBUS_ASCII }

};

// Function returning the discriminator values for a given type constant.
plc4c_modbus_read_write_modbus_adu_discriminator plc4c_modbus_read_write_modbus_adu_get_discriminator(plc4c_modbus_read_write_modbus_adu_type type) {
  return plc4c_modbus_read_write_modbus_adu_discriminators[type];
}

// Create an empty NULL-struct
static const plc4c_modbus_read_write_modbus_adu plc4c_modbus_read_write_modbus_adu_null_const;

plc4c_modbus_read_write_modbus_adu plc4c_modbus_read_write_modbus_adu_null() {
  return plc4c_modbus_read_write_modbus_adu_null_const;
}


// Constant values.
static const uint16_t PLC4C_MODBUS_READ_WRITE_MODBUS_TCP_ADU_PROTOCOL_IDENTIFIER_const = 0x0000;
uint16_t PLC4C_MODBUS_READ_WRITE_MODBUS_TCP_ADU_PROTOCOL_IDENTIFIER() {
  return PLC4C_MODBUS_READ_WRITE_MODBUS_TCP_ADU_PROTOCOL_IDENTIFIER_const;
}

// Parse function.
plc4c_return_code plc4c_modbus_read_write_modbus_adu_parse(plc4c_spi_read_buffer* readBuffer, plc4c_modbus_read_write_driver_type* driverType, bool response, plc4c_modbus_read_write_modbus_adu** _message) {
  uint16_t startPos = plc4c_spi_read_get_pos(readBuffer);
  plc4c_return_code _res = OK;

  // Allocate enough memory to contain this data structure.
  (*_message) = malloc(sizeof(plc4c_modbus_read_write_modbus_adu));
  if(*_message == NULL) {
    return NO_MEMORY;
  }

    // Switch Field (Depending on the discriminator values, passes the instantiation to a sub-type)
if( driverType == plc4c_modbus_read_write_driver_type_MODBUS_TCP ) { /* ModbusTcpADU */
    (*_message)->_type = plc4c_modbus_read_write_modbus_adu_type_plc4c_modbus_read_write_modbus_tcp_adu;

  // Simple Field (transactionIdentifier)
  uint16_t transactionIdentifier = 0;
  _res = plc4c_spi_read_unsigned_short(readBuffer, 16, (uint16_t*) &transactionIdentifier);
  if(_res != OK) {
    return _res;
  }
  (*_message)->modbus_tcp_adu_transaction_identifier = transactionIdentifier;


  // Const Field (protocolIdentifier)
  uint16_t protocolIdentifier = 0;
  _res = plc4c_spi_read_unsigned_short(readBuffer, 16, (uint16_t*) &protocolIdentifier);
  if(_res != OK) {
    return _res;
  }
  if(protocolIdentifier != PLC4C_MODBUS_READ_WRITE_MODBUS_TCP_ADU_PROTOCOL_IDENTIFIER()) {
    return PARSE_ERROR;
    // throw new ParseException("Expected constant value " + PLC4C_MODBUS_READ_WRITE_MODBUS_TCP_ADU_PROTOCOL_IDENTIFIER + " but got " + protocolIdentifier);
  }


  // Implicit Field (length) (Used for parsing, but its value is not stored as it's implicitly given by the objects content)
  uint16_t length = 0;
  _res = plc4c_spi_read_unsigned_short(readBuffer, 16, (uint16_t*) &length);
  if(_res != OK) {
    return _res;
  }


  // Simple Field (unitIdentifier)
  uint8_t unitIdentifier = 0;
  _res = plc4c_spi_read_unsigned_byte(readBuffer, 8, (uint8_t*) &unitIdentifier);
  if(_res != OK) {
    return _res;
  }
  (*_message)->modbus_tcp_adu_unit_identifier = unitIdentifier;


  // Simple Field (pdu)
  plc4c_modbus_read_write_modbus_pdu* pdu;
  _res = plc4c_modbus_read_write_modbus_pdu_parse(readBuffer, response, (void*) &pdu);
  if(_res != OK) {
    return _res;
  }
  (*_message)->modbus_tcp_adu_pdu = pdu;
  } else 
if( driverType == plc4c_modbus_read_write_driver_type_MODBUS_RTU ) { /* ModbusRtuADU */
    (*_message)->_type = plc4c_modbus_read_write_modbus_adu_type_plc4c_modbus_read_write_modbus_rtu_adu;

  // Simple Field (address)
  uint8_t address = 0;
  _res = plc4c_spi_read_unsigned_byte(readBuffer, 8, (uint8_t*) &address);
  if(_res != OK) {
    return _res;
  }
  (*_message)->modbus_rtu_adu_address = address;


  // Simple Field (pdu)
  plc4c_modbus_read_write_modbus_pdu* pdu;
  _res = plc4c_modbus_read_write_modbus_pdu_parse(readBuffer, response, (void*) &pdu);
  if(_res != OK) {
    return _res;
  }
  (*_message)->modbus_rtu_adu_pdu = pdu;


  // Checksum Field (crc)
  {
    // Create an array of all the bytes read in this message element so far.
    uint16_t _checksumRef = 0;
    _res = plc4c_spi_read_unsigned_short(readBuffer, 16, (uint16_t*) &_checksumRef);
    if(_res != OK) {
      return _res;
    }
    uint16_t _checksum = (uint16_t) (plc4c_modbus_read_write_rtu_crc_check(address, pdu));
    if(_checksum != _checksumRef) {
      return PARSE_ERROR;
      // throw new ParseException(String.format("Checksum verification failed. Expected %04X but got %04X",_checksumRef & 0xFFFF, _checksum & 0xFFFF));
    }
  }
  } else 
if( driverType == plc4c_modbus_read_write_driver_type_MODBUS_ASCII ) { /* ModbusAsciiADU */
    (*_message)->_type = plc4c_modbus_read_write_modbus_adu_type_plc4c_modbus_read_write_modbus_ascii_adu;

  // Simple Field (address)
  uint8_t address = 0;
  _res = plc4c_spi_read_unsigned_byte(readBuffer, 8, (uint8_t*) &address);
  if(_res != OK) {
    return _res;
  }
  (*_message)->modbus_ascii_adu_address = address;


  // Simple Field (pdu)
  plc4c_modbus_read_write_modbus_pdu* pdu;
  _res = plc4c_modbus_read_write_modbus_pdu_parse(readBuffer, response, (void*) &pdu);
  if(_res != OK) {
    return _res;
  }
  (*_message)->modbus_ascii_adu_pdu = pdu;


  // Checksum Field (crc)
  {
    // Create an array of all the bytes read in this message element so far.
    uint8_t _checksumRef = 0;
    _res = plc4c_spi_read_unsigned_byte(readBuffer, 8, (uint8_t*) &_checksumRef);
    if(_res != OK) {
      return _res;
    }
    uint8_t _checksum = (uint8_t) (plc4c_modbus_read_write_ascii_lrc_check(address, pdu));
    if(_checksum != _checksumRef) {
      return PARSE_ERROR;
      // throw new ParseException(String.format("Checksum verification failed. Expected %04X but got %04X",_checksumRef & 0xFFFF, _checksum & 0xFFFF));
    }
  }
  }

  return OK;
}

plc4c_return_code plc4c_modbus_read_write_modbus_adu_serialize(plc4c_spi_write_buffer* writeBuffer, plc4c_modbus_read_write_modbus_adu* _message) {
  plc4c_return_code _res = OK;

  // Switch Field (Depending on the current type, serialize the subtype elements)
  switch(_message->_type) {
    case plc4c_modbus_read_write_modbus_adu_type_plc4c_modbus_read_write_modbus_tcp_adu: {

  // Simple Field (transactionIdentifier)
  _res = plc4c_spi_write_unsigned_short(writeBuffer, 16, _message->modbus_tcp_adu_transaction_identifier);
  if(_res != OK) {
    return _res;
  }

  // Const Field (protocolIdentifier)
  plc4c_spi_write_unsigned_short(writeBuffer, 16, PLC4C_MODBUS_READ_WRITE_MODBUS_TCP_ADU_PROTOCOL_IDENTIFIER());

  // Implicit Field (length) (Used for parsing, but it's value is not stored as it's implicitly given by the objects content)
  _res = plc4c_spi_write_unsigned_short(writeBuffer, 16, (plc4c_modbus_read_write_modbus_pdu_length_in_bytes(_message->modbus_tcp_adu_pdu)) + (1));
  if(_res != OK) {
    return _res;
  }

  // Simple Field (unitIdentifier)
  _res = plc4c_spi_write_unsigned_byte(writeBuffer, 8, _message->modbus_tcp_adu_unit_identifier);
  if(_res != OK) {
    return _res;
  }

  // Simple Field (pdu)
  _res = plc4c_modbus_read_write_modbus_pdu_serialize(writeBuffer, _message->modbus_tcp_adu_pdu);
  if(_res != OK) {
    return _res;
  }

      break;
    }
    case plc4c_modbus_read_write_modbus_adu_type_plc4c_modbus_read_write_modbus_rtu_adu: {

  // Simple Field (address)
  _res = plc4c_spi_write_unsigned_byte(writeBuffer, 8, _message->modbus_rtu_adu_address);
  if(_res != OK) {
    return _res;
  }

  // Simple Field (pdu)
  _res = plc4c_modbus_read_write_modbus_pdu_serialize(writeBuffer, _message->modbus_rtu_adu_pdu);
  if(_res != OK) {
    return _res;
  }

  // Checksum Field (crc)
  {
    // Create an array of all the bytes read in this message element so far.
    uint16_t _checksum = (uint16_t) (plc4c_modbus_read_write_rtu_crc_check(_message->modbus_rtu_adu_address, _message->modbus_rtu_adu_pdu));
    plc4c_spi_write_unsigned_short(writeBuffer, 16, _checksum);
  }

      break;
    }
    case plc4c_modbus_read_write_modbus_adu_type_plc4c_modbus_read_write_modbus_ascii_adu: {

  // Simple Field (address)
  _res = plc4c_spi_write_unsigned_byte(writeBuffer, 8, _message->modbus_ascii_adu_address);
  if(_res != OK) {
    return _res;
  }

  // Simple Field (pdu)
  _res = plc4c_modbus_read_write_modbus_pdu_serialize(writeBuffer, _message->modbus_ascii_adu_pdu);
  if(_res != OK) {
    return _res;
  }

  // Checksum Field (crc)
  {
    // Create an array of all the bytes read in this message element so far.
    uint8_t _checksum = (uint8_t) (plc4c_modbus_read_write_ascii_lrc_check(_message->modbus_ascii_adu_address, _message->modbus_ascii_adu_pdu));
    plc4c_spi_write_unsigned_byte(writeBuffer, 8, _checksum);
  }

      break;
    }
  }

  return OK;
}

uint16_t plc4c_modbus_read_write_modbus_adu_length_in_bytes(plc4c_modbus_read_write_modbus_adu* _message) {
  return plc4c_modbus_read_write_modbus_adu_length_in_bits(_message) / 8;
}

uint16_t plc4c_modbus_read_write_modbus_adu_length_in_bits(plc4c_modbus_read_write_modbus_adu* _message) {
  uint16_t lengthInBits = 0;

  // Depending of the current type, add the length of sub-type elements ...
  switch(_message->_type) {
    case plc4c_modbus_read_write_modbus_adu_type_plc4c_modbus_read_write_modbus_tcp_adu: {

  // Simple field (transactionIdentifier)
  lengthInBits += 16;


  // Const Field (protocolIdentifier)
  lengthInBits += 16;


  // Implicit Field (length)
  lengthInBits += 16;


  // Simple field (unitIdentifier)
  lengthInBits += 8;


  // Simple field (pdu)
  lengthInBits += plc4c_modbus_read_write_modbus_pdu_length_in_bits(_message->modbus_tcp_adu_pdu);

      break;
    }
    case plc4c_modbus_read_write_modbus_adu_type_plc4c_modbus_read_write_modbus_rtu_adu: {

  // Simple field (address)
  lengthInBits += 8;


  // Simple field (pdu)
  lengthInBits += plc4c_modbus_read_write_modbus_pdu_length_in_bits(_message->modbus_rtu_adu_pdu);


  // Checksum Field (checksum)
  lengthInBits += 16;

      break;
    }
    case plc4c_modbus_read_write_modbus_adu_type_plc4c_modbus_read_write_modbus_ascii_adu: {

  // Simple field (address)
  lengthInBits += 8;


  // Simple field (pdu)
  lengthInBits += plc4c_modbus_read_write_modbus_pdu_length_in_bits(_message->modbus_ascii_adu_pdu);


  // Checksum Field (checksum)
  lengthInBits += 8;

      break;
    }
  }

  return lengthInBits;
}

