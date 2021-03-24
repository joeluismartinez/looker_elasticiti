view: us_cities {
  sql_table_name: "LOOKER"."US_CITIES" ;;

  dimension: aland {
    type: number
    sql: ${TABLE}."ALAND" ;;
  }

  dimension: aland_sqmi {
    type: number
    sql: ${TABLE}."ALAND_SQMI" ;;
  }

  dimension: ansicode {
    type: string
    sql: ${TABLE}."ANSICODE" ;;
  }

  dimension: awater {
    type: number
    sql: ${TABLE}."AWATER" ;;
  }

  dimension: awater_sqmi {
    type: number
    sql: ${TABLE}."AWATER_SQMI" ;;
  }

  dimension: funcstat {
    type: string
    sql: ${TABLE}."FUNCSTAT" ;;
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

  dimension: lsad {
    type: string
    sql: ${TABLE}."LSAD" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: state {
    type: string
    sql: ${TABLE}."STATE" ;;
  }

  dimension: city_location {
    type: location
    sql_latitude: ${intptlat} ;;
    sql_longitude: ${intptlong} ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
