# Custom Session Manager

**Custom Tag Template for Google Tag Manager**

Create and manage a session using cookies with custom cookie name, session length, and cookie domain.  

[![Template Status](https://img.shields.io/badge/Community%20Template%20Gallery%20Status-published-green)](https://tagmanager.google.com/gallery/#/owners/mbaersch/templates/custom-session-manager) ![Repo Size](https://img.shields.io/github/repo-size/mbaersch/custom-session-manager) ![License](https://img.shelds.io/github/license/mbaersch/custom-session-manager)

This template can be used to handle a custom session. The tag creates and manages a session with a timestamp, random hash / id and limited lifetime. Optionally counts sessions in a second, persistent cookie. The hash can be used as a limited user id.

## Usage 
Add a tag and enter a **domain name**. If empty, the tag creates cookies for the current host only. The **default session duration** is 30 minutes and can be set to a custom value in the next field.

### Options
You can set the following options:

- **Use session counter:** If enabled, the tag counts sessions in a second, persistent cookie. The cookie value is a running number.
- **Follow Consent Mode:** If enabled, the tag follows the current consent mode and only sets cookies if `analytics_storage` is set to `granted`. If there is no consent, the tag will create new session data every time it is executed.
- **Push session info to dataLayer:** In order to access the session data in other tags, you can push the session data to the dataLayer. You can define the name of the dataLayer event in the next field (default: `sessionReady`). The event will contain a key `sessionInfo` with the session data. Example:

```
dataLayer.push({
  event: "sessionReady",
  sessionInfo: {
    sessionStarted: "1725725327",
    hasCookie: true,
    sessionHash: "8240788178",
    sessionNumber: 1,
    sessionCookieValue: "1725725327.8240788178",
    isNewSession: false
  },
  gtm.uniqueEventId: 259
})
```
The `hasCookie` key will be set to `true` if *Follow Consent Mode" is disabled or consent for `analytics_storage` is granted. If no cookies can be used, the key will be `false` and every push will contain new session data and  `isNewSession` key will anways be `true`.  

### Custom cookie names
Optionally enter custom names for the session id and session counter cookie.

### Triggering
The tag can ideally be triggered by a CMP event or every pageview (depending on your consent set-up). Define it to be executed only once per page to make sure that no duplicate session data is pushed to the dataLayer, if that option is enabled.
