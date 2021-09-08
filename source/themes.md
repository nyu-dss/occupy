---
layout: page
title: Exhibit Themes
permalink: /themes/
---

We welcome you to move through this site by examining thirteen exhibit themes, issues which were central to the rhetoric, actions, and demands of the Occupy movement. These themes demonstrate how Occupy understood itself as an anti-capitalist movement and created a broad umbrella for a wide range of intersecting social movements. As you engage with collection materials within each of these themes, you hope you will gain a greater understanding of what was at stake within the movement, how the movement built collective power, and where the movement struggled internally. Exhibit visitors can also navigate their way through the site according to the _[Declaration of the Occupation of New York City](https://nyu-dss.github.io/occupy/declarations/)_, a central document for the movement that codified the harms of oppressive government and corporate entities and asserting the power of the people.

<hr>

### Browse by Theme

{% assign all_themes = '' | split: '' %}
{% for item in site.occupy %}
  {% if item.themes.first %}
    {% assign item_themes = item.themes %}
  {% else %}
    {% assign item_themes = item.themes | append: '|' | split: '|' %}
  {% endif %}
  {% assign all_themes = all_themes | concat: item_themes %}
{% endfor %}

{% assign all_themes = all_themes | uniq | sort_natural %}

{% for theme in site.data.themes %}[{{ theme.label }}](#{{ theme.pid | slugify }}){% unless forloop.last %} / {% endunless %}{% endfor %}

{% for theme in site.data.themes %}
<h4 id="{{ theme.pid}}">#{{ theme.label }}</h4>

<div id='wax-gallery-{{ include.collection }}-container' class='wax-gallery-container full-width'>
  <div class='wax-inline-container'>
    <div id="wax-gallery-{{ include.collection }}" class="wax-gallery">

      {% for item in site.occupy %}
        {% if item.themes contains theme.pid %}
          <div class='gallery-item'>
            <a href='{{ item.url | absolute_url }}'>
              <div class='hovereffect'>
                <img class='img-responsive gallery-thumb' src='{{ item.thumbnail | default: 'img/default.png'  | absolute_url }}' alt='{{ item.label | default: item.pid | escape }}'/>
                <div class='overlay'>
                  <p class='info'>{{ item.label | default: item.pid | escape }}</p>
                </div>
              </div>
            </a>
          </div>
        {% endif %}
      {% endfor %}
    </div>
  </div>
</div>
{% endfor %}
