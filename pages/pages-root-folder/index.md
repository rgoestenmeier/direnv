---
layout: frontpage
permalink: '/'

header:
  image: header/12.jpg

widget1:
  title: "Blog"
  url: '/blog/'
  image: letters/b.jpg
  text: 'Every good portfolio website has a blog with fresh news, thoughts and develop&shy;ments of your activities.'

#widget2:
#  title: "Behind the scene"
#  url: '/info/'
#  text: '<em>Feeling Responsive</em> is heavily customizable.<br/>1. Language-Support :)<br/>2. Optimized for speed and it&#39;s responsive.<br/>3. Built on <a href="http://foundation.zurb.com/">Foundation Framework</a>.<br/>4. Seven different Headers.<br/>5. Customizable navigation, footer,...'
#  video: '<a href="#" data-reveal-id="videoModal"><img src="#" width="302" height="182" alt=""/></a>'

widget3:
  title: "Projects"
  url: '/projects/'
  image: letters/p.jpg
  text: 'Things i have done or i haved worked with...'
---
{% if page.showintro %}
    <div id="videoModal" class="reveal-modal large" data-reveal="">
        <div class="flex-video widescreen vimeo" style="display: block;">
            <iframe width="1280" height="720" src="https://www.youtube.com/embed/3b5zCFSmVvU" frameborder="0" allowfullscreen></iframe>
        </div>
        <a class="close-reveal-modal">&#215;</a>
    </div>
{% endif %}
