<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
{% include "SiteHeader" %}
{{ blog.rss_link }}
</head>
<body{% if site.has_many_languages? %} class="languages-body"{% endif %}{% if editmode %} class="languages-body"{% endif %}>
  {% include "Langmenu" %}
<div id="wrapper">
<!-- start header -->
<div id="header">
	<div id="logo" class="clearfix">
   {% editable site.header %}
   <div class="clearer"></div>
	</div>
	{% include "Mainmenu" %}
</div>
<!-- end header -->

<!-- start page -->
<div id="page">
	<!-- start content -->
	<div id="content">
   <div id="menus">
   {% include "Submenu" %}
   </div>
   <div class="content-inner">
       {% if tags %}
            <div class="tagged-list-header">
                <div class="header-tag-icon"></div>
                {% if tags == empty %}
                    {{ "no_posts_tagged" | lc }}
                {% else %}
                    {{ "posts_tagged" | lc }} '{{ tags | sort:"name" | map:"name" | join:"', '"}}'.
                {% endif %}
            </div>
        {% endif %}
     {% addbutton class="add-article" %}
     
	{% for article in articles %}
  <div class="post">
    <h1 class="title"><a href="{{article.url}}">{{article.title}}</a> | <span class="blog-author">{{article.created_at | format_date:"%d %b %y"}}, {{article.author.name}}</span></h1>
   <div class="entry">
    <p class="clearfix">{{article.excerpt}}</p>
   </div>
   <div class="meta">
    <p class="links"><a href="{{article.url}}" class="more">{{"read_more"|lc}}</a> <b>|</b> <a href="{{article.url}}#comments" class="comments">{{"comments"|lc}} ({{article.comments_count}})</a></p>
   </div>
  </div>
	{% endfor %}
	</div>
  </div>
	<!-- end content -->
	<!-- start sidebar -->
	<div id="sidebar">
  <ul>
   {% include "Search" %}
   {% include "Latest_news" %}
  </ul>
	</div>
	<!-- end sidebar -->
	<div style="clear: both;">&nbsp;</div>
</div>
<!-- end page -->
</div>
<!-- start footer -->
<div id="footer">
   <div id="legal" class="clearfix"><div id="designby">Unembellished template by <a href="http://www.freecsstemplates.org">freeCSStemplates.org</a></div><div id="footer-inner" class="clearfix">{% xcontent name="footer" %}</div><div id="edicy">{% loginblock %}{{ "footer_login_link" | lc }}{% endloginblock %}</div></div>
</div>
  {% include "JS" %}
<!-- end footer -->
</body>
</html>

