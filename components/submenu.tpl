{% for item in site.menuitems %}
{% if item.selected? %}
  {% if editmode %}
   <div id="submenu" class="clearfix">
    {% for level2 in item.visible_children %}<a href="{{level2.url}}"{% if level2.selected? %} class="active"{% endif %}{% unless level2.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}>{{level2.title}}</a>{% endfor %}
     {% menubtn item.hidden_children %}
     {% menuadd parent="item" %}
   </div>
   {% for level2 in item.all_children %}
    {% if level2.selected? %}
     <div id="thirdmenu" class="clearfix">
      {% for level3 in level2.visible_children %}<a href="{{level3.url}}"{% if level3.selected? %} class="active"{% endif %}{% unless level3.translated? %} class="untranslated fci-editor-menuadd"{% endunless %}>{{level3.title}}</a>{% endfor %}
       {% menubtn level2.hidden_children %}
       {% menuadd parent="level2" %}
     </div>
    {% endif %}
   {% endfor %}
  {% else %}{% if item.children? %}<div id="submenu" class="clearfix">{% for level2 in item.children %}<a href="{{level2.url}}"{% if level2.selected? %} class="active"{% endif %}>{{level2.title}}</a>{% endfor %}</div>{% for level2 in item.children %}{% if level2.selected_with_children? %}<div id="thirdmenu" class="clearfix">{% for level3 in level2.children %}<a href="{{level3.url}}"{% if level3.selected? %} class="active"{% endif %}>{{level3.title}}</a>{% endfor %}</div>{% endif %}{% endfor %}{% endif %}{% endif %}
{% endif %}
{% endfor %}