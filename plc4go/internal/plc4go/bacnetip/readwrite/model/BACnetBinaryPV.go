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

// BACnetBinaryPV is an enum
type BACnetBinaryPV uint8

type IBACnetBinaryPV interface {
	Serialize(writeBuffer utils.WriteBuffer) error
}

const (
	BACnetBinaryPV_INACTIVE                 BACnetBinaryPV = 0
	BACnetBinaryPV_ACTIVE                   BACnetBinaryPV = 1
	BACnetBinaryPV_VENDOR_PROPRIETARY_VALUE BACnetBinaryPV = 0xFF
)

var BACnetBinaryPVValues []BACnetBinaryPV

func init() {
	_ = errors.New
	BACnetBinaryPVValues = []BACnetBinaryPV{
		BACnetBinaryPV_INACTIVE,
		BACnetBinaryPV_ACTIVE,
		BACnetBinaryPV_VENDOR_PROPRIETARY_VALUE,
	}
}

func BACnetBinaryPVByValue(value uint8) BACnetBinaryPV {
	switch value {
	case 0:
		return BACnetBinaryPV_INACTIVE
	case 0xFF:
		return BACnetBinaryPV_VENDOR_PROPRIETARY_VALUE
	case 1:
		return BACnetBinaryPV_ACTIVE
	}
	return 0
}

func BACnetBinaryPVByName(value string) BACnetBinaryPV {
	switch value {
	case "INACTIVE":
		return BACnetBinaryPV_INACTIVE
	case "VENDOR_PROPRIETARY_VALUE":
		return BACnetBinaryPV_VENDOR_PROPRIETARY_VALUE
	case "ACTIVE":
		return BACnetBinaryPV_ACTIVE
	}
	return 0
}

func BACnetBinaryPVKnows(value uint8) bool {
	for _, typeValue := range BACnetBinaryPVValues {
		if uint8(typeValue) == value {
			return true
		}
	}
	return false
}

func CastBACnetBinaryPV(structType interface{}) BACnetBinaryPV {
	castFunc := func(typ interface{}) BACnetBinaryPV {
		if sBACnetBinaryPV, ok := typ.(BACnetBinaryPV); ok {
			return sBACnetBinaryPV
		}
		return 0
	}
	return castFunc(structType)
}

func (m BACnetBinaryPV) GetLengthInBits() uint16 {
	return 8
}

func (m BACnetBinaryPV) GetLengthInBytes() uint16 {
	return m.GetLengthInBits() / 8
}

func BACnetBinaryPVParse(readBuffer utils.ReadBuffer) (BACnetBinaryPV, error) {
	val, err := readBuffer.ReadUint8("BACnetBinaryPV", 8)
	if err != nil {
		return 0, nil
	}
	return BACnetBinaryPVByValue(val), nil
}

func (e BACnetBinaryPV) Serialize(writeBuffer utils.WriteBuffer) error {
	return writeBuffer.WriteUint8("BACnetBinaryPV", 8, uint8(e), utils.WithAdditionalStringRepresentation(e.name()))
}

func (e BACnetBinaryPV) name() string {
	switch e {
	case BACnetBinaryPV_INACTIVE:
		return "INACTIVE"
	case BACnetBinaryPV_VENDOR_PROPRIETARY_VALUE:
		return "VENDOR_PROPRIETARY_VALUE"
	case BACnetBinaryPV_ACTIVE:
		return "ACTIVE"
	}
	return ""
}

func (e BACnetBinaryPV) String() string {
	return e.name()
}
