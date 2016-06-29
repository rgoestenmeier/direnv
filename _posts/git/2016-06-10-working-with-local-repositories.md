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


# Create a Git project, storing the repository in a different place
Suppose you want to put a directory under git control.

Normaly you would do a git init in the desired folder. But this leads to a subfolder .git, which contains the repository.

If ypu want to place the repository in a diferrent place, use the following steps

## create common place for repositories
{% highlight bash %}
GITREPO=/global_place_of_git_repositories
{% endhighlight %}

## set vars for project and git folders
{% highlight bash %}
PROJECT=$1
GITHOME="$GITREPO/$PROJECT"
{% endhighlight %}

## create folders
{% highlight bash %}
mkdir -p "$GITHOME"
cd "$PROJECT"
git --git-dir $GITHOME --work-tree=. init && echo "gitdir: $GITHOME" > .git
{% endhighlight %}

