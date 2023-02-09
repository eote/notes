---
created: 2022-12-06 23:55:18

author: Eotect Nahn

tags: [markdown]

source: https://www.markdownguide.org/extended-syntax/

---

# Extended Syntax | Markdown Guide

> ## Excerpt
> Advanced features that build on the basic Markdown syntax.

---
## Overview[](https://www.markdownguide.org/extended-syntax/#overview)

The [basic syntax](https://www.markdownguide.org/basic-syntax) outlined in the original Markdown design document added many of the elements needed on a day-to-day basis, but it wasn’t enough for some people. That’s where extended syntax comes in.

Several individuals and organizations took it upon themselves to extend the basic syntax by adding additional elements like tables, code blocks, syntax highlighting, URL auto-linking, and footnotes. These elements can be enabled by using a lightweight markup language that builds upon the basic Markdown syntax, or by adding an extension to a compatible Markdown processor.

## Availability[](https://www.markdownguide.org/extended-syntax/#availability)

Not all Markdown applications support extended syntax elements. You’ll need to check whether or not the lightweight markup language your application is using supports the extended syntax elements you want to use. If it doesn’t, it may still be possible to enable extensions in your Markdown processor.

### Lightweight Markup Languages[](https://www.markdownguide.org/extended-syntax/#lightweight-markup-languages)

There are several lightweight markup languages that are _supersets_ of Markdown. They include basic syntax and build upon it by adding additional elements like tables, code blocks, syntax highlighting, URL auto-linking, and footnotes. Many of the most popular Markdown applications use one of the following lightweight markup languages:

-   [CommonMark](https://commonmark.org/)
-   [GitHub Flavored Markdown (GFM)](https://github.github.com/gfm/)
-   [Markdown Extra](https://michelf.ca/projects/php-markdown/extra/)
-   [MultiMarkdown](https://fletcherpenney.net/multimarkdown/)
-   [R Markdown](https://rmarkdown.rstudio.com/)

### Markdown Processors[](https://www.markdownguide.org/extended-syntax/#markdown-processors)

There are [dozens of Markdown processors](https://github.com/markdown/markdown.github.com/wiki/Implementations) available. Many of them allow you to add extensions that enable extended syntax elements. Check your processor’s documentation for more information.

## Tables[](https://www.markdownguide.org/extended-syntax/#tables)

To add a table, use three or more hyphens (`---`) to create each column’s header, and use pipes (`|`) to separate each column. For compatibility, you should also add a pipe on either end of the row.

```
| Syntax      | Description |
| ----------- | ----------- |
| Header      | Title       |
| Paragraph   | Text        |
```

The rendered output looks like this:

| Syntax | Description |
| --- | --- |
| Header | Title |
| Paragraph | Text |

Cell widths can vary, as shown below. The rendered output will look the same.

```
| Syntax | Description |
| --- | ----------- |
| Header | Title |
| Paragraph | Text |
```

**Tip:** Creating tables with hyphens and pipes can be tedious. To speed up the process, try using the [Markdown Tables Generator](https://www.tablesgenerator.com/markdown_tables) or [AnyWayData Markdown Export](https://anywaydata.com/). Build a table using the graphical interface, and then copy the generated Markdown-formatted text into your file.

### Alignment[](https://www.markdownguide.org/extended-syntax/#alignment)

You can align text in the columns to the left, right, or center by adding a colon (`:`) to the left, right, or on both side of the hyphens within the header row.

```
| Syntax      | Description | Test Text     |
| :---        |    :----:   |          ---: |
| Header      | Title       | Here's this   |
| Paragraph   | Text        | And more      |
```

The rendered output looks like this:

| Syntax | Description | Test Text |
| --- | --- | --- |
| Header | Title | Here’s this |
| Paragraph | Text | And more |

### Formatting Text in Tables[](https://www.markdownguide.org/extended-syntax/#formatting-text-in-tables)

You can format the text within tables. For example, you can add [links](https://www.markdownguide.org/basic-syntax/#links), [code](https://www.markdownguide.org/basic-syntax/#code-1) (words or phrases in backticks (`` ` ``) only, not [code blocks](https://www.markdownguide.org/basic-syntax/#code-blocks)), and [emphasis](https://www.markdownguide.org/basic-syntax/#emphasis).

You can’t use headings, blockquotes, lists, horizontal rules, images, or most HTML tags.

### Escaping Pipe Characters in Tables[](https://www.markdownguide.org/extended-syntax/#escaping-pipe-characters-in-tables)

You can display a pipe (`|`) character in a table by using its HTML character code (`&#124;`).

## Fenced Code Blocks[](https://www.markdownguide.org/extended-syntax/#fenced-code-blocks)

The basic Markdown syntax allows you to create [code blocks](https://www.markdownguide.org/basic-syntax#code-blocks) by indenting lines by four spaces or one tab. If you find that inconvenient, try using fenced code blocks. Depending on your Markdown processor or editor, you’ll use three backticks (` ``` `) or three tildes (`~~~`) on the lines before and after the code block. The best part? You don’t have to indent any lines!

````
```
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```
````

The rendered output looks like this:

```
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```

**Tip:** Need to display backticks inside a code block? See [this section](https://www.markdownguide.org/basic-syntax/#escaping-backticks) to learn how to escape them.

### Syntax Highlighting[](https://www.markdownguide.org/extended-syntax/#syntax-highlighting)

Many Markdown processors support syntax highlighting for fenced code blocks. This feature allows you to add color highlighting for whatever language your code was written in. To add syntax highlighting, specify a language next to the backticks before the fenced code block.

````
```json
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```
````

The rendered output looks like this:

```
{
  "firstName": "John",
  "lastName": "Smith",
  "age": 25
}
```

Footnotes allow you to add notes and references without cluttering the body of the document. When you create a footnote, a superscript number with a link appears where you added the footnote reference. Readers can click the link to jump to the content of the footnote at the bottom of the page.

To create a footnote reference, add a caret and an identifier inside brackets (`[^1]`). Identifiers can be numbers or words, but they can’t contain spaces or tabs. Identifiers only correlate the footnote reference with the footnote itself — in the output, footnotes are numbered sequentially.

Add the footnote using another caret and number inside brackets with a colon and text (`[^1]: My footnote.`). You don’t have to put footnotes at the end of the document. You can put them anywhere except inside other elements like lists, block quotes, and tables.

```
Here's a simple footnote,[^1] and here's a longer one.[^bignote]

[^1]: This is the first footnote.

[^bignote]: Here's one with multiple paragraphs and code.

    Indent paragraphs to include them in the footnote.

    `{ my code }`

    Add as many paragraphs as you like.
```

The rendered output looks like this:

Here’s a simple footnote,<sup id="fnref:1" role="doc-noteref"><a href="https://www.markdownguide.org/extended-syntax/#fn:1" rel="footnote">1</a></sup> and here’s a longer one.<sup id="fnref:bignote" role="doc-noteref"><a href="https://www.markdownguide.org/extended-syntax/#fn:bignote" rel="footnote">2</a></sup>

## Heading IDs[](https://www.markdownguide.org/extended-syntax/#heading-ids)

Many Markdown processors support custom IDs for [headings](https://www.markdownguide.org/basic-syntax/#headings) — some Markdown processors automatically add them. Adding custom IDs allows you to link directly to headings and modify them with CSS. To add a custom heading ID, enclose the custom ID in curly braces on the same line as the heading.

```
### My Great Heading {#custom-id}
```

The HTML looks like this:

```
<h3 id="custom-id">My Great Heading</h3>
```

### Linking to Heading IDs[](https://www.markdownguide.org/extended-syntax/#linking-to-heading-ids)

You can link to headings with custom IDs in the file by creating a [standard link](https://www.markdownguide.org/basic-syntax/#links) with a number sign (`#`) followed by the custom heading ID. These are commonly referred to as _anchor links_.

| Markdown | HTML | Rendered Output |
| --- | --- | --- |
| `[Heading IDs](#heading-ids)` | `<a href="#heading-ids">Heading IDs</a>` | [Heading IDs](https://www.markdownguide.org/extended-syntax/#heading-ids) |

Other websites can link to the heading by adding the custom heading ID to the full URL of the webpage (e.g, `[Heading IDs](https://www.markdownguide.org/extended-syntax#heading-ids)`).

## Definition Lists[](https://www.markdownguide.org/extended-syntax/#definition-lists)

Some Markdown processors allow you to create _definition lists_ of terms and their corresponding definitions. To create a definition list, type the term on the first line. On the next line, type a colon followed by a space and the definition.

```
First Term
: This is the definition of the first term.

Second Term
: This is one definition of the second term.
: This is another definition of the second term.
```

The HTML looks like this:

```
<dl>
  <dt>First Term</dt>
  <dd>This is the definition of the first term.</dd>
  <dt>Second Term</dt>
  <dd>This is one definition of the second term. </dd>
  <dd>This is another definition of the second term.</dd>
</dl>
```

The rendered output looks like this:

First Term

This is the definition of the first term.

Second Term

This is one definition of the second term.

This is another definition of the second term.

## Strikethrough[](https://www.markdownguide.org/extended-syntax/#strikethrough)

You can strikethrough words by putting a horizontal line through the center of them. The result looks ~like this~. This feature allows you to indicate that certain words are a mistake not meant for inclusion in the document. To strikethrough words, use two tilde symbols (`~~`) before and after the words.

```
~~The world is flat.~~ We now know that the world is round.
```

The rendered output looks like this:

~The world is flat.~ We now know that the world is round.

## Task Lists[](https://www.markdownguide.org/extended-syntax/#task-lists)

Task lists (also referred to as _checklists_ and _todo_ lists) allow you to create a list of items with checkboxes. In Markdown applications that support task lists, checkboxes will be displayed next to the content. To create a task list, add dashes (`-`) and brackets with a space (`[ ]`) in front of task list items. To select a checkbox, add an `x` in between the brackets (`[x]`).

```
- [x] Write the press release
- [ ] Update the website
- [ ] Contact the media
```

The rendered output looks like this:

![Markdown task list](https://d33wubrfki0l68.cloudfront.net/54914727add678921954b094b9cca57f63bd6e2e/666d3/assets/images/tasklist.png)

## Emoji[](https://www.markdownguide.org/extended-syntax/#emoji)

There are two ways to add emoji to Markdown files: copy and paste the emoji into your Markdown-formatted text, or type _emoji shortcodes_.

### Copying and Pasting Emoji[](https://www.markdownguide.org/extended-syntax/#copying-and-pasting-emoji)

In most cases, you can simply copy an emoji from a source like [Emojipedia](https://emojipedia.org/) and paste it into your document. Many Markdown applications will automatically display the emoji in the Markdown-formatted text. The HTML and PDF files you export from your Markdown application should display the emoji.

### Using Emoji Shortcodes[](https://www.markdownguide.org/extended-syntax/#using-emoji-shortcodes)

Some Markdown applications allow you to insert emoji by typing emoji shortcodes. These begin and end with a colon and include the name of an emoji.

```
Gone camping! :tent: Be back soon.

That is so funny! :joy:
```

The rendered output looks like this:

Gone camping! ⛺ Be back soon.

That is so funny! 😂

**Note:** You can use this [list of emoji shortcodes](https://gist.github.com/rxaviers/7360908), but keep in mind that emoji shortcodes vary from application to application. Refer to your Markdown application's documentation for more information.

## Highlight[](https://www.markdownguide.org/extended-syntax/#highlight)

This isn’t common, but some Markdown processors allow you to highlight text. The result looks like this. To highlight words, use two equal signs (`==`) before and after the words.

```
I need to highlight these ==very important words==.
```

The rendered output looks like this:

I need to highlight these very important words.

Alternatively, if your Markdown application supports [HTML](https://www.markdownguide.org/basic-syntax/#html), you can use the `mark` HTML tag.

```
I need to highlight these <mark>very important words</mark>.
```

## Subscript[](https://www.markdownguide.org/extended-syntax/#subscript)

This isn’t common, but some Markdown processors allow you to use _subscript_ to position one or more characters slightly below the normal line of type. To create a subscript, use one tilde symbol (`~`) before and after the characters.

The rendered output looks like this:

H<sub>2</sub>O

**Tip:** Be sure to test this in your Markdown application before using it. Some Markdown applications use one tilde symbol before and after words not for subscript, but for [strikethrough](https://www.markdownguide.org/extended-syntax/#strikethrough).

Alternatively, if your Markdown application supports [HTML](https://www.markdownguide.org/basic-syntax/#html), you can use the `sub` HTML tag.

## Superscript[](https://www.markdownguide.org/extended-syntax/#superscript)

This isn’t common, but some Markdown processors allow you to use _superscript_ to position one or more characters slightly above the normal line of type. To create a superscript, use one caret symbol (`^`) before and after the characters.

The rendered output looks like this:

X<sup>2</sup>

Alternatively, if your Markdown application supports [HTML](https://www.markdownguide.org/basic-syntax/#html), you can use the `sup` HTML tag.

## Automatic URL Linking[](https://www.markdownguide.org/extended-syntax/#automatic-url-linking)

Many Markdown processors automatically turn URLs into links. That means if you type http://www.example.com, your Markdown processor will automatically turn it into a link even though you haven’t [used brackets](https://www.markdownguide.org/basic-syntax/#links).

The rendered output looks like this:

[http://www.example.com](http://www.example.com/)

## Disabling Automatic URL Linking[](https://www.markdownguide.org/extended-syntax/#disabling-automatic-url-linking)

If you don’t want a URL to be automatically linked, you can remove the link by [denoting the URL as code](https://www.markdownguide.org/basic-syntax/#code) with backticks.

The rendered output looks like this:

`http://www.example.com`

[![Markdown Guide book cover](https://mdg.imgix.net/assets/images/book-cover.jpg)](https://www.markdownguide.org/book/)

##### Take your Markdown skills to the next level.

Learn Markdown in 60 pages. Designed for both novices and experts, _The Markdown Guide_ book is a comprehensive reference that has everything you need to get started and master Markdown syntax.

[Get the Book](https://www.markdownguide.org/book/)

Don't stop now! 🚀 Star the [GitHub repository](https://github.com/mattcone/markdown-guide) and then enter your email address below to receive new Markdown tutorials via email. No spam!
