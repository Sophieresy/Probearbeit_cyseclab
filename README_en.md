# Instruction
[deutsche version](README.md)

---

## Summary

Your task is to build a challenge page that intentionally has a reflected XSS vulnerability.

## Vulnerability

The reflected XSS vulnerability should look like this:

On the start page there is a guestbook with entries (no database needed, entries can be hardcoded on the page). In addition, the user has the option of adding an entry himself via an input field. As soon as the entry is sent, the page checks if there is a link in the entry (every word that starts with http:// or https:// is defined as a link here). If a link is included, the page automatically converts the link to an a tag to make it clickable for visitors of the page. 

However, the code for the conversion should intentionally contain an error and insert the input unfiltered into a new a-tag, so an XSS attack is possible here.

The erroneous code could look like this:

```javascript
new_link = '<a href="' + link_url + '">Link</a>'
```

So if this code is built into the web page, then it is possible to escape from the href tag with a quotation mark and embed your own HTML code/javascript code into the page.

## Your task

Use the given framework to build the challenge page. This includes the implementation of the functionality, the appealing design of the web page interface and a hint and final explanation of the vulnerability for the participants.

## What are you allowed to use?

Basically, the way of implementing this task is entirely up to you. We have already set up a basic framework for the site and Bootstrap is already included in the frontend. So if you want you are welcome to use Bootstrap for the UI design, but you can also use the frontend framework of your choice.

## Bonus points

There should be no other way to solve the challenge. I.e. it should not be possible to simply abuse the developer tools of the browser to call the "alert" function and thus complete the challenge.

In addition, solutions with an appealing interface and well-formulated description and explanation texts are preferred.