/*
Licensed to the Apache Software Foundation (ASF) under one
or more contributor license agreements.  See the NOTICE file
distributed with this work for additional information
regarding copyright ownership.  The ASF licenses this file
to you under the Apache License, Version 2.0 (the
"License"); you may not use this file except in compliance
with the License.  You may obtain a copy of the License at

http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing,
software distributed under the License is distributed on an
"AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
KIND, either express or implied.  See the License for the
specific language governing permissions and limitations
under the License.
*/

#ifndef _PLC_IO_EXCEPTION
#define _PLC_IO_EXCEPTION

#include "PlcException.h"

namespace org
{
	namespace apache
	{
		namespace plc4x
		{
			namespace cpp
			{
				namespace api
				{
					namespace exceptions
					{
						/**
						 * Base exception for all IO related exceptions.
						 */
						class PlcIoException : public PlcException
						{
							public:
								explicit PlcIoException(const std::string& strMessage): PlcException(strMessage) {}
								PlcIoException(const std::string& strMessage, const std::exception &exException): PlcException(strMessage, exException){}
								explicit PlcIoException(const std::exception& exException): PlcException(exException){}
						};

					}
				}
			}
		}
	}
}

#endif
