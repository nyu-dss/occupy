---
layout: page
title: Browse by declaration
permalink: /declarations/
---

{% assign all_declarations = site.occupy | map: 'declarations' | uniq | natural_sort %}

{% for declaration in all_declarations %}
- {{ declaration }}
{% endfor %}
