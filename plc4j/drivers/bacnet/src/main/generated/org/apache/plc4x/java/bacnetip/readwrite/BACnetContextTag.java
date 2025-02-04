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

public abstract class BACnetContextTag implements Message {

  // Abstract accessors for discriminator values.
  public abstract BACnetDataType getDataType();

  // Properties.
  protected final BACnetTagHeader header;

  // Arguments.
  protected final Short tagNumberArgument;

  public BACnetContextTag(BACnetTagHeader header, Short tagNumberArgument) {
    super();
    this.header = header;
    this.tagNumberArgument = tagNumberArgument;
  }

  public BACnetTagHeader getHeader() {
    return header;
  }

  public byte getTagNumber() {
    return (byte) (getHeader().getTagNumber());
  }

  public long getActualLength() {
    return (long) (getHeader().getActualLength());
  }

  protected abstract void serializeBACnetContextTagChild(WriteBuffer writeBuffer)
      throws SerializationException;

  public void serialize(WriteBuffer writeBuffer) throws SerializationException {
    PositionAware positionAware = writeBuffer;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();
    int startPos = positionAware.getPos();
    writeBuffer.pushContext("BACnetContextTag");

    // Simple Field (header)
    writeSimpleField("header", header, new DataWriterComplexDefault<>(writeBuffer));

    // Virtual field (doesn't actually serialize anything, just makes the value available)
    byte tagNumber = getTagNumber();
    writeBuffer.writeVirtual("tagNumber", tagNumber);

    // Virtual field (doesn't actually serialize anything, just makes the value available)
    long actualLength = getActualLength();
    writeBuffer.writeVirtual("actualLength", actualLength);

    // Switch field (Serialize the sub-type)
    serializeBACnetContextTagChild(writeBuffer);

    writeBuffer.popContext("BACnetContextTag");
  }

  @Override
  public int getLengthInBytes() {
    return (int) Math.ceil((float) getLengthInBits() / 8.0);
  }

  @Override
  public int getLengthInBits() {
    int lengthInBits = 0;
    BACnetContextTag _value = this;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();

    // Simple field (header)
    lengthInBits += header.getLengthInBits();

    // A virtual field doesn't have any in- or output.

    // A virtual field doesn't have any in- or output.

    // Length of sub-type elements will be added by sub-type...

    return lengthInBits;
  }

  public static BACnetContextTag staticParse(ReadBuffer readBuffer, Object... args)
      throws ParseException {
    PositionAware positionAware = readBuffer;
    if ((args == null) || (args.length != 2)) {
      throw new PlcRuntimeException(
          "Wrong number of arguments, expected 2, but got " + args.length);
    }
    Short tagNumberArgument;
    if (args[0] instanceof Short) {
      tagNumberArgument = (Short) args[0];
    } else if (args[0] instanceof String) {
      tagNumberArgument = Short.valueOf((String) args[0]);
    } else {
      throw new PlcRuntimeException(
          "Argument 0 expected to be of type Short or a string which is parseable but was "
              + args[0].getClass().getName());
    }
    BACnetDataType dataType;
    if (args[1] instanceof BACnetDataType) {
      dataType = (BACnetDataType) args[1];
    } else if (args[1] instanceof String) {
      dataType = BACnetDataType.valueOf((String) args[1]);
    } else {
      throw new PlcRuntimeException(
          "Argument 1 expected to be of type BACnetDataType or a string which is parseable but was "
              + args[1].getClass().getName());
    }
    return staticParse(readBuffer, tagNumberArgument, dataType);
  }

