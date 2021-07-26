---
layout: page
title: Browse by theme
permalink: /themes/
---

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

{% for theme in all_themes %}[{{ theme }}](#{{ theme | slugify }}){% unless forloop.last %} / {% endunless %}{% endfor %}

{% for theme in all_themes %}
### #{{ theme }}

<div id='wax-gallery-{{ include.collection }}-container' class='wax-gallery-container full-width'>
  <div class='wax-inline-container'>
    <div id="wax-gallery-{{ include.collection }}" class="wax-gallery">

      {% for item in site.occupy %}
        {% if item.themes contains theme %}
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




{% comment %}

{% assign all_declarations = site.occupy | map: 'declarations' | uniq | natural_sort %}

### declarations
{% for declaration in all_declarations %}
- {{ declaration }}
{% endfor %}

{% endcomment %}
