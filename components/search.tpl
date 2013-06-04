{% if site.search.enabled %}
   <li id="search">
     <h2>{{"search"|lc}}</h2>
    <form action="#" class="edys-search">
     <fieldset>
     <input type="text" id="onpage_search" class="edys-search-input" placeholder="{{ "search"|lc }}" />
     <input type="submit" value="{{'search'|lc}}" id="x" />
     </fieldset>
    </form>
   </li>
{% endif %}
