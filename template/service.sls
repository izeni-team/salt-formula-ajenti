# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "ajenti/map.jinja" import ajenti with context %}

ajenti-name:
  service.running:
    - name: {{ ajenti.service.name }}
    - enable: True
