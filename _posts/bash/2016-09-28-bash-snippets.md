---
layout: post-fullwidth

subheadline: Bash - Snippets
title: 'Bash Snippets'

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

# Snippets

{% highlight bash linenos=table %}
#---------------------------------------------------------------------------------------------------
#
#---------------------------------------------------------------------------------------------------
STEP=1
function STEP   {
    printf "%2d: %s\n" $STEP "$*"
    ((STEP=$STEP+1))
}
{% endhighlight %}

{% highlight bash linenos=table %}
{% endhighlight %}
