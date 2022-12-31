# Discover the Forest

### A nature friendly html and css repository, which showcases amongst others, several animation possibilities and embedded media examples.
# In this setup we will focus on building a docker container for a static website.

![forrest](images/forrest.png)

> **Tested on the following browsers:**
> - **[intellij IDE build in browser](https://www.jetbrains.com/idea/)**
> - **[Google Chrome](https://www.google.com/chrome/index.html)**
> - **[Mozilla Firefox](https://www.mozilla.org/en-US/firefox/new/)**
> - **[Apple Safari](https://www.apple.com/safari/)**
> - **[Opera](https://www.opera.com/)**
> - **[Yandex](https://browser.yandex.com/?from=morda_icon_yandex_com&banerid=3401000000)**
> - **[Microsoft Edge](https://www.microsoft.com/en-us/edge?exp=e501&form=MA13FJ)**


> **[youtube showcase](https://www.youtube.com/watch?v=p3b5E6xKjRI)**


### Info

**Project to show how to implement some media attributes and visualizations for a static website using mostly css and html.**
**Also, a brief explanation on how to build a docker container for this static website and run this locally.**

### Page One (index.html) main elements

- Entry page with dedicated favicon.
- Continuous scrolling gradient colors from light to dark.
- Footer with copyright notice.
- Embedded nature audio with almost hidden audio controls (on/off).
- Clickable glowing circle, which acts as a gateway to the main portal.

### Page Two (forrestgreen.html) main elements

- Start page with dedicated favicon.
- Full screen video animation.
- Auto start video
- Looped video animation with basic controls, fullscreen, sound on/off, play, pause and download.
- Transparent footer overlay with copyright and about info and social media icons with links to their respective main websites in a glowing circle.
- Link to MIT license page, about page and home page.
- Most links will open in a separate browser tab.

### Page Three (license.html) MIT license

- MIT License page with description.
- Full screen gradient animation.
- Embedded audio with simple audio controls (on/off).
- Transparent footer overlay with copyright and about info and social media icons with links to their respective main websites in a glowing circle.
- Most links will open in a separate browser tab.

> ### Notices:
> - **To be able to autorun a video when opening the webpage, sound must be off.**
> - **The favicon package was generated with [RealFaviconGenerator](https://realfavicongenerator.net/)**
> - **Convert your image into a circular image here [Imageonline.co](https://crop-circle.imageonline.co/)**
> - **To add audio to the video this site was used [Online Converter](https://www.onlineconverter.com/add-audio-to-video)**
> - **Quickly resize your pictures here [image resizer](https://imageresizer.com/)**
> - **Content delivery service used [cdnjs](https://cdnjs.com/)**

The css and html code used in this project should be self-explanatory and together with the keywords explained below the whole project should read like a book.

### Indepth explanation of all logic used, everything can be read inn detail at: [mozilla.org](https://developer.mozilla.org/en-US/)

**html**                
The html HTML element represents the root (top-level element) of an HTML document, so it is also referred to as the root element. All other elements must be descendants of this element.
---
**lang**        
The lang global attribute helps define the language of an element: the language that non-editable elements are written in, or the language that the editable elements should be written in by the user. The attribute contains a single “language tag” in the format defined in Tags for Identifying Languages.
---
**head**            
The head HTML element contains machine-readable information (metadata ) about the document, like its title , scripts , and style sheets.
---
**title**           
The title HTML element defines the document's title that is shown in a browser 's title bar or a page's tab. It only contains text; tags within the element are ignored.
---
**meta**        
The meta HTML element represents metadata  that cannot be represented by other HTML meta-related elements, like base, link, script, style or title.
---
**charset**         
This attribute declares the document's character encoding. If the attribute is present, its value must be an ASCII case-insensitive match for the string utf-8, because UTF-8 is the only valid encoding for HTML5 documents. meta elements which declare a character encoding must be located entirely within the first 1024 bytes of the document.
---
**http-equiv**          
Defines a pragma directive. The attribute is named http-equivalent because all the allowed values are names of particular HTTP headers:
_content-security-policy_
Allows page authors to define a content policy  for the current page. Content policies mostly specify allowed server origins and script endpoints which help guard against cross-site scripting attacks.
_content-type_
Declares the MIME type  and character encoding of the document. If specified, the content attribute must have the value "text/html; charset=utf-8". This is equivalent to a meta element with the charset attribute specified, and carries the same restriction on placement within the document. Note: Can only be used in documents served with a text/html — not in documents served with an XML MIME type.
_default-style_
Sets the name of the default CSS style sheet  set.
_x-ua-compatible_
If specified, the content attribute must have the value "IE=edge". User agents are required to ignore this pragma.
_refresh_
This instruction specifies:
The number of seconds until the page should be reloaded - only if the content attribute contains a positive integer.
The number of seconds until the page should redirect to another - only if the content attribute contains a positive integer followed by the string ';url=', and a valid URL.
---
**name**            
The name and content attributes can be used together to provide document metadata in terms of name-value pairs, with the name attribute giving the metadata name, and the content attribute giving the value.
---
**link**            
The link HTML element specifies relationships between the current document and an external resource. This element is most commonly used to link to stylesheets , but is also used to establish site icons (both "favicon" style icons and icons for the home screen and apps on mobile devices) among other things.
---
**div**     
The div HTML element is the generic container for flow content. It has no effect on the content or layout until styled in some way using CSS (e.g. styling is directly applied to it, or some kind of layout model like Flexbox is applied to its parent element).
As a pure container, the div element does not inherently represent anything. Instead, it's used to group content, so it can be easily styled using the class or id attributes, marking a section of a document as being written in a different language (using the lang attribute), and so on.
---
**class**       
The class global attribute is a space-separated list of the case-sensitive classes of the element. Classes allow CSS and Javascript to select and access specific elements via the class selectors  or functions like the DOM method document.getElementsByClassName.
Though the specification doesn't put requirements on the name of classes, web developers are encouraged to use names that describe the semantic purpose of the element, rather than the presentation of the element. For example, attribute to describe an attribute rather than italics, although an element of this class may be presented by italics. Semantic names remain logical even if the presentation of the page changes.
---
**style**           
The style global attribute contains CSS styling declarations to be applied to the element. Note that it is recommended for styles to be defined in a separate file or files. This attribute and the style element have mainly the purpose of allowing for quick styling, for example for testing purposes.
Usage note: This attribute must not be used to convey semantic information. Even if all styling is removed, a page should remain semantically correct. Typically, it shouldn't be used to hide irrelevant information; this should be done using the hidden attribute.
---
**audio**           
The audio HTML element is used to embed sound content in documents. It may contain one or more audio sources, represented using the src attribute or the source element: the browser will choose the most suitable one. It can also be the destination for streamed media, using a MediaStream.
The above example shows simple usage of the audio element. In a similar manner to the img element, we include a path to the media we want to embed inside the src attribute; we can include other attributes to specify information such as whether we want it to autoplay and loop, whether we want to show the browser's default audio controls, etc.
The content inside the opening and closing audio/audio tags is shown as a fallback in browsers that don't support the element.
---
**source**          
The source HTML element specifies multiple media resources for the picture, the audio element, or the video element. It is an empty element, meaning that it has no content and does not have a closing tag. It is commonly used to offer the same media content in multiple file formats in order to provide compatibility with a broad range of browsers given their differing support for image file formats  and media file formats.
---
**type**            
The MIME media type of the resource, optionally with a codec parameter.
---
**footer**          
The footer HTML element represents a footer for its nearest sectioning content  or sectioning root  element. A footer typically contains information about the author of the section, copyright data or links to related documents.
---
**p**       
The p HTML  element represents a paragraph. Paragraphs are usually represented in visual media as blocks of text separated from adjacent blocks by blank lines and/or first-line indentation, but HTML paragraphs can be any structural grouping of related content, such as images or form fields.
Paragraphs are block-level elements , and notably will automatically close if another block-level element is parsed before the closing /p tag. See “Tag omission” below.
---
**color**           
The color CSS property sets the foreground color value of an element's text and text decorations, and sets the currentcolor value. currentcolor may be used as an indirect value on other properties and is the default for other color properties, such as border-color.
---
**Window.location: any | Location**         
The Window.location read-only property returns a Location object with information about the current location of the document.
Though Window.location is a read-only Location object, you can also assign a DOMString to it. This means that you can work with location as if it were a string in most cases: location = 'http://www.example.com' is a synonym of location.href = 'http://www.example.com'.
---
**onclick**         
An element receives a click event when a pointing device button (such as a mouse's primary mouse button) is both pressed and released while the pointer is located inside the element.
If the button is pressed on one element and the pointer is moved outside the element before the button is released, the event is fired on the most specific ancestor element that contained both elements.
click fires after both the mousedown and mouseup events have fired, in that order.
---
**var document: Document**          
window.document returns a reference to the document contained in the window.
---
**Document.getElementsByTagName**                   
The getElementsByTagName method of Document interface returns an HTMLCollection of elements with the given tag name. The complete document is searched, including the root node. The returned HTMLCollection is live, meaning that it updates itself automatically to stay in sync with the DOM tree without having to call document.getElementsByTagName() again.
---
**Document.addEventListener**           
Appends an event listener for events whose type attribute value is type. The callback argument sets the callback that will be invoked when the event is dispatched.
---
**media**           
This attribute specifies the media that the linked resource applies to. Its value must be a media type / media query. This attribute is mainly useful when linking to external stylesheets, it allows the user-agent to pick the best adapted one for the device it runs on.
---
**user-select**             
The user-select CSS property controls whether the user can select text.             
Keyword values: user-select: none, user-select: auto, user-select: text, user-select: contain, user-select: all. Global values: user-select: inherit, user-select: initial, user-select: revert, user-select: unset.
---
**@keyframes**                  
The @keyframes CSS at-rule controls the intermediate steps in a CSS animation sequence by defining styles for keyframes (or waypoints) along the animation sequence. This gives more control over the intermediate steps of the animation sequence than transitions.
---
**hover**               
The :hover CSS pseudo-class matches when the user interacts with an element with a pointing device, but does not necessarily activate it. It is generally triggered when the user hovers over an element with the cursor (mouse pointer).
---
**focus**               
The :focus CSS pseudo-class represents an element (such as a form input) that has received focus. It is generally triggered when the user clicks or taps on an element or selects it with the keyboard's Tab key.
---
**active**          
The :active CSS pseudo-class represents an element (such as a button) that is being activated by the user. When using a mouse, "activation" typically starts when the user presses down the primary mouse button.
---

