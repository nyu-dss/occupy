---
layout: page
title: Declaration of the Occupation
show_title: false
permalink: /declarations/
---


## DECLARATION OF THE OCCUPATION<br>OF NEW YORK CITY

### THIS DOCUMENT WAS ACCEPTED BY THE NYC<br>GENERAL ASSEMBLY ON SEPTEMBER 29, 2011

<br>

As we gather together in solidarity to express a feeling of mass injustice, we must not lose sight of what
brought us together. We write so that all people who feel wronged by the corporate forces of the world
can know that we are your allies.

As one people, united, we acknowledge the reality: that the future of the human race requires the
cooperation of its members; that our system must protect our rights, and upon corruption of that
system, it is up to the individuals to protect their own rights, and those of their neighbors; that a
democratic government derives its just power from the people, but corporations do not seek consent to
extract wealth from the people and the Earth; and that no true democracy is attainable when the
process is determined by economic power. We come to you at a time when corporations, which place
profit over people, self-interest over justice, and oppression over equality, run our governments. We
have peaceably assembled here, as is our right, to let these facts be known.

<ul>
  {% for declaration in site.data.declarations | limit: 22 %}
  <li>
    <a href="{{ page.url | absolute_url }}{{ declaration.pid }}/" target="_none">{{ declaration.label }}</a>{% if forloop.last %}*{% endif %}
  </li>
  {% endfor %}
</ul>


To the people of the world,

We, the New York City General Assembly occupying Wall Street in Liberty Square, urge you to assert
your power.

<a href="{{ page.url | absolute_url }}{{ site.data.declarations.last.pid }}/" target="_none">{{ site.data.declarations.last.label }}</a>

Exercise your right to peaceably assemble; occupy public space; create a process to address the
problems we face, and generate solutions accessible to everyone.

To all communities that take action and form groups in the spirit of direct democracy, we offer support,
documentation, and all of the resources at our disposal.

Join us and make your voices heard!

*These grievances are not all-inclusive.
