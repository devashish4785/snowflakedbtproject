{% macro generate_schema_name(custom_schema_name,node) %}
    {% if custom_schema_name %}
        {{ custom_schema_name }}
    {% else %}
    -- adding commment for understnading git ub
        {{ target.schema }}
    {% endif %}
{% endmacro %}
    
