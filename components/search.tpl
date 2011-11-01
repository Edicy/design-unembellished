{% if site.search.enabled %}
   <li id="search">
     <h2>{{"search"|lc}}</h2>
    <form action="#">
     <fieldset>
     <input type="text" id="onpage_search" />
     <input type="submit" value="{{'search'|lc}}" id="x" />
     </fieldset>
    </form>
   </li>
{% endif %}
