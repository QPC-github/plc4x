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

package model

import (
	"github.com/apache/plc4x/plc4go/internal/plc4go/spi/utils"
	"github.com/pkg/errors"
)

// Code generated by code-generation. DO NOT EDIT.

// BACnetLifeSafetyOperation is an enum
type BACnetLifeSafetyOperation uint16

type IBACnetLifeSafetyOperation interface {
	Serialize(writeBuffer utils.WriteBuffer) error
}

const (
	BACnetLifeSafetyOperation_VENDOR_PROPRIETARY_VALUE BACnetLifeSafetyOperation = 0xFFFF
)

var BACnetLifeSafetyOperationValues []BACnetLifeSafetyOperation

func init() {
	_ = errors.New
	BACnetLifeSafetyOperationValues = []BACnetLifeSafetyOperation{
		BACnetLifeSafetyOperation_VENDOR_PROPRIETARY_VALUE,
	}
}

func BACnetLifeSafetyOperationByValue(value uint16) BACnetLifeSafetyOperation {
	switch value {
	case 0xFFFF:
		return BACnetLifeSafetyOperation_VENDOR_PROPRIETARY_VALUE
	}
	return 0
}

func BACnetLifeSafetyOperationByName(value string) BACnetLifeSafetyOperation {
	switch value {
	case "VENDOR_PROPRIETARY_VALUE":
		return BACnetLifeSafetyOperation_VENDOR_PROPRIETARY_VALUE
	}
	return 0
}

func BACnetLifeSafetyOperationKnows(value uint16) bool {
	for _, typeValue := range BACnetLifeSafetyOperationValues {
		if uint16(typeValue) == value {
			return true
		}
	}
	return false
}

func CastBACnetLifeSafetyOperation(structType interface{}) BACnetLifeSafetyOperation {
	castFunc := func(typ interface{}) BACnetLifeSafetyOperation {
		if sBACnetLifeSafetyOperation, ok := typ.(BACnetLifeSafetyOperation); ok {
			return sBACnetLifeSafetyOperation
		}
		return 0
	}
	return castFunc(structType)
}

func (m BACnetLifeSafetyOperation) GetLengthInBits() uint16 {
	return 16
}

func (m BACnetLifeSafetyOperation) GetLengthInBytes() uint16 {
	return m.GetLengthInBits() / 8
}

func BACnetLifeSafetyOperationParse(readBuffer utils.ReadBuffer) (BACnetLifeSafetyOperation, error) {
	val, err := readBuffer.ReadUint16("BACnetLifeSafetyOperation", 16)
	if err != nil {
		return 0, nil
	}
	return BACnetLifeSafetyOperationByValue(val), nil
}

func (e BACnetLifeSafetyOperation) Serialize(writeBuffer utils.WriteBuffer) error {
	return writeBuffer.WriteUint16("BACnetLifeSafetyOperation", 16, uint16(e), utils.WithAdditionalStringRepresentation(e.name()))
}

func (e BACnetLifeSafetyOperation) name() string {
	switch e {
	case BACnetLifeSafetyOperation_VENDOR_PROPRIETARY_VALUE:
		return "VENDOR_PROPRIETARY_VALUE"
	}
	return ""
}

func (e BACnetLifeSafetyOperation) String() string {
	return e.name()
}
