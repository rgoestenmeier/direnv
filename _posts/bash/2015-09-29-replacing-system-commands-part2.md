---
layout: post-fullwidth

subheadline: Bash - System Commands
title: 'Replacing system commands: Part 2'
teaser: 'Replacing dirname and basename with bash internal possibilities'

header:
  image: header/12.jpg

categories:
  - bash
tags:
  - post bash

author: r14r
---
<div class="row"><div class="medium-4 medium-push-8 columns" markdown="1"><div class="panel radius" markdown="1">
{: #toc }
*  TOC
{:toc}
</div></div><div class="medium-8 medium-pull-4 columns" markdown="1">

# Replacing ```dirname```
{% highlight bash linenos=table %}
$ DIRNAME=${PATHNAME0%/*}
{% endhighlight %}

# Replacing ```basename```
{% highlight bash linenos=table %}
$ BASENAME=${PATHNAME0##*/}
{% endhighlight %}

Try this in a bash shell:
{% highlight bash linenos=table %}
$ PATHNAME=/this/is/the/pathname/this_is_the_filename
$ DIRNAME=${PATHNAME%/*}
$ BASENAME=${PATHNAME##*/}
$ echo $DIRNAME
/this/is/the/pathname
src$ echo $BASENAME
this_is_the_filename
{% endhighlight %}
# Other Post Formats
{: .t60 } {% include list-posts tag='post bash' %}
