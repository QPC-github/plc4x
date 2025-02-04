/*
 * Licensed to the Apache Software Foundation (ASF) under one
 * or more contributor license agreements.  See the NOTICE file
 * distributed with this work for additional information
 * regarding copyright ownership.  The ASF licenses this file
 * to you under the Apache License, Version 2.0 (the
 * "License"); you may not use this file except in compliance
 * with the License.  You may obtain a copy of the License at
 *
 *   https://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing,
 * software distributed under the License is distributed on an
 * "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
 * KIND, either express or implied.  See the License for the
 * specific language governing permissions and limitations
 * under the License.
 */
package org.apache.plc4x.java.knxnetip.readwrite;

import static org.apache.plc4x.java.spi.codegen.fields.FieldReaderFactory.*;
import static org.apache.plc4x.java.spi.codegen.fields.FieldWriterFactory.*;
import static org.apache.plc4x.java.spi.codegen.io.DataReaderFactory.*;
import static org.apache.plc4x.java.spi.codegen.io.DataWriterFactory.*;
import static org.apache.plc4x.java.spi.generation.StaticHelper.*;

import java.time.*;
import java.util.*;
import org.apache.plc4x.java.api.exceptions.*;
import org.apache.plc4x.java.api.value.*;
import org.apache.plc4x.java.spi.codegen.*;
import org.apache.plc4x.java.spi.codegen.fields.*;
import org.apache.plc4x.java.spi.codegen.io.*;
import org.apache.plc4x.java.spi.generation.*;

// Code generated by code-generation. DO NOT EDIT.

public class ApduDataExtPropertyValueResponse extends ApduDataExt implements Message {

  // Accessors for discriminator values.
  public Short getExtApciType() {
    return (short) 0x16;
  }

  // Properties.
  protected final short objectIndex;
  protected final short propertyId;
  protected final byte count;
  protected final int index;
  protected final byte[] data;

  public ApduDataExtPropertyValueResponse(
      short objectIndex, short propertyId, byte count, int index, byte[] data) {
    super();
    this.objectIndex = objectIndex;
    this.propertyId = propertyId;
    this.count = count;
    this.index = index;
    this.data = data;
  }

  public short getObjectIndex() {
    return objectIndex;
  }

  public short getPropertyId() {
    return propertyId;
  }

  public byte getCount() {
    return count;
  }

  public int getIndex() {
    return index;
  }

  public byte[] getData() {
    return data;
  }

  @Override
  protected void serializeApduDataExtChild(WriteBuffer writeBuffer) throws SerializationException {
    PositionAware positionAware = writeBuffer;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();
    int startPos = positionAware.getPos();
    writeBuffer.pushContext("ApduDataExtPropertyValueResponse");

    // Simple Field (objectIndex)
    writeSimpleField("objectIndex", objectIndex, writeUnsignedShort(writeBuffer, 8));

    // Simple Field (propertyId)
    writeSimpleField("propertyId", propertyId, writeUnsignedShort(writeBuffer, 8));

    // Simple Field (count)
    writeSimpleField("count", count, writeUnsignedByte(writeBuffer, 4));

    // Simple Field (index)
    writeSimpleField("index", index, writeUnsignedInt(writeBuffer, 12));

    // Array Field (data)
    writeByteArrayField("data", data, writeByteArray(writeBuffer, 8));

    writeBuffer.popContext("ApduDataExtPropertyValueResponse");
  }

  @Override
  public int getLengthInBytes() {
    return (int) Math.ceil((float) getLengthInBits() / 8.0);
  }

  @Override
  public int getLengthInBits() {
    int lengthInBits = super.getLengthInBits();
    ApduDataExtPropertyValueResponse _value = this;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();

    // Simple field (objectIndex)
    lengthInBits += 8;

    // Simple field (propertyId)
    lengthInBits += 8;

    // Simple field (count)
    lengthInBits += 4;

    // Simple field (index)
    lengthInBits += 12;

    // Array field
    if (data != null) {
      lengthInBits += 8 * data.length;
    }

    return lengthInBits;
  }

  public static ApduDataExtBuilder staticParseApduDataExtBuilder(
      ReadBuffer readBuffer, Short length) throws ParseException {
    readBuffer.pullContext("ApduDataExtPropertyValueResponse");
    PositionAware positionAware = readBuffer;
    int startPos = positionAware.getPos();
    int curPos;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();

    short objectIndex = readSimpleField("objectIndex", readUnsignedShort(readBuffer, 8));

    short propertyId = readSimpleField("propertyId", readUnsignedShort(readBuffer, 8));

    byte count = readSimpleField("count", readUnsignedByte(readBuffer, 4));

    int index = readSimpleField("index", readUnsignedInt(readBuffer, 12));

    byte[] data = readBuffer.readByteArray("data", Math.toIntExact((length) - (5)));

    readBuffer.closeContext("ApduDataExtPropertyValueResponse");
    // Create the instance
    return new ApduDataExtPropertyValueResponseBuilderImpl(
        objectIndex, propertyId, count, index, data);
  }

  public static class ApduDataExtPropertyValueResponseBuilderImpl
      implements ApduDataExt.ApduDataExtBuilder {
    private final short objectIndex;
    private final short propertyId;
    private final byte count;
    private final int index;
    private final byte[] data;

    public ApduDataExtPropertyValueResponseBuilderImpl(
        short objectIndex, short propertyId, byte count, int index, byte[] data) {
      this.objectIndex = objectIndex;
      this.propertyId = propertyId;
      this.count = count;
      this.index = index;
      this.data = data;
    }

    public ApduDataExtPropertyValueResponse build() {
      ApduDataExtPropertyValueResponse apduDataExtPropertyValueResponse =
          new ApduDataExtPropertyValueResponse(objectIndex, propertyId, count, index, data);
      return apduDataExtPropertyValueResponse;
    }
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof ApduDataExtPropertyValueResponse)) {
      return false;
    }
    ApduDataExtPropertyValueResponse that = (ApduDataExtPropertyValueResponse) o;
    return (getObjectIndex() == that.getObjectIndex())
        && (getPropertyId() == that.getPropertyId())
        && (getCount() == that.getCount())
        && (getIndex() == that.getIndex())
        && (getData() == that.getData())
        && super.equals(that)
        && true;
  }

  @Override
  public int hashCode() {
    return Objects.hash(
        super.hashCode(), getObjectIndex(), getPropertyId(), getCount(), getIndex(), getData());
  }

  @Override
  public String toString() {
    WriteBufferBoxBased writeBufferBoxBased = new WriteBufferBoxBased(true, true);
    try {
      writeBufferBoxBased.writeSerializable(this);
    } catch (SerializationException e) {
      throw new RuntimeException(e);
    }
    return "\n" + writeBufferBoxBased.getBox().toString() + "\n";
  }
}
