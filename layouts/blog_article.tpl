<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
{% include "SiteHeader" %}
  <title>{{article.title}} &lt; {{page.title}} | {{site.name}}</title>
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
  <div class="post" style="border-bottom: none;">
    <h1 class="title">{% editable article.title %} | <span class="blog-author">{{article.created_at | format_date:"%d %b %y"}}, {{article.author.name}}</a></h1>
   <div class="entry">
    <div class="excerpt clearfix">{% editable article.excerpt %}</div>
    <div class="clearfix">{% editable article.body %}</div>
   </div>
    {% commentform %}

  <a name="comment-form"></a>
  <a name="comments"></a>
  
  <table class="comment">
  <tr>
   <td colspan="2"><h2>{{"comments_for_count"|lc}}: <span class="edy-site-blog-comments-count">{{ article.comments_count }}</span>
</h2></td>
  </tr>
  {% for comment in article.comments %}
  <tr class="edy-site-blog-comment">
   <td class="date" valign="top">{{ comment.created_at | format_date:"%d %b %y" }} {% removebutton %}</td>
   <td valign="top">
    <span class="author">{{ comment.author }}:</span> {{ comment.body }}
   </td>
  
  </tr>
  {% endfor %}
  </table>{% unless comment.valid? %}<ul>
{% for error in comment.errors %}
<li>{{ error | lc }}</li>
{% endfor %}
</ul>{% endunless %}
    
  <table style="width: 100%;">
  <tr>
   <td colspan="2"><h2>{{"add_a_comment"|lc}}</h2></td>
  </tr>
  <tr>
   <td>{{"name"|lc}}</td>
   <td><input type="text" name="comment[author]" class="text" value="{{comment.author}}" /></td>
  </tr>
  <tr>
   <td>{{"email"|lc}}</td>
  
   <td><input type="text" name="comment[author_email]" class="text" value="{{comment.author_email}}" /></td>
  </tr>
  <tr>
   <td valign="top">{{"comment"|lc}}</td>
   <td><textarea name="comment[body]" cols="15" rows="5" class="comment">{{comment.body}}</textarea></td>
  </tr>
  <tr>
   <td></td>
  
   <td><input type="submit" value="{{"submit"|lc}}" /></td>
  </tr>
  
  </table>
  {% endcommentform %}
  </div>
      </div></div>
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

