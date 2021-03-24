view: us_counties {
  sql_table_name: "LOOKER"."US_COUNTIES" ;;

  dimension: aland {
    type: string
    sql: ${TABLE}."ALAND" ;;
  }

  dimension: aland_sqmi {
    type: string
    sql: ${TABLE}."ALAND_SQMI" ;;
  }

  dimension: ansicode {
    type: string
    sql: ${TABLE}."ANSICODE" ;;
  }

  dimension: awater {
    type: string
    sql: ${TABLE}."AWATER" ;;
  }

  dimension: awater_sqmi {
    type: string
    sql: ${TABLE}."AWATER_SQMI" ;;
  }

  dimension: geoid {
    type: string
    primary_key: yes
    sql: ${TABLE}."GEOID" ;;
  }

  dimension: intptlat {
    type: number
    sql: ${TABLE}."INTPTLAT" ;;
  }

  dimension: intptlong {
    type: number
    sql: ${TABLE}."INTPTLONG" ;;
  }

  dimension: location {
    sql_latitude: ${intptlat} ;;
    sql_longitude: ${intptlong} ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
