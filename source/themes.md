---
layout: page
title: Browse by Theme
permalink: /themes/
---

We welcome you to move through this site by examining thirteen exhibit themes, issues which were central to the rhetoric, actions, and demands of the Occupy movement. These themes demonstrate how Occupy understood itself as an anti-capitalist movement and created a broad umbrella for a wide range of intersecting social movements. As you engage with collection materials within each of these themes, you hope you will gain a greater understanding of what was at stake within the movement, how the movement built collective power, and where the movement struggled internally. Exhibit visitors can also navigate their way through the site according to the _[Declaration of the Occupation of New York City](https://nyu-dss.github.io/occupy/declarations/)_, a central document for the movement that codified the harms of oppressive government and corporate entities and asserting the power of the people.

<hr>

{% for theme in site.data.themes %}
##### [{{ theme.label }}]({{ page.url | absolute_url | append: theme.pid }})
{% endfor %}
