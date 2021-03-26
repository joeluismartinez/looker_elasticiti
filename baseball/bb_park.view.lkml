view: bb_park {
  sql_table_name: "LOOKER"."BB_PARK" ;;

  dimension: park_id {
    type: string
    primary_key: yes
    hidden: yes
    sql: ${TABLE}."PARK_ID" ;;
  }

  dimension: city {
    type: string
    sql: ${TABLE}."CITY" ;;
  }

  dimension: country {
    type: string
    map_layer_name: countries
    sql: ${TABLE}."COUNTRY" ;;
  }

  dimension: park_alias {
    type: string
    sql: ${TABLE}."PARK_ALIAS" ;;
  }

  dimension: park_name {
    type: string
    sql: ${TABLE}."PARK_NAME" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [park_name]
  }
}
