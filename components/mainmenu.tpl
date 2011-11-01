<div id="menu" class="clearfix">
  {% unless site.root_item.hidden? %}<a{% if site.root_item.selected? %} class="current_page_item"{% endif %} href="{{site.root_item.url}}">{{site.root_item.title}}</a>{% endunless %}{% for item in site.visible_menuitems %}<a{% if item.selected? %} class="current_page_item"{% endif %} href="{{item.url}}"{% unless item.translated? %} class="fci-editor-menuadd untranslated"{% endunless %}>{{item.title}}</a>{% endfor %}{% menubtn site.hidden_menuitems %}{% menuadd %}
	</div>
