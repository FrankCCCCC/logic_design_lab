# Logic Design Lab

## Labs

- [Lab 1](./labs/lab1) Done

- [Lab 2](./labs/lab2) Done

- [Lab 3](./labs/lab3) Done

- [Lab 4](./labs/lab4)

## Slides

[Slides](./slides)

## Pandoc Usage

### Template Usage

Move the template `template.latex`(for example: `eisvogel.latex`) to your pandoc templates folder. The location of the templates folder depends on your operating system:

  - Unix, Linux, macOS: `/Users/USERNAME/.local/share/pandoc/templates/` or `/Users/USERNAME/.pandoc/templates/`
  - Windows Vista or later: `C:\Users\USERNAME\AppData\Roaming\pandoc\templates\`

If there are no folders called `templates` or `pandoc` you need to create them and put the template `template.latex` inside. You can find the default user data directory on your system by looking at the output of `pandoc --version`.

### YAML Metadata

Pandoc will follow the metadata to process the document and some fields will depends on the templates. Here we take report of lab3 as an example

```markdown
---
title: Lab 3 - Counters and Shifters I Report
author: Sheng-Yen Chou
date: "2022-03-22"
CJKmainfont: "Microsoft JhengHei"
CJKoptions: AutoFakeBold
subject: "Lab 3 - Counters and Shifters I Report"
keywords: [Markdown, Pandoc]
titlepage: true
titlepage-rule-color: "360049"
titlepage-background: "background1.pdf"
toc-own-page: true
---
```

Variables explain

- ``CJKmainfont``: 
  
  Set the Chinese font for the document and remember the font should be installed in the computer already.

- ``titlepage-background``: 
  
  The background image of the cover page. Template ``Eisvogel`` customs.

- `toc-own-page` (defaults to `false`): 
  
  begin new page after table of contents, when `true`.

- `listings-no-page-break` (defaults to `false`)

  avoid page break inside listings

- `disable-header-and-footer` (default to `false`)

  disables the header and footer completely on all pages

- `header-left` (defaults to the title)

  the text on the left side of the header

- `header-center`

  the text in the center of the header

- `header-right` (defaults to the date)

  the text on the right side of the header

- `footer-left` (defaults to the author)

  the text on the left side of the footer

- `footer-center`

  the text in the center of the footer

- `footer-right` (defaults to the page number)

  the text on the right side of the footer

For more detail of the custom variable of template ``Eisvogel``, please refer to [Eisvogel README](./latex_template/Eisvogel-2.0.0/README.md)

### Pandoc Command Line

```bash
pandoc -o readme.pdf readme.md --pdf-engine=xelatex -V CJKmainfont="Microsoft JhengHei" --from markdown --template eisvogel --listings --toc --toc-depth=4
```

- ``-V CJKmainfont="Microsoft JhengHei"``
  
  Specify the Chinese font to use during the conversion.

- ``--pdf-engine=xelatex``
  
  Specify the Latex engine. The engine ``xelatx`` supports Chinese.

- ``--template``
  
  Decide which template to use

- ``--listings``
  
  The package to process Latex code block.

- ``--toc``
  
  Decide whether to generate the table of content.

- ``--toc-depth=4``
  
  Decide the depth of the table of the content.

### Reference

- [使用 Pandoc 將 Markdown 轉為 PDF 文件](https://sam.webspace.tw/2020/01/13/%E4%BD%BF%E7%94%A8%20Pandoc%20%E5%B0%87%20Markdown%20%E8%BD%89%E7%82%BA%20PDF%20%E6%96%87%E4%BB%B6/)

    A friendly guide of Pandoc in Chinese.

- [Eisvogel (Version 2.0.0)](https://github.com/Wandmalfarbe/pandoc-latex-template/releases/tag/v2.0.0)

    The template I use.