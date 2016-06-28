---
layout: post-fullwidth
subheadline: Bash - System Commands
title: Change timestamp of file based on filename pattern
teaser: ''

header:
  image: header/12.jpg

categories:
  - bash

tags:
  - post bash

author: r14r
---

Suppose you have a list of files which each matches the same pattern include a date/timestamp:
* name01_20160610-101002.csv
* name01_20160611-091002.csv
* name01_20160612-101302.csv
* name01_20160613-141202.csv
* name01_20160614-121002.csv

{% highlight bash %}
ls -1 |\
while read FILE 
do
   DATE="$(echo $FILE | perl -lpe 's/^.*20(......)-(....).*/\1\2/')
   echo touch $FILE -t $DATE
done

{% endhighlight %}
