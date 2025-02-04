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
package org.apache.plc4x.java.bacnetip.readwrite;

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

public class BACnetFaultParameterFaultExtendedParametersEntryDate
    extends BACnetFaultParameterFaultExtendedParametersEntry implements Message {

  // Accessors for discriminator values.

  // Properties.
  protected final BACnetApplicationTagDate dateValue;

  public BACnetFaultParameterFaultExtendedParametersEntryDate(
      BACnetTagHeader peekedTagHeader, BACnetApplicationTagDate dateValue) {
    super(peekedTagHeader);
    this.dateValue = dateValue;
  }

  public BACnetApplicationTagDate getDateValue() {
    return dateValue;
  }

  @Override
  protected void serializeBACnetFaultParameterFaultExtendedParametersEntryChild(
      WriteBuffer writeBuffer) throws SerializationException {
    PositionAware positionAware = writeBuffer;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();
    int startPos = positionAware.getPos();
    writeBuffer.pushContext("BACnetFaultParameterFaultExtendedParametersEntryDate");

    // Simple Field (dateValue)
    writeSimpleField("dateValue", dateValue, new DataWriterComplexDefault<>(writeBuffer));

    writeBuffer.popContext("BACnetFaultParameterFaultExtendedParametersEntryDate");
  }

  @Override
  public int getLengthInBytes() {
    return (int) Math.ceil((float) getLengthInBits() / 8.0);
  }

  @Override
  public int getLengthInBits() {
    int lengthInBits = super.getLengthInBits();
    BACnetFaultParameterFaultExtendedParametersEntryDate _value = this;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();

    // Simple field (dateValue)
    lengthInBits += dateValue.getLengthInBits();

    return lengthInBits;
  }

  public static BACnetFaultParameterFaultExtendedParametersEntryBuilder
      staticParseBACnetFaultParameterFaultExtendedParametersEntryBuilder(ReadBuffer readBuffer)
          throws ParseException {
    readBuffer.pullContext("BACnetFaultParameterFaultExtendedParametersEntryDate");
    PositionAware positionAware = readBuffer;
    int startPos = positionAware.getPos();
    int curPos;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();

    BACnetApplicationTagDate dateValue =
        readSimpleField(
            "dateValue",
            new DataReaderComplexDefault<>(
                () -> (BACnetApplicationTagDate) BACnetApplicationTag.staticParse(readBuffer),
                readBuffer));

    readBuffer.closeContext("BACnetFaultParameterFaultExtendedParametersEntryDate");
    // Create the instance
    return new BACnetFaultParameterFaultExtendedParametersEntryDateBuilderImpl(dateValue);
  }

  public static class BACnetFaultParameterFaultExtendedParametersEntryDateBuilderImpl
      implements BACnetFaultParameterFaultExtendedParametersEntry
          .BACnetFaultParameterFaultExtendedParametersEntryBuilder {
    private final BACnetApplicationTagDate dateValue;

    public BACnetFaultParameterFaultExtendedParametersEntryDateBuilderImpl(
        BACnetApplicationTagDate dateValue) {
      this.dateValue = dateValue;
    }

    public BACnetFaultParameterFaultExtendedParametersEntryDate build(
        BACnetTagHeader peekedTagHeader) {
      BACnetFaultParameterFaultExtendedParametersEntryDate
          bACnetFaultParameterFaultExtendedParametersEntryDate =
              new BACnetFaultParameterFaultExtendedParametersEntryDate(peekedTagHeader, dateValue);
      return bACnetFaultParameterFaultExtendedParametersEntryDate;
    }
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof BACnetFaultParameterFaultExtendedParametersEntryDate)) {
      return false;
    }
    BACnetFaultParameterFaultExtendedParametersEntryDate that =
        (BACnetFaultParameterFaultExtendedParametersEntryDate) o;
    return (getDateValue() == that.getDateValue()) && super.equals(that) && true;
  }

  @Override
  public int hashCode() {
    return Objects.hash(super.hashCode(), getDateValue());
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
