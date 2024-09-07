___TERMS_OF_SERVICE___

By creating or modifying this file you agree to Google Tag Manager's Community
Template Gallery Developer Terms of Service available at
https://developers.google.com/tag-manager/gallery-tos (or such other URL as
Google may provide), as modified from time to time.


___INFO___

{
  "type": "TAG",
  "id": "cvt_temp_public_id",
  "version": 1,
  "securityGroups": [],
  "displayName": "Custom Session Manager",
  "categories": [
    "UTILITY"
  ],
  "brand": {
    "id": "mbaersch",
    "displayName": "mbaersch",
    "thumbnail": "data:image/png;base64,iVBORw0KGgoAAAANSUhEUgAAACAAAAAgCAMAAABEpIrGAAAB/lBMVEUAAADN4/qt0fZ6tPD4/P9joOx3r+/S5vpxqO1BjOhxneqYwfJVnew1jukTeOUAb+NhpO2Es+/B3Pg1g+YAb+NakOh3pOx0oeuLru2GrO11oepRjehUkOhWjehlmel3pOx1n+pgm+pQlekvheeNte+gv/FekuiGru6fvPCqzvVFkuong+ez0vaRufBrpe1woOuGt/DW6Pqjy/RRnOtRnOvB3vnz8/MAb+MAcOQDceOzwOwFcuTd5vOXte4KdOXB3fnx8/bs8Pbn7fW/0vFurvBmqe9VoO1BlOskhOgWd+TR5vvj6/i11vew0/elzfahy/XN3/TI2vSUw/TU3fLE1/KCufJ/t/J2svG3y+9Flus8kesviukcf+c1g+YtfuYkfOUceeUQeOUOduURcuTE3vnN2/ja5/ff6vaXxfXi6vOQwfOLvvOGu/OxyfG80PCtxvCtwPCmwe+iue9jqO+3yO61x+6zxe5gpu5dpO6Hre14pexSnexOnOxKmeyNr+t3outvoettnetlmepbmOphkelOkelJkOkzjelbkuhQjOhKi+cfgucVe+bJ1vfp7fa81vatyvbU4/WeyfWQs/PO2vK/1PF5tPFysPC5ze94nu+svu2Bqu2zwex/qex0muxkmuo2juo1jepZi+pWj+hBiugsiOgriOg+heYUeuYKceS3QxbFAAAANnRSTlMAgEBACL+AM7+/qYCAgICAfm1A/Pz58vLv7+Xl3tHIv7+/v7+npZiTiICAgHNmX1ZJQEBAPx+qfoZPAAACBUlEQVQ4y5XTxXbbQACFYdV27HBTZmbmuVZkTt3WzMx2qEkaZmwYy8xMb1l1rCM5TbzIv9HifkeLmTPMqjbRmKLVgHayKNhadQQoqZIzRTtTyoMKxXqTQsEo36VAyw4r1+zXlhYmAXz/oNUOzXLA4tHklsL9sg5Aor+J0EzhJQDsqQIg+wWMGwmfr7PBxn+6WLCnC8Allr1HaLVQq988MJDnaZRI+3UL+D0P1H9yudxHE/HpcEIE+zBORKAG31cb6UBKJuwXkTQVAjXfjJFM4ZAA9qOLiICfqekmfqQUdL/BsncloMY/wnHcQ5JA/iyUmCVi73XZbCaT+b2y0ku0qKbgHLol0B+Px5eX7/A9I2HsoWAzaiXQ9/NHLBabn//yOUrqcH8tCEejt/kikciYCKrxVgKvx0ZHR0Zu8ZlJO3ZSUIlhCbQPDg4M9PSYzebHpBPlFJzfnjaI4MVNvlehUOilh0yjkqFtQ50I/MFgMBAItLW1GjQsK5x1OaZE4GltafF6vc3NDUSLXUy+qxbpF+6nLpfL6XQ+IhoOFxih40hrBPDE4XDY7Xa9wfgNZYzYMSwKolGv19fXNxLjBGauSEB1AEkfBU1Wq9VGiGYBCfmqJ7MXrFa8U1OHBTuEXaxUB26yz+92e3qHLECZivk/+UEdhNiJCma9VDWHP83NTe8+K2M20F8wk67w8GCq+QAAAABJRU5ErkJggg\u003d\u003d"
  },
  "description": "Creates and manages a cookie with a timestamp + random id and limited lifetime for manual session handling. Optionally counts sessions in a second, persistent cookie.",
  "containerContexts": [
    "WEB"
  ]
}

___TEMPLATE_PARAMETERS___

