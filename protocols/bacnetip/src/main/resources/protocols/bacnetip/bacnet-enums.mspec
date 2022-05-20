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

// Table 23-1 for overview

// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 ErrorClass
    ['0x0000' DEVICE          ]
    ['0x0001' OBJECT          ]
    ['0x0002' PROPERTY        ]
    ['0x0003' RESOURCES       ]
    ['0x0004' SECURITY        ]
    ['0x0005' SERVICES        ]
    ['0x0006' VT              ]
    ['0x0007' COMMUNICATION   ]

    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 ErrorCode
    ['123'  ABORT_APDU_TOO_LONG                       ]
    ['124'  ABORT_APPLICATION_EXCEEDED_REPLY_TIME     ]
    ['51'   ABORT_BUFFER_OVERFLOW                     ]
    ['135'  ABORT_INSUFFICIENT_SECURITY               ]
    ['52'   ABORT_INVALID_APDU_IN_THIS_STATE          ]
    ['56'   ABORT_OTHER                               ]
    ['125'  ABORT_OUT_OF_RESOURCES                    ]
    ['53'   ABORT_PREEMPTED_BY_HIGHER_PRIORITY_TASK   ]
    ['55'   ABORT_PROPRIETARY                         ]
    ['136'  ABORT_SECURITY_ERROR                      ]
    ['54'   ABORT_SEGMENTATION_NOT_SUPPORTED          ]
    ['126'  ABORT_TSM_TIMEOUT                         ]
    ['127'  ABORT_WINDOW_SIZE_OUT_OF_RANGE            ]
    ['85'   ACCESS_DENIED                             ]
    ['115'  ADDRESSING_ERROR                          ]
    ['86'   BAD_DESTINATION_ADDRESS                   ]
    ['87'   BAD_DESTINATION_DEVICE_ID                 ]
    ['88'   BAD_SIGNATURE                             ]
    ['89'   BAD_SOURCE_ADDRESS                        ]
    ['90'   BAD_TIMESTAMP                             ]
    ['82'   Busy                                      ]
    ['91'   CANNOT_USE_KEY                            ]
    ['92'   CANNOT_VERIFY_MESSAGE_ID                  ]
    ['41'   CHARACTER_SET_NOT_SUPPORTED               ]
    ['83'   COMMUNICATION_DISABLED                    ]
    ['2'    CONFIGURATION_IN_PROGRESS                 ]
    ['93'   CORRECT_KEY_REVISION                      ]
    ['43'   COV_SUBSCRIPTION_FAILED                   ]
    ['47'   DATATYPE_NOT_SUPPORTED                    ]
    ['120'  DELETE_FDT_ENTRY_FAILED                   ]
    ['94'   DESTINATION_DEVICE_ID_REQUIRED            ]
    ['3'    DEVICE_BUSY                               ]
    ['121'  DISTRIBUTE_BROADCAST_FAILED               ]
    ['137'  DUPLICATE_ENTRY                           ]
    ['95'   DUPLICATE_MESSAGE                         ]
    ['48'   DUPLICATE_NAME                            ]
    ['49'   DUPLICATE_OBJECT_ID                       ]
    ['4'    DYNAMIC_CREATION_NOT_SUPPORTED            ]
    ['96'   ENCRYPTION_NOT_CONFIGURED                 ]
    ['97'   ENCRYPTION_REQUIRED                       ]
    ['5'    FILE_ACCESS_DENIED                        ]
    ['128'  FILE_FULL                                 ]
    ['129'  INCONSISTENT_CONFIGURATION                ]
    ['130'  INCONSISTENT_OBJECT_TYPE                  ]
    ['7'    INCONSISTENT_PARAMETERS                   ]
    ['8'    INCONSISTENT_SELECTION_CRITERION          ]
    ['98'   INCORRECT_KEY                             ]
    ['131'  INTERNAL_ERROR                            ]
    ['42'   INVALID_ARRAY_INDEX                       ]
    ['46'   INVALID_CONFIGURATION_DATA                ]
    ['9'    INVALID_DATA_TYPE                         ]
    ['13'   D_PARAMETER_DATA_TYPE                     ]
    ['57'   INVALID_TAG                               ]
    ['14'   INVALID_TIMESTAMP                         ]
    ['138'  INVALID_VALUE_IN_THIS_STATE               ]
    ['100'  KEY_UPDATE_IN_PROGRESS                    ]
    ['81'   LIST_ELEMENT_NOT_FOUND                    ]
    ['75'   LOG_BUFFER_FULL                           ]
    ['76'   LOGGED_VALUE_PURGED                       ]
    ['101'  MALFORMED_MESSAGE                         ]
    ['113'  MESSAGE_TOO_LONG                          ]
    ['16'   MISSING_REQUIRED_PARAMETER                ]
    ['58'   NETWORK_DOWN                              ]
    ['74'   NO_ALARM_CONFIGURED                       ]
    ['17'   NO_OBJECTS_OF_SPECIFIED_TYPE              ]
    ['77'   NO_PROPERTY_SPECIFIED                     ]
    ['18'   NO_SPACE_FOR_OBJECT                       ]
    ['19'   NO_SPACE_TO_ADD_LIST_ELEMENT              ]
    ['20'   NO_SPACE_TO_WRITE_PROPERTY                ]
    ['21'   NO_VT_SESSIONS_AVAILABLE                  ]
    ['132'  NOT_CONFIGURED                            ]
    ['78'   NOT_CONFIGURED_FOR_TRIGGERED_LOGGING      ]
    ['44'   NOT_COV_PROPERTY                          ]
    ['102'  NOT_KEY_SERVER                            ]
    ['110'  NOT_ROUTER_TO_DNET                        ]
    ['23'   OBJECT_DELETION_NOT_PERMITTED             ]
    ['24'   OBJECT_IDENTIFIER_ALREADY_EXISTS          ]
    ['25'   OPERATIONAL_PROBLEM                       ]
    ['45'   OPTIONAL_FUNCTIONALITY_NOT_SUPPORTED      ]
    ['0'    OTHER                                     ]
    ['133'  OUT_OF_MEMORY                             ]
    ['80'   PARAMETER_OUT_OF_RANGE                    ]
    ['26'   PASSWORD_FAILURE                          ]
    ['22'   PROPERTY_IS_NOT_A_LIST                    ]
    ['50'   PROPERTY_IS_NOT_AN_ARRAY                  ]
    ['27'   READ_ACCESS_DENIED                        ]
    ['117'  READ_BDT_FAILED                           ]
    ['119'  READ_FDT_FAILED                           ]
    ['118'  REGISTER_FOREIGN_DEVICE_FAILED            ]
    ['59'   REJECT_BUFFER_OVERFLOW                    ]
    ['60'   REJECT_INCONSISTENT_PARAMETERS            ]
    ['61'   REJECT_INVALID_PARAMETER_DATA_TYPE        ]
    ['62'   REJECT_INVALID_TAG                        ]
    ['63'   REJECT_MISSING_REQUIRED_PARAMETER         ]
    ['69'   REJECT_OTHER                              ]
    ['64'   REJECT_PARAMETER_OUT_OF_RANGE             ]
    ['68'   REJECT_PROPRIETARY                        ]
    ['65'   REJECT_TOO_MANY_ARGUMENTS                 ]
    ['66'   REJECT_UNDEFINED_ENUMERATION              ]
    ['67'   REJECT_UNRECOGNIZED_SERVICE               ]
    ['111'  ROUTER_BUSY                               ]
    ['114'  SECURITY_ERROR                            ]
    ['103'  SECURITY_NOT_CONFIGURED                   ]
    ['29'   SERVICE_REQUEST_DENIED                    ]
    ['104'  SOURCE_SECURITY_REQUIRED                  ]
    ['84'   SUCCESS                                   ]
    ['30'   TIMEOUT                                   ]
    ['105'  TOO_MANY_KEYS                             ]
    ['106'  UNKNOWN_AUTHENTICATION_TYPE               ]
    ['70'   UNKNOWN_DEVICE                            ]
    ['122'  UNKNOWN_FILE_SIZE                         ]
    ['107'  UNKNOWN_KEY                               ]
    ['108'  UNKNOWN_KEY_REVISION                      ]
    ['112'  UNKNOWN_NETWORK_MESSAGE                   ]
    ['31'   UNKNOWN_OBJECT                            ]
    ['32'   UNKNOWN_PROPERTY                          ]
    ['71'   UNKNOWN_ROUTE                             ]
    ['109'  UNKNOWN_SOURCE_MESSAGE                    ]
    ['79'   UNKNOWN_SUBSCRIPTION                      ]
    ['34'   UNKNOWN_VT_CLASS                          ]
    ['35'   UNKNOWN_VT_SESSION                        ]
    ['36'   UNSUPPORTED_OBJECT_TYPE                   ]
    ['72'   VALUE_NOT_INITIALIZED                     ]
    ['37'   VALUE_OUT_OF_RANGE                        ]
    ['134'  VALUE_TOO_LONG                            ]
    ['38'   VT_SESSION_ALREADY_CLOSED                 ]
    ['39'   VT_SESSION_TERMINATION_FAILURE            ]
    ['40'   WRITE_ACCESS_DENIED                       ]
    ['116'  WRITE_BDT_FAILED                          ]

      // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE                ]
]

