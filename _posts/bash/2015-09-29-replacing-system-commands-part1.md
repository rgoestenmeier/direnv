---
layout: post-fullwidth

subheadline: Bash - System Commands
title: 'Replacing system commands: Part 1'
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

# Detect path of script
This tutorial shows how to write a bash **script**, which could be installed in any directory without dependencies like changing any path in the **script**. This **script** will find out, where is is located.. maybe you could call this self-configuration &#9786;.

## Preparing the environment
For the rest of the post, we will start in a directory called ```BASHTOOLBOX```. You could setup the environment this way:
{% highlight bash linenos=table %}
$ cd $HOME
$ mkdir -p tmp/BASHTOOLBOX/{bin,etc}
$ cd tmp/BASHTOOLBOX
$ touch bin/script etc/settings.cfg
$ pwd
/home/r14r/tmp/BASHTOOLBOX
$ find .
.
./bin
./bin/script
./etc
./etc/settings.cfg
{% endhighlight %}

## Problem
Sometimes you want to write a **script** that access additional files relativ to the **script** directory. You want to use a file ```etc/settings.cfg``` in the **script**, thas is located in ```bin```.

The directory structure is:
![Image of Directory Structure]({{ site.urlimg }}/posts/bash/directory_structure_01.png)

Create the **script** with the following contents under ```$HOME/tmp/BASHTOOLBOX/script```
{% highlight bash linenos=table %}
#!/bin/bash

cat $PWD/../etc/settings.cfg
{% endhighlight %}

We try to refer to the file with a relativ path. By running the **script**, everything seems to work
{% highlight bash linenos=table %}
$ pwd
BASHTOOLBOX
$ ./bin/script
system=linux
debug=9
{% endhighlight %}

But... what if we start the script from a different directory?
{% highlight bash linenos=table %}
tmp$ cd $HOME/tmp
tmp$ pwd
/home/r14r/tmp
tmp$ BASHTOOLBOX/bin/script
cat: ../etc/settings.cfg: No such file or directory
{% endhighlight %}

What went wrong? The reason is the *relative* path, which means *relativ* to the calling path.

The path, from were we called the **script** is ```/home/r14r/tmp```, so adding the relative part ```../etc/settings.cfg``` results in ```/home/r14r/tmp/../etc/settings.cfg```.

The final path of the file is ```/home/r14r/etc/settings.cfg```. Not what the **script** intends.

Ok, maybe you try to solve it this way:
{% highlight bash linenos=table %}
#!/bin/bash

cat $PWD/../etc/settings.cfg
{% endhighlight %}

## Solution
We need a way to speficy "the location were the script is located".

Get the path of the script and merge it with the current directory. Special handling is required, if the current directory is '.'
{% highlight bash linenos=table %}
#!/bin/bash

HERE="$PWD/${0%/*}"
HERE="$(cd "$HERE"; pwd)"

SELF=${0##*/}

echo HERE=$HERE
echo SELF=$SELF
{% endhighlight %}

If you start the script, you get the following output:
{% highlight bash linenos=table %}
$ cd $HOME/tmp/BASHTOOLBOX
BASHTOOLBOX$ bin/script.sh
HERE=/home/r14r/tmp/BASHTOOLBOX/bin
SELF=script.sh
BASHTOOLBOX$ cd bin
bin$ ./script.sh
HERE=//home/r14r/tmp/BASHTOOLBOX/bin
SELF=script.sh
{% endhighlight %}

</div>
