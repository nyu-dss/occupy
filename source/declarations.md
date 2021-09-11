---
layout: page
title: About the <i>Declaration of the Occupation of New York City</i>
permalink: /declarations/
---

**No Turning Back: Ten Years After Occupy** is organized around the _Declaration of the Occupation of New York City_—drafted by the Call to Action Working Group and ratified by New York City General Assembly (NYCGA) on September 29, 2011. While the right-leaning media attempted to define the movement as one “without a message,” the Occupy activists were clear about what they wanted to communicate to the world. Though some accounts of the writing of the _Declaration_ portray its writing as one of harmonious co-authorship, original drafts of the document adopted a color-blind logic and were pivotally blocked at the NYCGA by activists of color. The _Declaration_ was ultimately meant to be a living document; however, after its initial adoption by the NYCGA, the document was seemingly unchanged. Reading the document ten years after its authorship, there are points that resonate and many apparent gaps which underscore the document’s insufficiency.

In spite of its flaws, the _Declaration_, along with the [Principles of Solidarity](https://wayback.archive-it.org/6339/20130208193214/http://occupywallstreet.net/learn), was a defining text of the movement. Taking Occupy's pronouncement “[speak with us, not for us](https://wayback.archive-it.org/6339/20130208193214/http://occupywallstreet.net/learn)” seriously, we have allowed the _Declaration_ to guide this exhibit; the exhibit is illustrative of the _Declaration’s_ points. Below this introduction, you will find the full text of the _Declaration of the Occupation of New York City_. For aspects of the _Declaration_ where we surfaced related documentation, we have digitized those materials and tagged them with that associated statement. Some documents relate to more than one point within the _Declaration_. Exhibit visitors can also navigate their way through the site according to a set of [thirteen themes ](https://nyu-dss.github.io/occupy/themes/)which are representative of some of the issues around which the movement coalesced.

Below is a reproduction of the *Declaration of the Occupation of New York City* with declarations linked to relevant items in the exhibit.

## Read the Document and Browse Related Items
<br>

<div class="inline-doc">
  <h3>DECLARATION OF THE OCCUPATION<br>OF NEW YORK CITY</h3>
  <h4>THIS DOCUMENT WAS ACCEPTED BY THE NYC<br>GENERAL ASSEMBLY ON SEPTEMBER 29, 2011</h4>
  <br>
  <p>As we gather together in solidarity to express a feeling of mass injustice, we must not lose sight of what brought us together. We write so that all people who feel wronged by the corporate forces of the world can know that we are your allies.</p>

  <p>As one people, united, we acknowledge the reality: that the future of the human race requires the cooperation of its members; that our system must protect our rights, and upon corruption of that system, it is up to the individuals to protect their own rights, and those of their neighbors; that a
  democratic government derives its just power from the people, but corporations do not seek consent to extract wealth from the people and the Earth; and that no true democracy is attainable when the process is determined by economic power. We come to you at a time when corporations, which place profit over people, self-interest over justice, and oppression over equality, run our governments. We have peaceably assembled here, as is our right, to let these facts be known.</p>
  <ul>
    {% for declaration in site.data.declarations limit: 22 %}
    <li>
      {% assign items = site.items | where_exp: "item", "item.declarations contains declaration.pid" %}
      {% if items.size > 0 %}
      <a href="{{ page.url | absolute_url }}/{{ declaration.pid }}" target="_none">
        {{ declaration.label }} <i class="fas fa-external-link-square-alt"></i>
      </a>
      {% else %}{{ declaration.label }}{% endif %}{% if forloop.last %}*{% endif %}
    </li>
    {% endfor %}
  </ul>
  <p>To the people of the world,</p>

  <p>We, the New York City General Assembly occupying Wall Street in Liberty Square, urge you to assert your power.</p>

  <p>
    {% assign items = site.items | where_exp: "item", "item.declarations contains site.data.declarations.last.pid" %}
    {% if items.size > 0 %}
      <a href="{{ page.url | absolute_url }}/{{ site.data.declarations.last.pid }}" target="_none">{{ site.data.declarations.last.label }} <i class="fas fa-external-link-square-alt"></i></a>
    {% else %}
      {{ site.data.declarations.last.label }}
    {% endif %}
  </p>

  <p>Exercise your right to peaceably assemble; occupy public space; create a process to address the problems we face, and generate solutions accessible to everyone.</p>

  <p>To all communities that take action and form groups in the spirit of direct democracy, we offer support, documentation, and all of the resources at our disposal.</p>

  <p>Join us and make your voices heard!</p>

  <p>*These grievances are not all-inclusive.</p>
</div>
