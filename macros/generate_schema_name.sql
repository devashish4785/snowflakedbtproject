{% macro generate_schema_name(custom_schema_name,node) %}
    {% if custom_schema_name %}
        {{ custom_schema_name }}
    {% else %}
    -- adding commment for understanding github
        {{ target.schema }}
    {% endif %}
{% endmacro %}
    
