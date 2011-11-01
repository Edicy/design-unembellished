{% for article in site.latest_articles limit:1 %}
<li class="latestnews">
     <h2>{{"latest_news"|lc}}</h2>
    <ul>
      {% for article in site.latest_articles %}
      <li><a href="{{article.url}}">{{article.title}} ({{article.created_at | format_date:"%d %b" }})</a></li>
      {% endfor %}
    </ul>
   </li>
{% endfor %}