[
  {
    "type": "TEXT",
    "name": "sCookieDomain",
    "displayName": "Cookie Domain",
    "simpleValueType": true,
    "help": "Leave blank for current host"
  },
  {
    "type": "TEXT",
    "name": "sessionMinutes",
    "displayName": "Session duration (minutes)",
    "simpleValueType": true,
    "valueValidators": [
      {
        "type": "POSITIVE_NUMBER"
      }
    ],
    "defaultValue": 30
  },
  {
    "type": "CHECKBOX",
    "name": "countSessions",
    "checkboxText": "Use session counter",
    "simpleValueType": true,
    "defaultValue": true,
    "help": "Activate to create a second cookie that counts sessions for the same browser"
  },
  {
    "type": "CHECKBOX",
    "name": "pushEvent",
    "checkboxText": "Push session info to dataLayer",
    "simpleValueType": true,
    "defaultValue": true
  },
  {
    "type": "TEXT",
    "name": "eventName",
    "displayName": "Event Name",
    "simpleValueType": true,
    "help": "Enter event name for dataLayer push. Event will contain a \"sessionInfo\" key with ID, start timestamp and new session flag.",
    "defaultValue": "sessionReady",
    "enablingConditions": [
      {
        "paramName": "pushEvent",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  },
  {
    "type": "CHECKBOX",
    "name": "setCustomNames",
    "checkboxText": "Custom cookie names",
    "simpleValueType": true
  },
  {
    "type": "GROUP",
    "name": "grpNames",
    "displayName": "Set cookie Names",
    "groupStyle": "NO_ZIPPY",
    "subParams": [
      {
        "type": "TEXT",
        "name": "sessionMarkerCookie",
        "displayName": "Session id cookie name",
        "simpleValueType": true,
        "defaultValue": "_smarker"
      },
      {
        "type": "TEXT",
        "name": "sNumCookieName",
        "displayName": "Session number cookie name",
        "simpleValueType": true,
        "defaultValue": "_snum"
      }
    ],
    "enablingConditions": [
      {
        "paramName": "setCustomNames",
        "paramValue": true,
        "type": "EQUALS"
      }
    ]
  }
]


___SANDBOXED_JS_FOR_WEB_TEMPLATE___

const makeString = require('makeString');
const Math = require('Math');
const getTimestampMillis = require('getTimestampMillis');
const generateRandom = require('generateRandom');
const getCookieValues = require('getCookieValues');
const setCookie = require('setCookie');
const makeNumber = require('makeNumber');
const dataLayerPush = require('createQueue')('dataLayer');
  
let sNumCookieName = data.sNumCookieName || "_snum",                 
    sessionMarkerCookie = data.sessionMarkerCookie || "_smarker",   
    sessionMinutes = makeNumber(data.sessionMinutes||"30"),
    sCookieDomain = data.sCookieDomain;  

let sessionMarker = getCookieValues(sessionMarkerCookie)[0];

let timeStamp, sessionId, isNewSession = false;

/************************************** START *******************************************/  

let cOptions = {"max-age":0, "path":"/", "samesite": "lax"};
if (sCookieDomain) cOptions.domain = sCookieDomain;

let snum = makeNumber(getCookieValues(sNumCookieName)[0])||0;

//new session?
if (!sessionMarker) {
  
  isNewSession = true;
  
  //create new session id 
  timeStamp = makeString(Math.round(getTimestampMillis() / 1000));
  sessionId = generateRandom(1000000000, 9999999999);
  sessionMarker = timeStamp + "." + sessionId;
  
  //read and increment session number, if defined
  if (data.countSessions === true) { 
    snum++;
    cOptions["max-age"] = 60*60*24*365;
    setCookie(sNumCookieName, makeString(snum), cOptions);
  }
} else {
  let sessionInfo = sessionMarker.split("."); 
  timeStamp = sessionInfo[0];
  sessionId = sessionInfo[1];
}

//create or update session marker cookie with existing or new marker
//expires after x minutes
cOptions["max-age"] = 60 * sessionMinutes;
setCookie(sessionMarkerCookie, sessionMarker, cOptions);

//send dataLayer push
if (data.pushEvent || data.eventName)
  dataLayerPush({
    event: data.eventName||"sessionReady",
    sessionInfo: {sessionStarted: timeStamp, 
                  sessionHash: sessionId,
                  sessionNumber: snum,
                  sessionCookieValue: timeStamp+"."+sessionId,
                  isNewSession: isNewSession
                 }
  });

data.gtmOnSuccess();


___WEB_PERMISSIONS___

[
  {
    "instance": {
      "key": {
        "publicId": "get_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "cookieAccess",
          "value": {
            "type": 1,
            "string": "any"
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "set_cookies",
        "versionId": "1"
      },
      "param": [
        {
          "key": "allowedCookies",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "name"
                  },
                  {
                    "type": 1,
                    "string": "domain"
                  },
                  {
                    "type": 1,
                    "string": "path"
                  },
                  {
                    "type": 1,
                    "string": "secure"
                  },
                  {
                    "type": 1,
                    "string": "session"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "*"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  },
                  {
                    "type": 1,
                    "string": "any"
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  },
  {
    "instance": {
      "key": {
        "publicId": "access_globals",
        "versionId": "1"
      },
      "param": [
        {
          "key": "keys",
          "value": {
            "type": 2,
            "listItem": [
              {
                "type": 3,
                "mapKey": [
                  {
                    "type": 1,
                    "string": "key"
                  },
                  {
                    "type": 1,
                    "string": "read"
                  },
                  {
                    "type": 1,
                    "string": "write"
                  },
                  {
                    "type": 1,
                    "string": "execute"
                  }
                ],
                "mapValue": [
                  {
                    "type": 1,
                    "string": "dataLayer"
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": true
                  },
                  {
                    "type": 8,
                    "boolean": false
                  }
                ]
              }
            ]
          }
        }
      ]
    },
    "clientAnnotations": {
      "isEditedByUser": true
    },
    "isRequired": true
  }
]


___TESTS___

scenarios: []


___NOTES___

Created on 7.9.2024, 17:47:50