  public static BACnetContextTag staticParse(
      ReadBuffer readBuffer, Short tagNumberArgument, BACnetDataType dataType)
      throws ParseException {
    readBuffer.pullContext("BACnetContextTag");
    PositionAware positionAware = readBuffer;
    int startPos = positionAware.getPos();
    int curPos;
    boolean _lastItem = ThreadLocalHelper.lastItemThreadLocal.get();

    BACnetTagHeader header =
        readSimpleField(
            "header",
            new DataReaderComplexDefault<>(
                () -> BACnetTagHeader.staticParse(readBuffer), readBuffer));
    // Validation
    if (!((header.getActualTagNumber()) == (tagNumberArgument))) {
      throw new ParseAssertException("tagnumber doesn't match");
    }
    // Validation
    if (!((header.getTagClass()) == (TagClass.CONTEXT_SPECIFIC_TAGS))) {
      throw new ParseValidationException("should be a context tag");
    }
    byte tagNumber = readVirtualField("tagNumber", byte.class, header.getTagNumber());
    long actualLength = readVirtualField("actualLength", long.class, header.getActualLength());
    // Validation
    if (!(((header.getLengthValueType()) != (6)) && ((header.getLengthValueType()) != (7)))) {
      throw new ParseAssertException("length 6 and 7 reserved for opening and closing tag");
    }

    // Switch Field (Depending on the discriminator values, passes the instantiation to a sub-type)
    BACnetContextTagBuilder builder = null;
    if (EvaluationHelper.equals(dataType, BACnetDataType.NULL)) {
      builder =
          BACnetContextTagNull.staticParseBACnetContextTagBuilder(
              readBuffer, header, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.BOOLEAN)) {
      builder =
          BACnetContextTagBoolean.staticParseBACnetContextTagBuilder(
              readBuffer, header, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.UNSIGNED_INTEGER)) {
      builder =
          BACnetContextTagUnsignedInteger.staticParseBACnetContextTagBuilder(
              readBuffer, header, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.SIGNED_INTEGER)) {
      builder =
          BACnetContextTagSignedInteger.staticParseBACnetContextTagBuilder(
              readBuffer, header, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.REAL)) {
      builder =
          BACnetContextTagReal.staticParseBACnetContextTagBuilder(
              readBuffer, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.DOUBLE)) {
      builder =
          BACnetContextTagDouble.staticParseBACnetContextTagBuilder(
              readBuffer, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.OCTET_STRING)) {
      builder =
          BACnetContextTagOctetString.staticParseBACnetContextTagBuilder(
              readBuffer, header, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.CHARACTER_STRING)) {
      builder =
          BACnetContextTagCharacterString.staticParseBACnetContextTagBuilder(
              readBuffer, header, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.BIT_STRING)) {
      builder =
          BACnetContextTagBitString.staticParseBACnetContextTagBuilder(
              readBuffer, header, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.ENUMERATED)) {
      builder =
          BACnetContextTagEnumerated.staticParseBACnetContextTagBuilder(
              readBuffer, header, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.DATE)) {
      builder =
          BACnetContextTagDate.staticParseBACnetContextTagBuilder(
              readBuffer, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.TIME)) {
      builder =
          BACnetContextTagTime.staticParseBACnetContextTagBuilder(
              readBuffer, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.BACNET_OBJECT_IDENTIFIER)) {
      builder =
          BACnetContextTagObjectIdentifier.staticParseBACnetContextTagBuilder(
              readBuffer, tagNumberArgument, dataType);
    } else if (EvaluationHelper.equals(dataType, BACnetDataType.UNKNOWN)) {
      builder =
          BACnetContextTagUnknown.staticParseBACnetContextTagBuilder(
              readBuffer, actualLength, tagNumberArgument, dataType);
    }
    if (builder == null) {
      throw new ParseException(
          "Unsupported case for discriminated type"
              + " parameters ["
              + "dataType="
              + dataType
              + "]");
    }

    readBuffer.closeContext("BACnetContextTag");
    // Create the instance
    BACnetContextTag _bACnetContextTag = builder.build(header, tagNumberArgument);
    return _bACnetContextTag;
  }

  public interface BACnetContextTagBuilder {
    BACnetContextTag build(BACnetTagHeader header, Short tagNumberArgument);
  }

  @Override
  public boolean equals(Object o) {
    if (this == o) {
      return true;
    }
    if (!(o instanceof BACnetContextTag)) {
      return false;
    }
    BACnetContextTag that = (BACnetContextTag) o;
    return (getHeader() == that.getHeader()) && true;
  }

  @Override
  public int hashCode() {
    return Objects.hash(getHeader());
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
