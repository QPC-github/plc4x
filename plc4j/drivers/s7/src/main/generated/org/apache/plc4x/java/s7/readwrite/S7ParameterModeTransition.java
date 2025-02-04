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
package org.apache.plc4x.java.s7.readwrite;

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

public class S7ParameterModeTransition extends S7Parameter implements Message {

  // Accessors for discriminator values.
  public Short getParameterType() {
    return (short) 0x01;
  }

  public Short getMessageType() {
    return (short) 0x07;
  }

  // Properties.
  protected final short method;
  protected final byte cpuFunctionType;
  protected final byte cpuFunctionGroup;
  protected final short currentMode;
  protected final short sequenceNumber;

  public S7ParameterModeTransition(
      short method,
      byte cpuFunctionType,
      byte cpuFunctionGroup,
      short currentMode,
      short sequenceNumber) {
    super();
    this.method = method;
    this.cpuFunctionType = cpuFunctionType;
    this.cpuFunctionGroup = cpuFunctionGroup;
    this.currentMode = currentMode;
    this.sequenceNumber = sequenceNumber;
  }

  public short getMethod() {
    return method;
  }

  public byte getCpuFunctionType() {
    return cpuFunctionType;
  }

  public byte getCpuFunctionGroup() {
    return cpuFunctionGroup;
  }

  public short getCurrentMode() {
    return currentMode;
  }

  public short getSequenceNumber() {
    return sequenceNumber;
  }

  @Override
  protected void serializeS7ParameterChild(WriteBuffer writeBuffer) throws SerializationException {
    PositionAware positionAware = writeBuffer;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();
    int startPos = positionAware.getPos();
    writeBuffer.pushContext("S7ParameterModeTransition");

    // Reserved Field (reserved)
    writeReservedField("reserved", (int) 0x0010, writeUnsignedInt(writeBuffer, 16));

    // Implicit Field (itemLength) (Used for parsing, but its value is not stored as it's implicitly
    // given by the objects content)
    short itemLength = (short) ((getLengthInBytes()) - (2));
    writeImplicitField("itemLength", itemLength, writeUnsignedShort(writeBuffer, 8));

    // Simple Field (method)
    writeSimpleField("method", method, writeUnsignedShort(writeBuffer, 8));

    // Simple Field (cpuFunctionType)
    writeSimpleField("cpuFunctionType", cpuFunctionType, writeUnsignedByte(writeBuffer, 4));

    // Simple Field (cpuFunctionGroup)
    writeSimpleField("cpuFunctionGroup", cpuFunctionGroup, writeUnsignedByte(writeBuffer, 4));

    // Simple Field (currentMode)
    writeSimpleField("currentMode", currentMode, writeUnsignedShort(writeBuffer, 8));

    // Simple Field (sequenceNumber)
    writeSimpleField("sequenceNumber", sequenceNumber, writeUnsignedShort(writeBuffer, 8));

    writeBuffer.popContext("S7ParameterModeTransition");
  }

  @Override
  public int getLengthInBytes() {
    return (int) Math.ceil((float) getLengthInBits() / 8.0);
  }

  @Override
  public int getLengthInBits() {
    int lengthInBits = super.getLengthInBits();
    S7ParameterModeTransition _value = this;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();

    // Reserved Field (reserved)
    lengthInBits += 16;

    // Implicit Field (itemLength)
    lengthInBits += 8;

    // Simple field (method)
    lengthInBits += 8;

    // Simple field (cpuFunctionType)
    lengthInBits += 4;

    // Simple field (cpuFunctionGroup)
    lengthInBits += 4;

    // Simple field (currentMode)
    lengthInBits += 8;

    // Simple field (sequenceNumber)
    lengthInBits += 8;

    return lengthInBits;
  }

  public static S7ParameterBuilder staticParseS7ParameterBuilder(
      ReadBuffer readBuffer, Short messageType) throws ParseException {
    readBuffer.pullContext("S7ParameterModeTransition");
    PositionAware positionAware = readBuffer;
    int startPos = positionAware.getPos();
    int curPos;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();

    Integer reservedField0 =
        readReservedField("reserved", readUnsignedInt(readBuffer, 16), (int) 0x0010);

    short itemLength = readImplicitField("itemLength", readUnsignedShort(readBuffer, 8));

    short method = readSimpleField("method", readUnsignedShort(readBuffer, 8));

    byte cpuFunctionType = readSimpleField("cpuFunctionType", readUnsignedByte(readBuffer, 4));

    byte cpuFunctionGroup = readSimpleField("cpuFunctionGroup", readUnsignedByte(readBuffer, 4));

    short currentMode = readSimpleField("currentMode", readUnsignedShort(readBuffer, 8));

    short sequenceNumber = readSimpleField("sequenceNumber", readUnsignedShort(readBuffer, 8));

    readBuffer.closeContext("S7ParameterModeTransition");
    // Create the instance
    return new S7ParameterModeTransitionBuilderImpl(
        method, cpuFunctionType, cpuFunctionGroup, currentMode, sequenceNumber);
  }

  public static class S7ParameterModeTransitionBuilderImpl
      implements S7Parameter.S7ParameterBuilder {
    private final short method;
    private final byte cpuFunctionType;
    private final byte cpuFunctionGroup;
    private final short currentMode;
    private final short sequenceNumber;

    public S7ParameterModeTransitionBuilderImpl(
        short method,
        byte cpuFunctionType,
        byte cpuFunctionGroup,
        short currentMode,
        short sequenceNumber) {
      this.method = method;
      this.cpuFunctionType = cpuFunctionType;
      this.cpuFunctionGroup = cpuFunctionGroup;
      this.currentMode = currentMode;
      this.sequenceNumber = sequenceNumber;
    }

    public S7ParameterModeTransition build() {
      S7ParameterModeTransition s7ParameterModeTransition =
          new S7ParameterModeTransition(
              method, cpuFunctionType, cpuFunctionGroup, currentMode, sequenceNumber);
      return s7ParameterModeTransition;
    }
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof S7ParameterModeTransition)) {
      return false;
    }
    S7ParameterModeTransition that = (S7ParameterModeTransition) o;
    return (getMethod() == that.getMethod())
        && (getCpuFunctionType() == that.getCpuFunctionType())
        && (getCpuFunctionGroup() == that.getCpuFunctionGroup())
        && (getCurrentMode() == that.getCurrentMode())
        && (getSequenceNumber() == that.getSequenceNumber())
        && super.equals(that)
        && true;
  }

  @Override
  public int hashCode() {
    return Objects.hash(
        super.hashCode(),
        getMethod(),
        getCpuFunctionType(),
        getCpuFunctionGroup(),
        getCurrentMode(),
        getSequenceNumber());
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
