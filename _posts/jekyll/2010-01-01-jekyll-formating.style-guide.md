---
layout: post-fullwidth
subheadline: Jekyll Formatting
title:  "Style Guide"
teaser: "My Style guide for formatting Posts"

categories:
    - jekyll
tags:
    - post jekyll "syntax highlight" "style guide"

author: r14r
---
# Links
[Cheatsheet](https://github.com/adam-p/markdown-here/wiki/Markdown-Cheatsheet "Markdown-Cheatsheet")

## Formating Code Block
~~~
header:
    image: "header_unsplash_2-970x.jpg"
    background-color: "#fabb00"
    caption: This is a caption for the header image with link
    caption_url: https://unsplash.com/
~~~

## Formating with highlight and line numbers in a table
{% highlight bash linenos=table %}
$ HERE=${0%/*}
$ SELF=${0##*/}
{% endhighlight %}

## Other Post Formats

{: .t60 }
{% include list-posts tag='post bash' %}

</div>
