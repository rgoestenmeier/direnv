---
layout: post-fullwidth

subheadline: Bash - System Commands
title: 'Replacing system commands: Part 3'
teaser: 'Using linux system tools dirname, cut, grep has the disadvantage of performance issues. This series of posts shows how to replace system commands with build in bash-features'

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

# loop

{% highlight bash linenos=table %}
#!/bin/bash

HERE="$PWD/${0%/*}"
HERE="$(cd "$HERE"; pwd)"

SELF=${0##*/}

echo HERE=$HERE
echo SELF=$SELF
{% endhighlight %}

</div>
