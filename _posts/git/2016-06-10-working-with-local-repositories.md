---
layout: post-fullwidth

subheadline: Git - Working with local repositories
title: 'Git - Howto'

header:
  image: header/12.jpg

categories:
  - git

tags:
  - git links

author: r14r
---


## Create a Git project, storing the repository in a different place
Suppose you want to put a directory under git control.
Normaly you would do a git init in the desired folder. But this leads to a subfolder .git, which contains the repository.
If ypu want to place the repository in a diferrent place, use the following steps

## create common place for repositories
{% highlight shell %}
$ GITREPO=~/tmp/git/git_repositories
{% endhighlight %}

## set vars for project and git folders
{% highlight shell %}
$ PROJECT=master
$ GITHOME="$GITREPO/$PROJECT"
$ echo $PROJECT
master
$ echo $GITHOME
/home/user/tmp/git/git_repositories/master
{% endhighlight %}

## create folders
{% highlight shell %}
$ mkdir -p $GITHOME
$ mkdir $PROJECT
$ cd $PROJECT
## initialize repository
$ git --git-dir $GITHOME --work-tree=. init && echo "gitdir: $GITHOME" > .git
Initialized empty Git repository in /home/crmbatch/tmp/git/git_repositories/master/
$ git status
# On branch master
#
# Initial commit
#
nothing to commit (create/copy files and use "git add" to track)
{% endhighlight %}

## create work folder for checkout files of reposiory
{% highlight shell %}
mkdir work
cd work
echo "gitdir: /home/crmbatch/tmp/git/git_repositories/master" >.git
{% endhighlight %}

Finally, checkout some files
{% highlight shell %}
$ git checkout a/README

{% endhighlight %}

 checkout
