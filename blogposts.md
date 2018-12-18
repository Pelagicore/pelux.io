---
layout: page
title: Blog
permalink: /blogposts/
---

<div class="home">

  <p class="rss-subscribe">Subscribe <a href="{{ "/feed.xml" | relative_url }}">via RSS</a></p>

  {% if site.posts.size > 0 %}

  <ul class="post-list">
    {% for post in site.posts %}
      <li>
        {% assign date_format = site.minima.date_format | default: "%b %-d, %Y" %}
        <span class="post-meta">{{ post.date | date: date_format }}</span>

        <h2>
          <a class="post-link" href="{{ post.url | relative_url }}">{{ post.title | escape }}</a>
        </h2>
      </li>
    {% endfor %}
  </ul>

  {% endif %}

</div>
