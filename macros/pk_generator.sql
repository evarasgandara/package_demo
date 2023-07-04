{% macro pk_generator(cols = []) %}
    MD5(
    {%- for col in cols -%}
        {{ "cast(" ~  col ~ " as string)"}}
        {%- if not loop.last -%}||'-'|| {% endif %}
    {% endfor -%}
    )
{% endmacro %}