// Attention: 0-63 ASHRAE. 64-255 proprietary
[enum uint 8 BACnetAbortReason
    ['0'  OTHER                             ]
    ['1'  BUFFER_OVERFLOW                   ]
    ['2'  INVALID_APDU_IN_THIS_STATE        ]
    ['3'  PREEMPTED_BY_HIGHER_PRIORITY_TASK ]
    ['4'  SEGMENTATION_NOT_SUPPORTED        ]
    ['5'  SECURITY_ERROR                    ]
    ['6'  INSUFFICIENT_SECURITY             ]
    ['7'  WINDOW_SIZE_OUT_OF_RANGE          ]
    ['8'  APPLICATION_EXCEEDED_REPLY_TIME   ]
    ['9'  OUT_OF_RESOURCES                  ]
    ['10' TSM_TIMEOUT                       ]
    ['11' APDU_TOO_LONG                     ]

    // plc4x definition
    ['0xFF' VENDOR_PROPRIETARY_VALUE         ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetAccessAuthenticationFactorDisable


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetAccessCredentialDisable


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetAccessCredentialDisableReason


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-511 ASHRAE. 512-65535 proprietary
[enum uint 16 BACnetAccessEvent


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetAccessUserType


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetAccessZoneOccupancyState


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-255 proprietary
[enum uint 8 BACnetAuthorizationExemption


    // plc4x definition
    ['0XFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetAuthorizationMode


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-255 proprietary
[enum uint 8 BACnetBinaryLightingPV


    // plc4x definition
    ['0XFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetDeviceStatus


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-255 ASHRAE. 256-65535 proprietary
[enum uint 8 BACnetDoorAlarmState


    // plc4x definition
    ['0XFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-1023 ASHRAE. 1024-65535 proprietary
[enum uint 16 BACnetDoorStatus


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-255 ASHRAE. 47808-49999 ASHRAE. 50000-65535 proprietary
[enum uint 8 BACnetEngineeringUnits


    // plc4x definition
    ['0XFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-1023 ASHRAE. 1024-65535 proprietary
[enum uint 16 BACnetEscalatorFault


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-1023 ASHRAE. 1024-65535 proprietary
[enum uint 16 BACnetEscalatorMode


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-1023 ASHRAE. 1024-65535 proprietary
[enum uint 16 BACnetEscalatorOperationDirection


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetEventState
    ['0'  NORMAL                                ]
    ['1'  FAULT                                 ]
    ['2'  OFFNORMAL                             ]
    ['3'  HIGH_LIMIT                            ]
    ['4'  LOW_LIMIT                             ]
    ['5'  LIFE_SAVETY_ALARM                     ]

    // plc4x definition
    ['0xFFFF' VENDOR_PROPRIETARY_VALUE          ]
]

// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetEventType
    ['0'  CHANGE_OF_BITSTRING                   ]
    ['1'  CHANGE_OF_STATE                       ]
    ['2'  CHANGE_OF_VALUE                       ]
    ['3'  COMMAND_FAILURE                       ]
    ['4'  FLOATING_LIMIT                        ]
    ['5'  OUT_OF_RANGE                          ]
    ['8'  CHANGE_OF_LIFE_SAFETY                 ]
    ['9'  EXTENDED                              ]
    ['10' BUFFER_READY                          ]
    ['11' UNSIGNED_RANGE                        ]
    ['13' ACCESS_EVENT                          ]
    ['14' DOUBLE_OUT_OF_RANGE                   ]
    ['15' SIGNED_OUT_OF_RANGE                   ]
    ['16' UNSIGNED_OUT_OF_RANGE                 ]
    ['17' CHANGE_OF_CHARACTERSTRING             ]
    ['18' CHANGE_OF_STATUS_FLAGS                ]
    ['19' CHANGE_OF_RELIABILITY                 ]
    ['20' NONE                                  ]
    ['21' CHANGE_OF_DISCRETE_VALUE              ]
    ['22' CHANGE_OF_TIMER                       ]

    // plc4x definition
    ['0xFFFF' VENDOR_PROPRIETARY_VALUE          ]
]

// Attention: 0-255 ASHRAE. 256-65535 proprietary
[enum uint 16 BACnetLifeSafetyMode
    ['0'    OFF                                 ]
    ['1'    ON                                  ]
    ['2'    TEST                                ]
    ['3'    MANNED                              ]
    ['4'    UNMANNED                            ]
    ['5'    ARMED                               ]
    ['6'    DISARMED                            ]
    ['7'    PREARMED                            ]
    ['8'    SLOW                                ]
    ['9'    FAST                                ]
    ['10'   DISCONNECTED                        ]
    ['11'   ENABLED                             ]
    ['12'   DISABLED                            ]
    ['13'   AUTOMATIC_RELEASE_DISABLED          ]
    ['14'   DEFAULT                             ]

      // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE          ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetLifeSafetyOperation


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// Attention: 0-255 ASHRAE. 256-65535 proprietary
[enum uint 16 BACnetLifeSafetyState
    ['0'    QUIET                             ]
    ['1'    PRE_ALARM                         ]
    ['2'    ALARM                             ]
    ['3'    FAULT                             ]
    ['4'    FAULT_PRE_ALARM                   ]
    ['5'    FAULT_ALARM                       ]
    ['6'    NOT_READY                         ]
    ['7'    ACTIVE                            ]
    ['8'    TAMPER                            ]
    ['9'    TEST_ALARM                        ]
    ['10'   TEST_ACTIVE                       ]
    ['11'   TEST_FAULT                        ]
    ['12'   TEST_FAULT_ALARM                  ]
    ['13'   HOLDUP                            ]
    ['14'   DURESS                            ]
    ['15'   TAMPER_ALARM                      ]
    ['16'   ABNORMAL                          ]
    ['17'   EMERGENCY_POWER                   ]
    ['18'   DELAYED                           ]
    ['19'   BLOCKED                           ]
    ['20'   LOCAL_ALARM                       ]
    ['21'   GENERAL_ALARM                     ]
    ['22'   SUPERVISORY                       ]
    ['23'   TEST_SUPERVISORY                  ]

      // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE        ]
]

// TODO: define me
// Attention: 0-1023 ASHRAE. 1024-65535 proprietary
[enum uint 16 BACnetLiftCarDirection


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-1023 ASHRAE. 1024-65535 proprietary
[enum uint 16 BACnetLiftCarDriveStatus


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-1023 ASHRAE. 1024-65535 proprietary
[enum uint 16 BACnetLiftCarMode


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-1023 ASHRAE. 1024-65535 proprietary
[enum uint 16 BACnetLiftFault


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-255 ASHRAE. 256-65535 proprietary
[enum uint 16 BACnetLightingOperation


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-255 proprietary
[enum uint 8 BACnetLightingTransition


    // plc4x definition
    ['0XFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-255 proprietary
[enum uint 8 BACnetLoggingType


    // plc4x definition
    ['0XFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-255 proprietary
[enum uint 8 BACnetMaintenance


    // plc4x definition
    ['0XFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-255 proprietary
[enum uint 8 BACnetNetworkPortCommand


    // plc4x definition
    ['0XFF' VENDOR_PROPRIETARY_VALUE    ]
]

// Attention: 0-63 ASHRAE. 64-255 proprietary
[enum uint 8 BACnetNetworkType
    ['0x0' ETHERNET                             ]
    ['0x1' ARCNET                               ]
    ['0x2' MSTP                                 ]
    ['0x3' PTP                                  ]
    ['0x4' LONTALK                              ]
    ['0x5' IPV4                                 ]
    ['0x6' ZIGBEE                               ]
    ['0x7' VIRTUAL                              ]
    ['0x8' REMOVED_NON_BACNET                   ]
    ['0x9' IPV6                                 ]
    ['0xA' SERIAL                               ]

      // plc4x definition
    ['0XFF' VENDOR_PROPRIETARY_VALUE    ]
]

// Attention: 0-127 ASHRAE. 128-1023 proprietary
[enum uint 10 BACnetObjectType
    ['32' ACCESS_CREDENTIAL                     ]
    ['30' ACCESS_DOOR                           ]
    ['33' ACCESS_POINT                          ]
    ['34' ACCESS_RIGHTS                         ]
    ['35' ACCESS_USER                           ]
    ['36' ACCESS_ZONE                           ]
    ['23' ACCUMULATOR                           ]
    ['52' ALERT_ENROLLMENT                      ]
    ['0'  ANALOG_INPUT                          ]
    ['1'  ANALOG_OUTPUT                         ]
    ['2'  ANALOG_VALUE                          ]
    ['18' AVERAGING                             ]
    ['3'  BINARY_INPUT                          ]
    ['55' BINARY_LIGHTING_OUTPUT                ]
    ['4'  BINARY_OUTPUT                         ]
    ['5'  BINARY_VALUE                          ]
    ['39' BITSTRING_VALUE                       ]
    ['6'  CALENDAR                              ]
    ['53' CHANNEL                               ]
    ['40' CHARACTERSTRING_VALUE                 ]
    ['7'  COMMAND                               ]
    ['37' CREDENTIAL_DATA_INPUT                 ]
    ['41' DATEPATTERN_VALUE                     ]
    ['42' DATE_VALUE                            ]
    ['43' DATETIMEPATTERN_VALUE                 ]
    ['44' DATETIME_VALUE                        ]
    ['8'  DEVICE                                ]
    ['57' ELEVATOR_GROUP                        ]
    ['58' ESCALATOR                             ]
    ['9'  EVENT_ENROLLMENT                      ]
    ['25' EVENT_LOG                             ]
    ['10' FILE                                  ]
    ['26' GLOBAL_GROUP                          ]
    ['11' GROUP                                 ]
    ['45' INTEGER_VALUE                         ]
    ['46' LARGE_ANALOG_VALUE                    ]
    ['21' LIFE_SAFETY_POINT                     ]
    ['22' LIFE_SAFETY_ZONE                      ]
    ['59' LIFT                                  ]
    ['54' LIGHTING_OUTPUT                       ]
    ['28' LOAD_CONTROL                          ]
    ['12' LOOP                                  ]
    ['13' MULTI_STATE_INPUT                     ]
    ['14' MULTI_STATE_OUTPUT                    ]
    ['19' MULTI_STATE_VALUE                     ]
    ['56' NETWORK_PORT                          ]
    ['38' NETWORK_SECURITY                      ]
    ['15' NOTIFICATION_CLASS                    ]
    ['51' NOTIFICATION_FORWARDER                ]
    ['47' OCTETSTRING_VALUE                     ]
    ['48' POSITIVE_INTEGER_VALUE                ]
    ['16' PROGRAM                               ]
    ['24' PULSE_CONVERTER                       ]
    ['17' SCHEDULE                              ]
    ['29' STRUCTURED_VIEW                       ]
    ['49' TIMEPATTERN_VALUE                     ]
    ['50' TIME_VALUE                            ]
    ['31' TIMER                                 ]
    ['20' TREND_LOG                             ]
    ['27' TREND_LOG_MULTIPLE                    ]

    // plc4x Value
    ['0x3FF' VENDOR_PROPRIETARY_VALUE           ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetProgramError


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// Attention: 0-511 ASHRAE. 512-4194303 proprietary
[enum uint 32 BACnetPropertyIdentifier
    ['244' ABSENTEE_LIMIT                       ]
    ['175' ACCEPTED_MODES                       ]
    ['245' ACCESS_ALARM_EVENTS                  ]
    ['246' ACCESS_DOORS                         ]
    ['247' ACCESS_EVENT                         ]
    ['248' ACCESS_EVENT_AUTHENTICATION_FACTOR   ]
    ['249' ACCESS_EVENT_CREDENTIAL              ]
    ['322' ACCESS_EVENT_TAG                     ]
    ['250' ACCESS_EVENT_TIME                    ]
    ['251' ACCESS_TRANSACTION_EVENTS            ]
    ['252' ACCOMPANIMENT                        ]
    ['253' ACCOMPANIMENT_TIME                   ]
    ['1'   ACK_REQUIRED                         ]
    ['0'   ACKED_TRANSITIONS                    ]
    ['2'   ACTION                               ]
    ['3'   ACTION_TEXT                          ]
    ['254' ACTIVATION_TIME                      ]
    ['255' ACTIVE_AUTHENTICATION_POLICY         ]
    ['481' ACTIVE_COV_MULTIPLE_SUBSCRIPTIONS    ]
    ['152' ACTIVE_COV_SUBSCRIPTIONS             ]
    ['4'   ACTIVE_TEXT                          ]
    ['5'   ACTIVE_VT_SESSIONS                   ]
    ['212' ACTUAL_SHED_LEVEL                    ]
    ['176' ADJUST_VALUE                         ]
    ['6'   ALARM_VALUE                          ]
    ['7'   ALARM_VALUES                         ]
    ['193' ALIGN_INTERVALS                      ]
    ['8'   ALL                                  ]
    ['9'   ALL_WRITES_SUCCESSFUL                ]
    ['365' ALLOW_GROUP_DELAY_INHIBIT            ]
    ['399' APDU_LENGTH                          ]
    ['10'  APDU_SEGMENT_TIMEOUT                 ]
    ['11'  APDU_TIMEOUT                         ]
    ['12'  APPLICATION_SOFTWARE_VERSION         ]
    ['13'  ARCHIVE                              ]
    ['256' ASSIGNED_ACCESS_RIGHTS               ]
    ['447' ASSIGNED_LANDING_CALLS               ]
    ['124' ATTEMPTED_SAMPLES                    ]
    ['257' AUTHENTICATION_FACTORS               ]
    ['258' AUTHENTICATION_POLICY_LIST           ]
    ['259' AUTHENTICATION_POLICY_NAMES          ]
    ['260' AUTHENTICATION_STATUS                ]
    ['364' AUTHORIZATION_EXEMPTIONS             ]
    ['261' AUTHORIZATION_MODE                   ]
    ['169' AUTO_SLAVE_DISCOVERY                 ]
    ['125' AVERAGE_VALUE                        ]
    ['338' BACKUP_AND_RESTORE_STATE             ]
    ['153' BACKUP_FAILURE_TIMEOUT               ]
    ['339' BACKUP_PREPARATION_TIME              ]
    ['407' BACNET_IP_GLOBAL_ADDRESS             ]
    ['408' BACNET_IP_MODE                       ]
    ['409' BACNET_IP_MULTICAST_ADDRESS          ]
    ['410' BACNET_IP_NAT_TRAVERSAL              ]
    ['412' BACNET_IP_UDP_PORT                   ]
    ['435' BACNET_IPV6_MODE                     ]
    ['438' BACNET_IPV6_UDP_PORT                 ]
    ['440' BACNET_IPV6_MULTICAST_ADDRESS        ]
    ['327' BASE_DEVICE_SECURITY_POLICY          ]
    ['413' BBMD_ACCEPT_FD_REGISTRATIONS         ]
    ['414' BBMD_BROADCAST_DISTRIBUTION_TABLE    ]
    ['415' BBMD_FOREIGN_DEVICE_TABLE            ]
    ['262' BELONGS_TO                           ]
    ['14'  BIAS                                 ]
    ['342' BIT_MASK                             ]
    ['343' BIT_TEXT                             ]
    ['373' BLINK_WARN_ENABLE                    ]
    ['126' BUFFER_SIZE                          ]
    ['448' CAR_ASSIGNED_DIRECTION               ]
    ['449' CAR_DOOR_COMMAND                     ]
    ['450' CAR_DOOR_STATUS                      ]
    ['451' CAR_DOOR_TEXT                        ]
    ['452' CAR_DOOR_ZONE                        ]
    ['453' CAR_DRIVE_STATUS                     ]
    ['454' CAR_LOAD                             ]
    ['455' CAR_LOAD_UNITS                       ]
    ['456' CAR_MODE                             ]
    ['457' CAR_MOVING_DIRECTION                 ]
    ['458' CAR_POSITION                         ]
    ['15'  CHANGE_OF_STATE_COUNT                ]
    ['16'  CHANGE_OF_STATE_TIME                 ]
    ['416' CHANGES_PENDING                      ]
    ['366' CHANNEL_NUMBER                       ]
    ['127' CLIENT_COV_INCREMENT                 ]
    ['417' COMMAND                              ]
    ['430' COMMAND_TIME_ARRAY                   ]
    ['154' CONFIGURATION_FILES                  ]
    ['367' CONTROL_GROUPS                       ]
    ['19'  CONTROLLED_VARIABLE_REFERENCE        ]
    ['20'  CONTROLLED_VARIABLE_UNITS            ]
    ['21'  CONTROLLED_VARIABLE_VALUE            ]
    ['177' COUNT                                ]
    ['178' COUNT_BEFORE_CHANGE                  ]
    ['179' COUNT_CHANGE_TIME                    ]
    ['22'  COV_INCREMENT                        ]
    ['180' COV_PERIOD                           ]
    ['128' COV_RESUBSCRIPTION_INTERVAL          ]
    ['349' COVU_PERIOD                          ]
    ['350' COVU_RECIPIENTS                      ]
    ['263' CREDENTIAL_DISABLE                   ]
    ['264' CREDENTIAL_STATUS                    ]
    ['265' CREDENTIALS                          ]
    ['266' CREDENTIALS_IN_ZONE                  ]
    ['431' CURRENT_COMMAND_PRIORITY             ]
    ['155' DATABASE_REVISION                    ]
    ['23'  DATE_LIST                            ]
    ['24'  DAYLIGHT_SAVINGS_STATUS              ]
    ['267' DAYS_REMAINING                       ]
    ['25'  DEADBAND                             ]
    ['374' DEFAULT_FADE_TIME                    ]
    ['375' DEFAULT_RAMP_RATE                    ]
    ['376' DEFAULT_STEP_INCREMENT               ]
    ['490' DEFAULT_SUBORDINATE_RELATIONSHIP     ]
    ['393' DEFAULT_TIMEOUT                      ]
    ['484' DEPLOYED_PROFILE_LOCATION            ]
    ['26'  DERIVATIVE_CONSTANT                  ]
    ['27'  DERIVATIVE_CONSTANT_UNITS            ]
    ['28'  DESCRIPTION                          ]
    ['29'  DESCRIPTION_OF_HALT                  ]
    ['30'  DEVICE_ADDRESS_BINDING               ]
    ['31'  DEVICE_TYPE                          ]
    ['156' DIRECT_READING                       ]
    ['328' DISTRIBUTION_KEY_REVISION            ]
    ['329' DO_NOT_HIDE                          ]
    ['226' DOOR_ALARM_STATE                     ]
    ['227' DOOR_EXTENDED_PULSE_TIME             ]
    ['228' DOOR_MEMBERS                         ]
    ['229' DOOR_OPEN_TOO_LONG_TIME              ]
    ['230' DOOR_PULSE_TIME                      ]
    ['231' DOOR_STATUS                          ]
    ['232' DOOR_UNLOCK_DELAY_TIME               ]
    ['213' DUTY_WINDOW                          ]
    ['32'  EFFECTIVE_PERIOD                     ]
    ['386' EGRESS_ACTIVE                        ]
    ['377' EGRESS_TIME                          ]
    ['33'  ELAPSED_ACTIVE_TIME                  ]
    ['459' ELEVATOR_GROUP                       ]
    ['133' ENABLE                               ]
    ['460' ENERGY_METER                         ]
    ['461' ENERGY_METER_REF                     ]
    ['268' ENTRY_POINTS                         ]
    ['34'  ERROR_LIMIT                          ]
    ['462' ESCALATOR_MODE                       ]
    ['354' EVENT_ALGORITHM_INHIBIT              ]
    ['355' EVENT_ALGORITHM_INHIBIT_REF          ]
    ['353' EVENT_DETECTION_ENABLE               ]
    ['35'  EVENT_ENABLE                         ]
    ['351' EVENT_MESSAGE_TEXTS                  ]
    ['352' EVENT_MESSAGE_TEXTS_CONFIG           ]
    ['83'  EVENT_PARAMETERS                     ]
    ['36'  EVENT_STATE                          ]
    ['130' EVENT_TIME_STAMPS                    ]
    ['37'  EVENT_TYPE                           ]
    ['38'  EXCEPTION_SCHEDULE                   ]
    ['368' EXECUTION_DELAY                      ]
    ['269' EXIT_POINTS                          ]
    ['214' EXPECTED_SHED_LEVEL                  ]
    ['270' EXPIRATION_TIME                      ]
    ['271' EXTENDED_TIME_ENABLE                 ]
    ['272' FAILED_ATTEMPT_EVENTS                ]
    ['273' FAILED_ATTEMPTS                      ]
    ['274' FAILED_ATTEMPTS_TIME                 ]
    ['388' FAULT_HIGH_LIMIT                     ]
    ['389' FAULT_LOW_LIMIT                      ]
    ['358' FAULT_PARAMETERS                     ]
    ['463' FAULT_SIGNALS                        ]
    ['359' FAULT_TYPE                           ]
    ['39'  FAULT_VALUES                         ]
    ['418' FD_BBMD_ADDRESS                      ]
    ['419' FD_SUBSCRIPTION_LIFETIME             ]
    ['40'  FEEDBACK_VALUE                       ]
    ['41'  FILE_ACCESS_METHOD                   ]
    ['42'  FILE_SIZE                            ]
    ['43'  FILE_TYPE                            ]
    ['44'  FIRMWARE_REVISION                    ]
    ['464' FLOOR_TEXT                           ]
    ['215' FULL_DUTY_BASELINE                   ]
    ['323' GLOBAL_IDENTIFIER                    ]
    ['465' GROUP_ID                             ]
    ['346' GROUP_MEMBER_NAMES                   ]
    ['345' GROUP_MEMBERS                        ]
    ['467' GROUP_MODE                           ]
    ['45'  HIGH_LIMIT                           ]
    ['468' HIGHER_DECK                          ]
    ['47'  IN_PROCESS                           ]
    ['378' IN_PROGRESS                          ]
    ['46'  INACTIVE_TEXT                        ]
    ['394' INITIAL_TIMEOUT                      ]
    ['181' INPUT_REFERENCE                      ]
    ['469' INSTALLATION_ID                      ]
    ['48'  INSTANCE_OF                          ]
    ['379' INSTANTANEOUS_POWER                  ]
    ['49'  INTEGRAL_CONSTANT                    ]
    ['50'  INTEGRAL_CONSTANT_UNITS              ]
    ['387' INTERFACE_VALUE                      ]
    ['195' INTERVAL_OFFSET                      ]
    ['400' IP_ADDRESS                           ]
    ['401' IP_DEFAULT_GATEWAY                   ]
    ['402' IP_DHCP_ENABLE                       ]
    ['403' IP_DHCP_LEASE_TIME                   ]
    ['404' IP_DHCP_LEASE_TIME_REMAINING         ]
    ['405' IP_DHCP_SERVER                       ]
    ['406' IP_DNS_SERVER                        ]
    ['411' IP_SUBNET_MASK                       ]
    ['436' IPV6_ADDRESS                         ]
    ['442' IPV6_AUTO_ADDRESSING_ENABLE          ]
    ['439' IPV6_DEFAULT_GATEWAY                 ]
    ['443' IPV6_DHCP_LEASE_TIME                 ]
    ['444' IPV6_DHCP_LEASE_TIME_REMAINING       ]
    ['445' IPV6_DHCP_SERVER                     ]
    ['441' IPV6_DNS_SERVER                      ]
    ['437' IPV6_PREFIX_LENGTH                   ]
    ['446' IPV6_ZONE_INDEX                      ]
    ['344' IS_UTC                               ]
    ['330' KEY_SETS                             ]
    ['471' LANDING_CALL_CONTROL                 ]
    ['470' LANDING_CALLS                        ]
    ['472' LANDING_DOOR_STATUS                  ]
    ['275' LAST_ACCESS_EVENT                    ]
    ['276' LAST_ACCESS_POINT                    ]
    ['432' LAST_COMMAND_TIME                    ]
    ['277' LAST_CREDENTIAL_ADDED                ]
    ['278' LAST_CREDENTIAL_ADDED_TIME           ]
    ['279' LAST_CREDENTIAL_REMOVED              ]
    ['280' LAST_CREDENTIAL_REMOVED_TIME         ]
    ['331' LAST_KEY_SERVER                      ]
    ['173' LAST_NOTIFY_RECORD                   ]
    ['369' LAST_PRIORITY                        ]
    ['196' LAST_RESTART_REASON                  ]
    ['157' LAST_RESTORE_TIME                    ]
    ['395' LAST_STATE_CHANGE                    ]
    ['281' LAST_USE_TIME                        ]
    ['166' LIFE_SAFETY_ALARM_VALUES             ]
    ['380' LIGHTING_COMMAND                     ]
    ['381' LIGHTING_COMMAND_DEFAULT_PRIORITY    ]
    ['52'  LIMIT_ENABLE                         ]
    ['182' LIMIT_MONITORING_INTERVAL            ]
    ['420' LINK_SPEED                           ]
    ['422' LINK_SPEED_AUTONEGOTIATE             ]
    ['421' LINK_SPEEDS                          ]
    ['53'  LIST_OF_GROUP_MEMBERS                ]
    ['54'  LIST_OF_OBJECT_PROPERTY_REFERENCES   ]
    ['56'  LOCAL_DATE                           ]
    ['360' LOCAL_FORWARDING_ONLY                ]
    ['57'  LOCAL_TIME                           ]
    ['58'  LOCATION                             ]
    ['233' LOCK_STATUS                          ]
    ['282' LOCKOUT                              ]
    ['283' LOCKOUT_RELINQUISH_TIME              ]
    ['131' LOG_BUFFER                           ]
    ['132' LOG_DEVICE_OBJECT_PROPERTY           ]
    ['134' LOG_INTERVAL                         ]
    ['183' LOGGING_OBJECT                       ]
    ['184' LOGGING_RECORD                       ]
    ['197' LOGGING_TYPE                         ]
    ['390' LOW_DIFF_LIMIT                       ]
    ['59'  LOW_LIMIT                            ]
    ['473' LOWER_DECK                           ]
    ['423' MAC_ADDRESS                          ]
    ['474' MACHINE_ROOM_ID                      ]
    ['158' MAINTENANCE_REQUIRED                 ]
    ['475' MAKING_CAR_CALL                      ]
    ['60'  MANIPULATED_VARIABLE_REFERENCE       ]
    ['170' MANUAL_SLAVE_ADDRESS_BINDING         ]
    ['234' MASKED_ALARM_VALUES                  ]
    ['382' MAX_ACTUAL_VALUE                     ]
    ['62'  MAX_APDU_LENGTH_ACCEPTED             ]
    ['285' MAX_FAILED_ATTEMPTS                  ]
    ['63'  MAX_INFO_FRAMES                      ]
    ['64'  MAX_MASTER                           ]
    ['65'  MAX_PRES_VALUE                       ]
    ['167' MAX_SEGMENTS_ACCEPTED                ]
    ['61'  MAXIMUM_OUTPUT                       ]
    ['135' MAXIMUM_VALUE                        ]
    ['149' MAXIMUM_VALUE_TIMESTAMP              ]
    ['159' MEMBER_OF                            ]
    ['347' MEMBER_STATUS_FLAGS                  ]
    ['286' MEMBERS                              ]
    ['383' MIN_ACTUAL_VALUE                     ]
    ['69'  MIN_PRES_VALUE                       ]
    ['66'  MINIMUM_OFF_TIME                     ]
    ['67'  MINIMUM_ON_TIME                      ]
    ['68'  MINIMUM_OUTPUT                       ]
    ['136' MINIMUM_VALUE                        ]
    ['150' MINIMUM_VALUE_TIMESTAMP              ]
    ['160' MODE                                 ]
    ['70'  MODEL_NAME                           ]
    ['71'  MODIFICATION_DATE                    ]
    ['287' MUSTER_POINT                         ]
    ['288' NEGATIVE_ACCESS_RULES                ]
    ['332' NETWORK_ACCESS_SECURITY_POLICIES     ]
    ['424' NETWORK_INTERFACE_NAME               ]
    ['425' NETWORK_NUMBER                       ]
    ['426' NETWORK_NUMBER_QUALITY               ]
    ['427' NETWORK_TYPE                         ]
    ['476' NEXT_STOPPING_FLOOR                  ]
    ['207' NODE_SUBTYPE                         ]
    ['208' NODE_TYPE                            ]
    ['17'  NOTIFICATION_CLASS                   ]
    ['137' NOTIFICATION_THRESHOLD               ]
    ['72'  NOTIFY_TYPE                          ]
    ['73'  NUMBER_OF_APDU_RETRIES               ]
    ['289' NUMBER_OF_AUTHENTICATION_POLICIES    ]
    ['74'  NUMBER_OF_STATES                     ]
    ['75'  OBJECT_IDENTIFIER                    ]
    ['76'  OBJECT_LIST                          ]
    ['77'  OBJECT_NAME                          ]
    ['78'  OBJECT_PROPERTY_REFERENCE            ]
    ['79'  OBJECT_TYPE                          ]
    ['290' OCCUPANCY_COUNT                      ]
    ['291' OCCUPANCY_COUNT_ADJUST               ]
    ['292' OCCUPANCY_COUNT_ENABLE               ]
    ['294' OCCUPANCY_LOWER_LIMIT                ]
    ['295' OCCUPANCY_LOWER_LIMIT_ENFORCED       ]
    ['296' OCCUPANCY_STATE                      ]
    ['297' OCCUPANCY_UPPER_LIMIT                ]
    ['298' OCCUPANCY_UPPER_LIMIT_ENFORCED       ]
    ['477' OPERATION_DIRECTION                  ]
    ['161' OPERATION_EXPECTED                   ]
    ['80'  OPTIONAL                             ]
    ['81'  OUT_OF_SERVICE                       ]
    ['82'  OUTPUT_UNITS                         ]
    ['333' PACKET_REORDER_TIME                  ]
    ['300' PASSBACK_MODE                        ]
    ['301' PASSBACK_TIMEOUT                     ]
    ['478' PASSENGER_ALARM                      ]
    ['84'  POLARITY                             ]
    ['363' PORT_FILTER                          ]
    ['302' POSITIVE_ACCESS_RULES                ]
    ['384' POWER                                ]
    ['479' POWER_MODE                           ]
    ['185' PRESCALE                             ]
    ['85'  PRESENT_VALUE                        ]
    ['86'  PRIORITY                             ]
    ['87'  PRIORITY_ARRAY                       ]
    ['88'  PRIORITY_FOR_WRITING                 ]
    ['89'  PROCESS_IDENTIFIER                   ]
    ['361' PROCESS_IDENTIFIER_FILTER            ]
    ['485' PROFILE_LOCATION                     ]
    ['168' PROFILE_NAME                         ]
    ['90'  PROGRAM_CHANGE                       ]
    ['91'  PROGRAM_LOCATION                     ]
    ['92'  PROGRAM_STATE                        ]
    ['371' PROPERTY_LIST                        ]
    ['93'  PROPORTIONAL_CONSTANT                ]
    ['94'  PROPORTIONAL_CONSTANT_UNITS          ]
    ['482' PROTOCOL_LEVEL                       ]
    ['95'  PROTOCOL_CONFORMANCE_CLASS           ]
    ['96'  PROTOCOL_OBJECT_TYPES_SUPPORTED      ]
    ['139' PROTOCOL_REVISION                    ]
    ['97'  PROTOCOL_SERVICES_SUPPORTED          ]
    ['98'  PROTOCOL_VERSION                     ]
    ['186' PULSE_RATE                           ]
    ['99'  READ_ONLY                            ]
    ['303' REASON_FOR_DISABLE                   ]
    ['100' REASON_FOR_HALT                      ]
    ['102' RECIPIENT_LIST                       ]
    ['141' RECORD_COUNT                         ]
    ['140' RECORDS_SINCE_NOTIFICATION           ]
    ['483' REFERENCE_PORT                       ]
    ['480' REGISTERED_CAR_CALL                  ]
    ['103' RELIABILITY                          ]
    ['357' RELIABILITY_EVALUATION_INHIBIT       ]
    ['104' RELINQUISH_DEFAULT                   ]
    ['491' REPRESENTS                           ]
    ['218' REQUESTED_SHED_LEVEL                 ]
    ['348' REQUESTED_UPDATE_INTERVAL            ]
    ['105' REQUIRED                             ]
    ['106' RESOLUTION                           ]
    ['202' RESTART_NOTIFICATION_RECIPIENTS      ]
    ['340' RESTORE_COMPLETION_TIME              ]
    ['341' RESTORE_PREPARATION_TIME             ]
    ['428' ROUTING_TABLE                        ]
    ['187' SCALE                                ]
    ['188' SCALE_FACTOR                         ]
    ['174' SCHEDULE_DEFAULT                     ]
    ['235' SECURED_STATUS                       ]
    ['334' SECURITY_PDU_TIMEOUT                 ]
    ['335' SECURITY_TIME_WINDOW                 ]
    ['107' SEGMENTATION_SUPPORTED               ]
    ['372' SERIAL_NUMBER                        ]
    ['108' SETPOINT                             ]
    ['109' SETPOINT_REFERENCE                   ]
    ['162' SETTING                              ]
    ['219' SHED_DURATION                        ]
    ['220' SHED_LEVEL_DESCRIPTIONS              ]
    ['221' SHED_LEVELS                          ]
    ['163' SILENCED                             ]
    ['171' SLAVE_ADDRESS_BINDING                ]
    ['172' SLAVE_PROXY_ENABLE                   ]
    ['142' START_TIME                           ]
    ['396' STATE_CHANGE_VALUES                  ]
    ['222' STATE_DESCRIPTION                    ]
    ['110' STATE_TEXT                           ]
    ['111' STATUS_FLAGS                         ]
    ['143' STOP_TIME                            ]
    ['144' STOP_WHEN_FULL                       ]
    ['391' STRIKE_COUNT                         ]
    ['209' STRUCTURED_OBJECT_LIST               ]
    ['210' SUBORDINATE_ANNOTATIONS              ]
    ['211' SUBORDINATE_LIST                     ]
    ['487' SUBORDINATE_NODE_TYPES               ]
    ['489' SUBORDINATE_RELATIONSHIPS            ]
    ['488' SUBORDINATE_TAGS                     ]
    ['362' SUBSCRIBED_RECIPIENTS                ]
    ['305' SUPPORTED_FORMAT_CLASSES             ]
    ['304' SUPPORTED_FORMATS                    ]
    ['336' SUPPORTED_SECURITY_ALGORITHMS        ]
    ['112' SYSTEM_STATUS                        ]
    ['486' TAGS                                 ]
    ['306' THREAT_AUTHORITY                     ]
    ['307' THREAT_LEVEL                         ]
    ['113' TIME_DELAY                           ]
    ['356' TIME_DELAY_NORMAL                    ]
    ['114' TIME_OF_ACTIVE_TIME_RESET            ]
    ['203' TIME_OF_DEVICE_RESTART               ]
    ['115' TIME_OF_STATE_COUNT_RESET            ]
    ['392' TIME_OF_STRIKE_COUNT_RESET           ]
    ['204' TIME_SYNCHRONIZATION_INTERVAL        ]
    ['116' TIME_SYNCHRONIZATION_RECIPIENTS      ]
    ['397' TIMER_RUNNING                        ]
    ['398' TIMER_STATE                          ]
    ['145' TOTAL_RECORD_COUNT                   ]
    ['308' TRACE_FLAG                           ]
    ['164' TRACKING_VALUE                       ]
    ['309' TRANSACTION_NOTIFICATION_CLASS       ]
    ['385' TRANSITION                           ]
    ['205' TRIGGER                              ]
    ['117' UNITS                                ]
    ['118' UPDATE_INTERVAL                      ]
    ['337' UPDATE_KEY_SET_TIMEOUT               ]
    ['189' UPDATE_TIME                          ]
    ['310' USER_EXTERNAL_IDENTIFIER             ]
    ['311' USER_INFORMATION_REFERENCE           ]
    ['317' USER_NAME                            ]
    ['318' USER_TYPE                            ]
    ['319' USES_REMAINING                       ]
    ['119' UTC_OFFSET                           ]
    ['206' UTC_TIME_SYNCHRONIZATION_RECIPIENTS  ]
    ['146' VALID_SAMPLES                        ]
    ['190' VALUE_BEFORE_CHANGE                  ]
    ['192' VALUE_CHANGE_TIME                    ]
    ['191' VALUE_SET                            ]
    ['433' VALUE_SOURCE                         ]
    ['434' VALUE_SOURCE_ARRAY                   ]
    ['151' VARIANCE_VALUE                       ]
    ['120' VENDOR_IDENTIFIER                    ]
    ['121' VENDOR_NAME                          ]
    ['326' VERIFICATION_TIME                    ]
    ['429' VIRTUAL_MAC_ADDRESS_TABLE            ]
    ['122' VT_CLASSES_SUPPORTED                 ]
    ['123' WEEKLY_SCHEDULE                      ]
    ['147' WINDOW_INTERVAL                      ]
    ['148' WINDOW_SAMPLES                       ]
    ['370' WRITE_STATUS                         ]
    ['320' ZONE_FROM                            ]
    ['165' ZONE_MEMBERS                         ]
    ['321' ZONE_TO                              ]

    // plc4x definition
    ['9999' VENDOR_PROPRIETARY_VALUE            ]
]

/* FIXME: this is defined in Table 23-1 as enum but indeed it is a complex object. So name collision from ASHRAE
// TODO: define me
// Attention: 0-63 ASHRAE. 64-254 proprietary
[enum uint 8 BACnetPropertyStates


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]
*/

// Attention: 0-63 ASHRAE. 64-255 proprietary
[enum uint 8 BACnetRejectReason
    ['0x0' OTHER                        ]
    ['0x1' BUFFER_OVERFLOW              ]
    ['0x2' INCONSISTENT_PARAMETERS      ]
    ['0x3' INVALID_PARAMETER_DATA_TYPE  ]
    ['0x4' INVALID_TAG                  ]
    ['0x5' MISSING_REQUIRED_PARAMETER   ]
    ['0x6' PARAMETER_OUT_OF_RANGE       ]
    ['0x7' TOO_MANY_ARGUMENTS           ]
    ['0x8' UNDEFINED_ENUMERATION        ]
    ['0x9' UNRECOGNIZED_SERVICE         ]

    // plc4x definition
    ['0xFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-1023 ASHRAE. 1024-65535 proprietary
[enum uint 16 BACnetRelationship


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetReliability
    ['0'    NO_FAULT_DETECTED                 ]
    ['1'    NO_SENSOR                         ]
    ['2'    OVER_RANGE                        ]
    ['3'    UNDER_RANGE                       ]
    ['4'    OPEN_LOOP                         ]
    ['5'    SHORTED_LOOP                      ]
    ['6'    NO_OUTPUT                         ]
    ['7'    UNRELIABLE_OTHER                  ]
    ['8'    PROCESS_ERROR                     ]
    ['9'    MULTI_STATE_FAULT                 ]
    ['10'   CONFIGURATION_ERROR               ]
    ['12'   COMMUNICATION_FAILURE             ]
    ['13'   MEMBER_FAULT                      ]
    ['14'   MONITORED_OBJECT_FAULT            ]
    ['15'   TRIPPED                           ]
    ['16'   LAMP_FAILURE                      ]
    ['17'   ACTIVATION_FAILURE                ]
    ['18'   RENEW_DHCP_FAILURE                ]
    ['19'   RENEW_FD_REGISTRATION_FAILURE     ]
    ['20'   RESTART_AUTO_NEGOTIATION_FAILURE  ]
    ['21'   RESTART_FAILURE                   ]
    ['22'   PROPRIETARY_COMMAND_FAILURE       ]
    ['23'   FAULTS_LISTED                     ]
    ['24'   REFERENCED_OBJECT_FAULT           ]

      // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE        ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 8 BACnetRestartReason


    // plc4x definition
    ['0XFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetSilencedState


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]

// TODO: define me
// Attention: 0-63 ASHRAE. 64-65535 proprietary
[enum uint 16 BACnetVTClass


    // plc4x definition
    ['0XFFFF' VENDOR_PROPRIETARY_VALUE    ]
]
