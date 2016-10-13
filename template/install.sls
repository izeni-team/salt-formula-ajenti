# -*- coding: utf-8 -*-
# vim: ft=sls

{% from "ajenti/map.jinja" import ajenti with context %}

ajenti-repo:
  pkgrepo.managed:
    - name: deb http://repo.ajenti.org/ng/debian main main ubuntu
    - key_url: http://repo.ajenti.org/debian/key

ajenti-pkg:
  pkg.installed:
    - name: {{ ajenti.pkg }}
