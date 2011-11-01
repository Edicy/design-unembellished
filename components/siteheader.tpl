	<meta name="keywords" content="{{ page.keywords }}" />
	<meta name="description" content="{{ page.description }}" />
        <meta name="copyright" content="{{ site.copyright }}" />
	<meta name="author" content="{{ site.author }}" />
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	{% stylesheet_link "style.css?unembellished" %}
	{% if editmode %}{% stylesheet_link "assets/admin/editmode.css" static_host="true" %}{% endif %}
        <link rel="icon" href="/favicon.ico" type="image/x-icon" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/ico" />
	<link rel="shortcut icon" href="/favicon.ico" type="image/x-icon" />
{% if site.search.enabled %}
	{% stylesheet_link "assets/site_search/2.0/site_search.css?1" static_host="true" %}
        {% endif %}
<!--[if IE]>
{% stylesheet_link "ie.css?unembellished" %}
<style type="text/css">
.clearfix { zoom: 1;}
</style>
<![endif]-->
<!--[if IE 6]>
<style type="text/css">
#menu a, #sub a, #third a {
height: auto;
padding: 12px 20px;
}
</style>
<![endif]-->
<!--[if IE]><link rel="stylesheet" href="http://static.edicy.com/assets/ie.css" type="text/css" /><![endif]-->
<meta name="viewport" content="initial-scale=1" />