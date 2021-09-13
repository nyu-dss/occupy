---
layout: page
title: Browse by Theme
permalink: /themes/
---


We welcome you to move through this exhibit by examining these thirteen themes. These themes represent issues that were central to Occupy Wall Street. They demonstrate how Occupy positioned itself and how it created a broad umbrella for a wide range of intersecting social movements. As you engage with the collection materials within each of these themes, we hope you will gain a greater understanding of what was at stake within the movement, how the movement built collective power, and where the movement struggled internally. Exhibit visitors can also navigate their way through the site according to the _[Declaration of the Occupation of New York City]({{ '/declarations/' | absolute_url }}')_, a principle document for the movement that codified the harms of oppressive government and corporate entities and asserted the power of the people.


<hr>

{% for theme in site.data.themes %}
##### [{{ theme.label }}]({{ page.url | absolute_url | append: theme.pid }})
{% endfor %}
