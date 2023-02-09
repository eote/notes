---
created: 2022-12-11 15:06:53

author: Eotect Nahn

tags: [firefox,adblock]

source: https://help.adblockplus.org/hc/en-us/articles/360062733293

---

# How to write filters – Adblock Plus

> ## Excerpt
> This guide is designed to help you write and maintain your own Adblock Plus filters. Creating your own filters gives you more control over the things you want to see and don’t want to see on the we...

---
This guide is designed to help you write and maintain your own Adblock Plus filters. Creating your own filters gives you more control over the things you want to see and don’t want to see on the websites that you visit, including ads, images, requests, and scripts.

Important

All filter examples in this guide are only examples and are not meant to be used.

## Table of contents

-   [About Adblock Plus filters](https://help.adblockplus.org/hc/en-us/articles/360062733293#introduction)
-   [Creating filters](https://help.adblockplus.org/hc/en-us/articles/360062733293#creating-filters)
-   [Basic filter rules](https://help.adblockplus.org/hc/en-us/articles/360062733293#basic)
    -   [Defining exception rules](https://help.adblockplus.org/hc/en-us/articles/360062733293#allowlist)
    -   [Matching at the beginning or end of an address](https://help.adblockplus.org/hc/en-us/articles/360062733293#anchors)
    -   [Marking separator characters](https://help.adblockplus.org/hc/en-us/articles/360062733293#separators)
    -   [Comments](https://help.adblockplus.org/hc/en-us/articles/360062733293#comments)
-   [Advanced features](https://help.adblockplus.org/hc/en-us/articles/360062733293#advanced)
    -   [Specifying filter options](https://help.adblockplus.org/hc/en-us/articles/360062733293#options)
        -   [Type options](https://help.adblockplus.org/hc/en-us/articles/360062733293#type-options)
        -   [Inverse type options](https://help.adblockplus.org/hc/en-us/articles/360062733293#inverse-type-options)
        -   [Restriction to third-party/first-party requests](https://help.adblockplus.org/hc/en-us/articles/360062733293#party-requests)
        -   [Domain restrictions](https://help.adblockplus.org/hc/en-us/articles/360062733293#domain-restrictions)
        -   [Sitekey restrictions](https://help.adblockplus.org/hc/en-us/articles/360062733293#sitekey-restrictions)
        -   [Content Security Policies](https://help.adblockplus.org/hc/en-us/articles/360062733293#content-security-policies)
        -   [Redirecting requests to internal resources](https://help.adblockplus.org/hc/en-us/articles/360062733293#rewrite)
            -   [A few notes about using the rewrite option](https://help.adblockplus.org/hc/en-us/articles/360062733293#rewrite-notes)
    -   [Using regular expressions](https://help.adblockplus.org/hc/en-us/articles/360062733293#regexps)
    -   [Special comments](https://help.adblockplus.org/hc/en-us/articles/360062733293#special-comments)
-   [Content filters](https://help.adblockplus.org/hc/en-us/articles/360062733293#content-filters)
    -   [Basic rules](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide_basic)
    -   [Limiting rules to certain domains](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide_domains)
    -   [Attribute selectors](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide_attributes)
    -   [Advanced selectors](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide_css)
    -   [Extended CSS selectors (Adblock Plus-specific)](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide-emulation)
    -   [Exception rules](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide_exceptions)
    -   [Snippet filters](https://help.adblockplus.org/hc/en-us/articles/360062733293#snippets)
    -   [Generic / Specific filters](https://help.adblockplus.org/hc/en-us/articles/360062733293#generic-specific)
-   [Implementing a sitekey on the server](https://help.adblockplus.org/hc/en-us/articles/360062733293#sitekey_server)

## About Adblock Plus filters

The following filter lists come pre-installed with Adblock Plus:

-   Acceptable Ads
-   EasyList (+ bundled language filter list - depending on your browser’s language setting)
-   ABP Anti-circumvention filter list

In addition to these pre-installed filter lists, you can create your own filters. A filter is simply a rule that tells your browser which elements to block. A filter list is a set of rules that tells your browser what to block.

## Creating filters

There are several types of filters, or filter rules, including:

Blocking filters

Applied on the network level to decide whether a request should be blocked.

Content filters

(including hiding filters oftentimes referred to as element hiding filters)

Hide particular elements on a page, including element hiding with extended selectors (emulation) as well as snippets.

Exception filters

Used to unblock certain requests or unhide certain elements on certain websites. Additionally, they can allow certain network requests despite filters that would otherwise block the requests.

Note

Blocking and hiding filters can be set to negate or reverse the effects of other filters. These are then considered **exception filters**.

You can easily create your filter(s) via the Adblock Plus Settings page.

### Adblock Plus (version 3.4 and higher) for all browsers that support WebExtensions API like Chrome, Edge, Firefox, Opera and Yandex Browser:

1.  Click the **Adblock Plus** icon and then click the **gear** icon in the upper-right corner.  
    The _Adblock Plus Settings_ tab opens.
2.  Select the _Advanced_ tab and scroll to the _Create and edit your filter list_ section.
3.  Click **Start creating my filter list**.
4.  Enter your filter and click **Save**.

## Basic filter rules

The most trivial filter you can define is the address of the request you want to block. However, this address often changes every time you open a page. For example, it could be `http://example.com/ads/banner123.gif` where `123` is a random number. Here, blocking the complete address won't help. You’ll need a more general filter, like `http://example.com/ads/banner*.gif`, or even `http://example.com/ads/`, which blocks everything in the “ads” directory.

Note

Make sure that you don’t replace _too much_ with wildcards. The filter `http://example.com/` will block all banners, but it’ll also block everything else from `example.com` that you still might want to see.

### Defining exception rules

If you notice that your filter is blocking something it shouldn't, you might consider using an exception rule rather than removing or matching the filter. Exception rules allow you to define cases where filters shouldn't be applied. Exception rules are no different from filter rules; you can use wildcards or regular expressions.

Example

If you are unhappy with your filter `adv` blocking `http://example.com/advice.html`, you can define an exception rule `@@advice`. You only need to precede it by `@@` to indicate an exception rule.

Exception rules can do more, however. For example, if you specify `$document option`, you’ll get an exception for the entire page. If your exception rule is `@@||example.com^$document` and you open a page from `example.com`, Adblock Plus will be turned off on this page and nothing will be blocked.

### Matching at the beginning or end of an address

Adblock Plus typically treats each filter as if it has a wildcard at its beginning and end (i.e. there’s no difference between the filters `ad` and `*ad*`). While this is usually unproblematic, sometimes you might want the filter you defined to only match at the beginning or the end of an address.

Example

You want to block all Flash, but if you add the filter `swf`, the address `http://example.com/swf/index.html` is also blocked. The solution is to add a pipe symbol (|) to the filter to show that there should be a definite end at this point. For example, the filter `swf|` blocks `http://example.com/annoyingflash.swf` but not `http://example.com/swf/index.html`. And the filter `|http://baddomain.example/` blocks `http://baddomain.example/banner.gif` but not `http://gooddomain.example/analyze?http://baddomain.example`.

You might want to block `http://example.com/banner.gif` as well as `https://example.com/banner.gif` and `http://www.example.com/banner.gif`. You can do this by putting two pipe symbols in front of the filter. This ensures that the filter matches at the beginning of the domain name: `||example.com/banner.gif`, and blocks all of these addresses while not blocking `http://badexample.com/banner.gif` or `http://gooddomain.example/analyze?http://example.com/banner.gif`.

### Marking separator characters

Sometimes, you might need to accept any separator character in a filter. For example, you might write a filter that blocks `http://example.com/` and `http://example.com:8000/` but not `http://example.com.ar/`. Here, the symbol `^` can be used as a placeholder for a single separator character, `http://example.com^`. The separator character can be anything but a letter, a digit, or one of the following: `_`, `-`, `.`, `%`. The end of the address is also accepted as a separator.

In the following example, all separator characters are shown bolded in blue:

http: **//** example.com **:** 8000 **/** foo.bar **?** a **\=** 12 **&** b **\=** %D1%82%D0%B5%D1%81%D1%82

This address can be blocked with the filters `^example.com^` or `^%D1%82%D0%B5%D1%81%D1%82^` or `^foo.bar^`.

Any rule that starts with an exclamation mark (!) is considered a comment. Adblock Plus ignores this rule for actual blocking, so it’s safe to write whatever you want in the comment. You can place a comment rule above a filter to describe its purpose or function, or you can place a comment above your filter list stating your authorship (most filter list authors do this).

## Advanced features

### Specifying filter options

Adblock Plus allows you to specify a number of options to modify the behavior of a filter. These options should be separated with a comma (`,`) after a dollar sign (`$`) at the end of the filter.

Example

/ads/\*$script,match-case

Here, `/ads/*` is the actual filter, and `script` and `match-case` are its options. Currently, the following options are supported:

#### Type options

These determine which types of elements a filter can block (or allowlist in case of an exception rule). Multiple type options can be specified to indicate that the filter should be applied to several types of elements. Possible types include:

-   `script` - external scripts loaded via the HTML script tag
-   `image` - regular images, typically loaded via the HTML img tag
-   `stylesheet` - external CSS stylesheet files
-   `object` - content handled by browser plug-ins, e.g. Flash or Java
-   `xmlhttprequest` - requests started using the [XMLHttpRequest](https://xhr.spec.whatwg.org/) object or [fetch() API](https://fetch.spec.whatwg.org/)
-   `subdocument` - embedded pages, usually included via HTML inline frames (iframes)
-   `ping` - requests started by or [navigator.sendBeacon()](https://developer.mozilla.org/docs/Web/API/Navigator/sendBeacon) (Adblock Plus 2.7.1 or higher is required)
-   `websocket` - requests initiated via [WebSocket object](https://developer.mozilla.org/docs/Web/API/WebSocket) (Adblock Plus 2.8 or higher is required)
-   `webrtc` - connections opened via [RTCPeerConnection instances](https://developer.mozilla.org/docs/Web/API/RTCPeerConnection) to ICE servers (Adblock Plus 1.13.3 or higher for Chrome and Opera, 3.0 or higher for Firefox, is higher required)
-   `document` - the page itself, but only works for [exception rules](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide_exceptions). You can use this option to allowlist an entire iframe or website.
-   `elemhide` - for exception rules only, similar to `document` but only turns off [element hiding rules](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide_basic) on the page rather than all filter rules (Adblock Plus 1.2 or higher is required)
-   `generichide` - for exception rules only, similar to `elemhide` but only turns off [generic element hiding rules](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide_basic) on the page (Adblock Plus 2.6.12 or higher is required)
-   `genericblock` - for exception rules only, just like `generichide` but turns off [generic blocking rules](https://help.adblockplus.org/hc/en-us/articles/360062733293#generic-specific) (Adblock Plus 2.6.12 or higher is required)
-   `popup` - pages opened in a new tab or window **Note**: Filters will not block pop-ups by default, only if the `$popup` type option is specified.
-   `font` - external font files
-   `media` - regular media files like music and video
-   `other` - types of requests not covered in the list above
-   `match-case` - ensures that the filter only applies to requests with matching letter case, e.g. the filter `*/BannerAd.gif$match-case` blocks `http://example.com/BannerAd.gif` but not `http://example.com/bannerad.gif`

#### Inverse type options

These specify which requesttypes the filter **should not** be applied to. Possible inverse type options include ~script, ~image, ~stylesheet, ~object, ~xmlhttprequest, ~subdocument, ~ping, ~websocket, ~webrtc, ~document, ~elemhide, ~other

#### Restriction to third-party/first-party requests

If the third-party option is specified, the filter is only applied to requests from a different origin than the currently viewed page. Similarly, ~third-party restricts the filter to requests from the same origin as the currently viewed page.

#### Domain restrictions

The option `domain=example.com` means that the filter should only be applied on pages from the `example.com` domain. Multiple domains can be specified using `|` as the separator. For the option `domain=example.com|example.net`, the filter is only applied on pages from `example.com` or `example.net` domains. If a domain name is preceded with `~`, the filter **should not** be applied on pages from this domain. For example, `domain=~example.com` means that the filter should be applied on pages from any domain but `example.com` and `domain=example.com|~foo.example.com` restricts the filter to the `example.com` domain with the exception of `foo.example.com` subdomain.

#### Sitekey restrictions

The option `sitekey=abcdsitekeydcba` means that the filter should only be applied on pages that provide a public key and a signature that can be verified by that very same public key that is also contained in the filter (but without the trailing `=`). Multiple sitekeys can be specified using `|` as a separator. For example, the option `sitekey=abcdsitekeydcba|bcdesitekeyedcb` only allows the filter to be applied on pages providing either sitekey `abcdsitekeydcba` or `bcdesitekeyedcb`. This is similar to domain restrictions, but allows for scenarios where a single filter should apply to a very large number of domains. **Note**: Sitekey restrictions require [modifications on the server-side](https://help.adblockplus.org/hc/en-us/articles/360062733293#sitekey_server).

#### Content Security Policies

The option `csp=script-src: 'none'` causes a Content Security Policy header of `script-src: 'none'` to be injected into HTTP responses for requested documents matching the filter (assuming that exception rules with the same option don't also match and that the document isn’t allowlisted). The Content Security Policy `script-src: 'none'` blocks all scripts, including inline, in the document. This filter option should generally be avoided, except as a last resort to counter advanced circumvention. (Adblock Plus 3.1 or higher is required.)

#### Redirecting requests to internal resources

The `rewrite=` option allows the rewriting of URLs (or redirecting requests) to an internal resource in order to deactivate it without causing an error. Indicate the internal resource by name and prefix `abp-resource:` in order to be recognized. For example `$rewrite=abp-resource:blank-js` sends an empty JavaScript. (Adblock Plus 3.5 or higher required.) Available internal resources are:

-   `blank-text` - empty text
-   `blank-css` - empty stylesheet
-   `blank-js` - empty JavaScript
-   `blank-html` - empty HTML document
-   `blank-mp3` - a 0.1s silent MP3 audio file
-   `1x1-transparent-gif` - 1x1 pixel transparent GIF image
-   `2x2-transparent-png` - 2x2 pixels transparent PNG image
-   `3x2-transparent-png` - 3x2 pixels transparent PNG image
-   `32x32-transparent-png` - 32x32 pixels transparent PNG image

Any other value will make the filter have no effect and let the request pass through.

##### A few notes about using the rewrite option

1.  `rewrite=` is restricted to certain domains using the `$domain` filter option. For more information, refer to the [Domain restrictions](https://help.adblockplus.org/hc/en-us/articles/360062733293#domain-restrictions) section of this guide.
2.  `rewrite=` cannot be used together with the `$third-party` filter option, but can be used with `$~third-party`.
3.  The filter pattern has to be `*` or start with `||`.

### Using regular expressions

Adblock Plus supports filters written in regular expressions (regex). For example, the filter `/banner\d+/` matches `banner123` and `banner321` but not `banners`. We recommend checking out Mozilla’s [documentation on regular expressions](https://developer.mozilla.org/docs/Web/JavaScript/Guide/Regular_Expressions) to learn how to write them.

Note

For performance reasons, we recommend avoiding regular expressions if possible.

Special comments only have an effect in downloaded filter lists, not in custom filters. They can set a number of parameters for the filter list:

-   `! Homepage: http://example.com/` - This comment determines which webpage should be linked as filter list homepage.
-   `! Title: FooList` - This comment sets a fixed title for the filter list. If this comment is present, the user is no longer able to change the title.
-   `! Expires: 5 days` - This comment sets the update interval for the filter list. The value can be given in days (e.g. 5 days) or hours (e.g. 8 hours). Any value between 1 hour and 14 days is possible. Note that the update will not necessarily happen after this time interval. The actual update time is slightly randomized and depends on some additional factors to reduce server load.
-   `! Redirect: http://example.com/list.txt` - This comment indicates that the filter list has moved to a new download address. Adblock Plus ignores any file content beyond that comment and immediately tries downloading from the new address. In case of success, the address of the filter list is updated in the settings. This comment is ignored if the new address is the same as the current address, meaning that it can be used to enforce the "canonical" address of the filter list.
-   `! Version: 1234` - This comment defines a numerical version of the filter list. This version number is displayed in issue reports and can be used to verify that the report refers to the current version of the filter list.

## Content Filters

Unfortunately, there are some advertisements that can't be blocked at download time. This is because they’re embedded as text in the webpage itself. For that case, there are filters that run directly on the content of the page. They are split between two main types: element hiding and snippets.

Element hiding filters are designed to indicate which element in the page are to be hidden.

Snippet filters are used to run snippets of code in the page to defeat more complex advertising display.

### Basic rules

Content filters follow the following structure.

<domains><separator><body>

-   `domains` - A domain or a list of comma-separated domain names. May be empty for element hiding filters.
    
-   `separator` - This sequence marks the end of the domain list and the start of the actual content filter. It determine the type of filter. The possible values are list below.
    
-   `body` - The body of the filter, depending on the type.
    

Here is a list of possible values:

| Separator | Type | Body content |
| --- | --- | --- |
| `##` | [Element hiding](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide_basic) | CSS selector (domains may be empty) |
| `#?#` | [Element hiding emulation](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide-emulation) | Extended CSS selector |
| `#@#` | [Element hiding exception](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide_exceptions) | Selector |
| `#$#` | [Snippet filter](https://help.adblockplus.org/hc/en-us/articles/360062733293#snippets) | Snippet |

### Element hiding basic rules

If you look at the source code of the webpage, you might find something like this:

`<div class="textad"> Cheapest tofu, only here and now! </div> <div id="sponsorad"> Really cheap tofu, click here! </div> <textad> Only here you get the best tofu! </textad>`

You’ll need to download the webpage in order to download the advertisements. After the webpage is downloaded, you can hide the advertisement(s) that you don’t want to see.

The example advertisement above is contained inside an element with the class attribute `textad`. The rule `##.textad` hides any such element. Here the separator `##` marks an element hiding rule while the rest (the body) is a CSS selector identifying the elements that need to be hidden. You can hide elements by their ID attribute (similarly, `###sponsorad` hides the second advertisement) and by their name (e.g. `##textad` for the third advertisement).

### Limiting rules to certain domains

Typically, you may want to hide a specific ad on one site, but don't want your rule to be applied to another site. For example, the rule `##.sponsor` might hide valid code on some sites. But, if you write it as `example.com##.sponsor`, it will be applied on `http://example.com/` and `http://something.example.com/`, but not on `http://example.org/`. You can also specify multiple domains by simply separating them with commas: `domain1.example`,`domain2.example`,`domain3.example##.sponsor`.

If a domain name is preceded with `~`, the rule **is not** applied on pages from this domain. For example, `~example.com##.sponsor` is applied on pages from any domain, but `"example.com"` and `example.com,~foo.example.com##.sponsor` make the rule apply on the `"example.com"` domain with the exception of the `"foo.example.com"` subdomain.

Note

Because of how element hiding is implemented, you can limit it only to full domain names. You cannot use any other part of the address and you cannot use `domain` as a replacement for `domain.example,domain.test`.

### Attribute selectors

Some advertisers don't make it easy for you — their text advertisements have neither an ID nor a class attribute. You can use other attributes to hide those, for example `##table[width="80%"]` hides tables with a width attribute set to 80%. If you don't want to specify the full value of the attribute, `##div[title*="adv"]` hides all `div` elements with a title attribute containing the string `"adv"`. You can also check the beginning and the end of an attribute, for example `##div[title^="adv"][title$="ert"]` hides div elements with title starting with `"adv"` and ending with `"ert"`. As you see, you can also use multiple conditions — `table[width="80%"][bgcolor="white"]` matches tables with a width attribute set to 80% and `bgcolor` attribute set to white.

### Advanced selectors

In general, any CSS selector supported by your browser can be used for element hiding. For example the following rule hides anything following a `div` element with class "adheader": ##.adheader + \*. For a full list of CSS selectors, refer to W3C’s [CSS selectors documentation](https://www.w3.org/TR/selectors-3/). Please keep in mind that browsers are slower to process these types of selectors than selectors based on class or ID attribute only.

Note

This functionality is recommended for advanced users. You should be comfortable with CSS selectors to use it. Adblock Plus won’t accept your custom filter if you use an invalid CSS syntax.

### Extended CSS selectors (Adblock Plus-specific)

Sometimes the standard CSS selectors aren't powerful enough to hide an advertisement. For those cases, we’ve added some new selectors, namely:

-   `:-abp-has()`
-   `:-abp-contains()`
-   `:-abp-properties()` (Adblock Plus 1.13.3 or higher for Chrome and Opera is required.)

When writing an element hiding filter that makes use of these extended selectors, you must use the `#?#` syntax, e.g. `example.com#?#selector`. It's important to note, however, that doing so creates a performance impact, so do so sparingly and make sure those filters are specific to as few domains and elements as possible.

`:-abp-has()`

The `:-abp-has(selector)` selector selects elements based on their content. For example, `:-abp-has(> div > a.advertiser)` selects elements that contain, as a direct descendant, a `<div>` that contains an `<a>` with the class advertiser. The inner selector can be relative to the element scope and can use any pseudo-selectors, including `:-abp-has()`, to determine whether the selection will occur.

Note

The filter `example.com#?#:-abp-has(.sponsored)` hides all pages because the class is also contained somewhere in the `<body>`. To avoid hiding all pages, simply add `>` or `+`.

**Example**: If you add the filter `eyeo.com#?#:-abp-has(code)` on https://help.eyeo.com/en/adblockplus/how-to-write-filters and hard refresh, everything is blocked. This is because the `<body>` contains `<code>`. To fix this, change the filter to `eyeo.com#?#:-abp-has(> code)`. After a hard refresh, only parent elements of `<code>` are blocked.

`:-abp-contains()`

The `:-abp-contains(text)` selector selects elements based on their text content. For example, `div.sidebar > span:-abp-contains(Advertisement)` selects the elements within a `<div>`, with a class of sidebar that contains the word "Advertisement". In practice, you'd want to combine this with a `:-abp-has()` to select the outer container (something like `div.sidebar > div:-abp-has(span:-abp-contains(Advertisement))` to select the container that contains an advertisement label).

Example

If you add the filter `eyeo.com#?#:-abp-contains(filters)` on https://help.eyeo.com/en/adblockplus/how-to-write-filters and hard refresh, nothing changes. If you change the filter to `eyeo.com#?#div:-abp-contains(filters)` and hard refresh, `div.outer` (which contains the middle section of the page) is blocked because somewhere within the `<body>` is the word "filters". To fix this, change the filter to `eyeo.com#?#.article-heading:-abp-contains(filters)`. After a hard refresh, only the headings of each article are hidden.

`:-abp-properties()`

The `:-abp-properties(properties)` selector selects elements based on stylesheet properties. For example, `:-abp-properties(width:300px;height:250px;)` selects elements that have a corresponding CSS rule in a stylesheet which sets the width and height to the values 300px and 250px, respectively. Property names are matched case-insensitively. Furthermore, wildcards can be used so that `:-abp-properties(width:*px;height:250px;)` matches any width specified in pixels and a height of 250 pixels.

You can also use [regular expressions](https://developer.mozilla.org/en-US/docs/Web/JavaScript/Guide/Regular_Expressions) by surrounding the properties expression with "/". For example, `:-abp-properties(/width:30[2-8]px;height:250px;/)` matches widths between 302 and 308 pixels and a height of 250 pixels.

Note

The [old syntax](https://adblockplus.org/development-builds/new-css-property-filter-syntax) for the CSS property filters is deprecated and will be automatically converted to the new format. The syntax to select the style properties remains the same.

Note

When using the `background-color property`, use the rgb() notation. For example, instead of `:-abp-properties(background-color: #3D9C4F;)`, use `:-abp-properties(background-color: rgb(61, 156, 79))`.

Example

`[-abp-properties='width:300px;height:250px;']` is converted to `:-abp-properties(width:300px;height:250px;)`. `:-abp-properties()` also selects elements using the style properties found in their pseudo-elements, like ::before and ::after. For example, `:-abp-properties(content:'Advertisement')` matches elements where the string `Advertisement` is found either `::before` or `::after` pseudo element.

### Exception rules

Exception rules can deactivate existing rules on particular domains. These are mostly useful to filter subscription authors who are extending another filter subscription that they cannot change. For example, the rule `##.textad` can be deactivated on example.com using the exception rule `example.com#@#.textad`. The combination of these two rules has exactly the same effect as the single rule `~example.com##.textad`. It’s recommended that you use exception rules only when you cannot change an overly general element hiding rule. In all other cases, limiting this rule to the necessary domains is preferable. These exceptions will be applied to [extended CSS selector rules](https://help.adblockplus.org/hc/en-us/articles/360062733293#elemhide-emulation) as well.

Example

If you add the filter `##aside.info` on https://help.eyeo.com/en/adblockplus/how-to-write-filters, `eyeo.com#@#aside` will not allowlist anything. If you add the filter `##aside`, `eyeo.com#@#aside.info` will not allowlist anything. The filters must be exactly the same, i.e. `eyeo.com#@#aside.info`.

### Snippet filters

Snippet filters allow running specialized code snippets (written in JavaScript) on pages with the list of specified domains. The body of the filter contain the snippet commands to run.

Please refer to the [snippet filters tutorial](https://help.adblockplus.org/hc/en-us/articles/1500002338501) for a more detailled guide on how to write snippet filters.

Note

For security reasons, snippet filters can only be added to a user's custom filters list or in the [ABP Anti-Circumvention Filter List](https://github.com/abp-filters/abp-filters-anti-cv), the latter being vetted and reviewed.

### Generic / Specific filters

With the `$generichide` and `$genericblock` filter options, the distinction between generic and specific filters becomes important.

We classify a filter to be **specific** if it matches one or more domains, or matches a sitekey. If a filter has no domains specified (or only domain exceptions) and no sitekey, it then counts as **generic**. For example, `example.com##.textad` is a specific filter, whereas both `##.textad` and `~example.com##.textad` are generic.

Note that when working with blocking rules the domain must be specified under the `$domain` option for them to be considered specific. For example, `||example.com^` is considered generic whereas `/ads/*$domain=example.com` is site-specific.

## Implementing a sitekey on the server

To apply a [sitekey-restricted filter](https://help.adblockplus.org/hc/en-us/articles/360062733293#sitekey-restrictions), a webpage needs to return base64-encoded versions of the public key and a signature that Adblock Plus can validate. Currently, this means including them in both the HTTP response header (X-Adblock-Key: abcdpublickeydcba\_abcdsignaturedcba) and the root tag of the document ().

Create a private RSA key and then a DER representation of the public key. The key should be at least 2048 bits in length, but preferably 4096 bits in length. The data used for creating the signature is a concatenated list of request variables (namely URI, host, and user agent) separated by the NUL character "\\0". For example, For example, `/index.html?q=foo\0www.example.com\0Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:30.0) Gecko/20100101 Firefox/30.0`.

To generate the signature for this string, use the signature algorithm `SEC_OID_ISO_SHA_WITH_RSA_SIGNATURE` (default when using OpenSSL).
