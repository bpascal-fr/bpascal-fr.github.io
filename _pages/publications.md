---
permalink: "/publications/"
layout: single
# classes: wide
author_profile: true
title: ""
toc: true
toc_label: "Publications"
toc_sticky: true
---

<!-- Go to _config.yml file and fill the corresponding fields author.academic_profiles.xxxx-->
{% if site.author.academic_profiles.google-scholar %}
  <a href="{{ site.author.academic_profiles.google-scholar }}">
    <i class="ai ai-google-scholar" aria-hidden="true"></i>Scholar
  </a>
{% endif %}
{% if site.author.academic_profiles.orcid %}
  <a href="{{ site.author.academic_profiles.orcid }}">
    <i class="ai ai-orcid" aria-hidden="true"></i>Orcid
  </a>
{% endif %}
{% if site.author.academic_profiles.hal %}
  <a href="{{ site.author.academic_profiles.hal }}">
    <i class="ai ai-hal" aria-hidden="true"></i>HAL
  </a>
{% endif %}
{% if site.author.academic_profiles.arxiv %}
  <a href="{{ site.author.academic_profiles.arxiv }}">
    <i class="ai ai-arxiv" aria-hidden="true"></i>Arxiv
  </a>
{% endif %}

<!-- See also https://github.com/inukshuk/jekyll-scholar to customize your references -->

This is a mock example: the references are not correct!

<!-- Preprints -->
{% capture counter_preprints %}{% bibliography_count --query @unpublished %}{% endcapture %}
{% if counter_preprints != "0" %}

## Preprints

  {% bibliography --query @unpublished %}
{% endif %}

<!-- Journal articles-->
{% capture counter_book %}{% bibliography_count --query @book %}{% endcapture %}
{% if counter_book != "0" %}

## Books

  {% bibliography --query @book %}
{% endif %}

<!-- Journal articles-->
{% capture counter_article %}{% bibliography_count --query @article %}{% endcapture %}
{% if counter_article != "0" %}

## Journal articles

  {% bibliography --query @article %}
{% endif %}

<!-- Conference papers -->
{% capture counter_inproceedings %}{% bibliography_count --query @inproceedings %}{% endcapture %}
{% if counter_inproceedings != "0" %}

## Conference papers

  {% bibliography --query @inproceedings %}
{% endif %}

<!-- Workshop papers -->
{% capture counter_workshop %}{% bibliography_count --query @misc[keywords=workshop] %}{% endcapture %}
{% if counter_workshop != "0" %}

## Workshop papers

  {% bibliography --query @misc[keywords=workshop] %}
{% endif %}

<!-- Thesis -->
{% capture counter_thesis %}{% bibliography_count --query @thesis %}{% endcapture %}
{% if counter_thesis != "0" %}

## Thesis

  {% bibliography --query @thesis %}
{% endif %}

<!-- Popularization -->
{% capture counter_popularization %}{% bibliography_count --query @misc[keywords=popularization] %}{% endcapture %}
{% if counter_popularization != "0" %}

## Popularization

  {% bibliography --query @misc[keywords=popularization] %}
{% endif %}
