# Fingerprinting & Tracking

Device fingerprinting or browser fingerprinting is the systematic collection of information about a remote device, for identification purposes. [Princeton University's WebTAP project](https://webtransparency.cs.princeton.edu/webcensus/#results) did a measurement and analysis of online tracking in 2016. Sites that contain news, arts and sports have the most trackers. Google, Facebook, and Twitter are the only third-party entities present on more than 10% of sites. 

Analysing information about tracking and fingerprinting cannot be separated when viewed from the angle of Big tech dominance on internet. Parazyd from [DarkFi](dark.fi) wrote about this in [Status Quo](https://dark.fi/insights/the-status-quo.html). Gary Kovacs, from Mozilla Corporation, shared about the unconsentual tracking in a [TED talk](https://www.ted.com/talks/gary_kovacs_tracking_our_online_trackers). 

The information in this post is primarily compiled from [Am I Unique](https://www.amiunique.org), [EFF](https://coveryourtracks.eff.org) and [The Markup](https://themarkup.org/the-breakdown/2020/09/22/i-scanned-the-websites-i-visit-with-blacklight-and-its-horrifying-now-what). There is extensive research and information on these pages on tracking and fingerprinting as well as proposal on how to improve privacy. This is the TL;DR version.

When you visit a website, your browser makes a request for that site. In the background, invisible trackers makes requests to other hidden third parties. These requests can include (but are not limited to):  

- Time zone  
- Browser settings  
- Versions of software installed  
- Broadcast device and browser version  
- Browser’s requests is also extracted by third-party ad networks, which are relying on cookie tracking, and browser fingerprinting.
- Screen resolution

Trackers can reveal a detailed behavioral profile of online activity, including:  

- Income  
- Political affiliation  
- Level of education  

## Digital fingerprint

Browser and hardware setup are unique information to each user - *a digital fingerprint*. This for example also includes information like computer operating system and screen resolution. In other words characteristics that are more difficult to change.

If the user changes the identifier of the browser to a more common browser, it will not necessarily make the user less identifiable. In combination with other metrics this can stand out, ie. using chrome as identifier but the browser looks like Safari, a combination that is rarely used.

**Canvas fingerprinting**

Fingerprining can identify a user even with cookies being disables. The canvas fingerprinting technique identifies users by drawing shapes and text on the webpage and the differences in features can distinguish one device from another. The canvas is invisible to the user. Here is [a list of more than 15000 sites]((https://webtransparency.cs.princeton.edu/webcensus/canvas_scripts.html)) with canvas fingerprinting scripts.

**Cookies**

Cookies contains information that the website stores in the browser, such as account login information, items bought at an online store, and location. With this information it's possible to link all user activities. Cookies track users until the cookies are deleted from the browser.

**Facebook pixel tracking**

Facebook is tracking users, as well as non users, with [Facebook Pixel](https://mashable.com/article/blacklight-tool-spotlights-facebook-pixel) even when they are not logged in. If the user for example makes a purchase, this information is then tied to the user's facebook acount and can reveal the user's real identity.

**Google tracking**

Google share in their [privacy policy](https://policies.google.com/privacy?hl=en) the extent of their tracking of anyone using internet.

This information collected and used include the language of the user, the people the user is connected to online, YouTube videos that might be of interest, browser type and settings, device type and settings, operating system, mobile network information including carrier name, phone number, and application version number. Google also collect information about the interaction of apps, browsers, and devices with Google services, including IP address, crash reports, system activity, date and time as well as:

- Terms used for searches.
- Videos watched.
- Views and interactions with content and ads.
- Voice and audio information.
- Purchase activity.  
- Activity on third-party sites and apps that use their services.

## How to disable cookies

*Note: different browsers may have different names than this and some options may not be available. Users are encouraged to learn more about the browser they're using.*

To disable cookies, go to the browser *Settings* then to *Privacy and Security* where it is possible to select:  

- *Delete cookies and site data* when browser is closed.  
- *Clear data* to remove existing cookies.  
- De-select *Remember browser and download history*.  
- Choose *Block new requests asking to access your location*  
- De-select *Remember search and form history*.

## Privacy inspection tools

- [Blacklight](https://themarkup.org/blacklight) is a privacy inspection tool. When going to a website it will tell the user how they may be tracked through: 

- Ad trackers.  
- Third-party cookies.  
- Tracking that evades cookie blockers.  
- Session recording services (such a mouse click and scrolling, anything typed into a form even if not submitted, including sensitive information such as passwords and credit card numbers). [Inspectlet](https://www.inspectlet.com/) is such a surveillance tool.  
- Capturing user keystrokes (ie. logging of entered information such as name, family-name, given-name which matched anon user with postal addresses).

    [Here](https://themarkup.org/blacklight/2020/09/22/how-we-built-a-real-time-privacy-inspector#how-we-analyzed-each-type-of-tracking) is more information about each of the points above.

- [Lightbeam](https://addons.mozilla.org/en-US/firefox/addon/lightbeam-chikl/?utm_source=addons.mozilla.org&utm_medium=referral&utm_content=search) is a browser extension which show the relationships between third parties and the sites you visit.

- [Am I Unique](https://www.amiunique.org)

## Fingerprint resistant browsers

Browsers such as [Tor Browser](https://www.torproject.org/download/) and [Brave](https://brave.com/) are fingerprint resistant and they make the fingerprint less unique. Unique means more identifiable, which is something to avoid if we aim for privacy.
[Privacy Tools](https://www.privacytools.io/private-browser) provides a list of browsers which are provacy oriented, including increased protection against tracking and fingerprinting as well as ad-blocking.

**Ad-blockers**

Ad blockers are browser extensions that stops advertisers and other third-party trackers. 

- [Privacy Badger](https://privacybadger.org/) 
- [Ghostery](https://www.ghostery.com/ghostery-ad-blocker)  
- [uBlock](https://ublockorigin.com/)
