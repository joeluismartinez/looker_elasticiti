view: bb_player {
  sql_table_name: "LOOKER"."BB_PLAYER" ;;

  dimension: player_id {
    type: string
    primary_key: yes
    sql: ${TABLE}."PLAYER_ID" ;;
  }

  dimension: bats {
    type: string
    sql: ${TABLE}."BATS" ;;
  }

  dimension: bbref_id {
    type: string
    hidden: yes
    sql: ${TABLE}."BBREF_ID" ;;
  }

  dimension: birth_city {
    type: string
    sql: ${TABLE}."BIRTH_CITY" ;;
  }

  dimension: birth_country {
    type: string
    sql: ${TABLE}."BIRTH_COUNTRY" ;;
  }

  dimension: birth_day {
    type: number
    sql: ${TABLE}."BIRTH_DAY" ;;
  }

  dimension: birth_month {
    type: number
    sql: ${TABLE}."BIRTH_MONTH" ;;
  }

  dimension: birth_state {
    type: string
    sql: ${TABLE}."BIRTH_STATE" ;;
  }

  dimension: birth_year {
    type: number
    sql: ${TABLE}."BIRTH_YEAR" ;;
  }

  dimension: death_city {
    type: string
    sql: ${TABLE}."DEATH_CITY" ;;
  }

  dimension: death_country {
    type: string
    sql: ${TABLE}."DEATH_COUNTRY" ;;
  }

  dimension: death_day {
    type: number
    sql: ${TABLE}."DEATH_DAY" ;;
  }

  dimension: death_month {
    type: number
    sql: ${TABLE}."DEATH_MONTH" ;;
  }

  dimension: death_state {
    type: string
    sql: ${TABLE}."DEATH_STATE" ;;
  }

  dimension: death_year {
    type: number
    sql: ${TABLE}."DEATH_YEAR" ;;
  }

  dimension_group: debut {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."DEBUT" ;;
  }

  dimension_group: final_game {
    type: time
    timeframes: [
      raw,
      date,
      week,
      month,
      quarter,
      year
    ]
    convert_tz: no
    datatype: date
    sql: ${TABLE}."FINAL_GAME" ;;
  }

  dimension: first_name {
    type: string
    hidden: yes
    sql: ${TABLE}."FIRST_NAME" ;;
  }

  dimension: given_name {
    type: string
    hidden: no
    sql: ${TABLE}."GIVEN_NAME" ;;
  }

  dimension: last_name {
    type: string
    hidden: yes
    sql: ${TABLE}."LAST_NAME" ;;
  }

  dimension: full_name {
    type: string
    sql: COALESCE(${first_name},'-') || ' ' || COALESCE(${last_name},'-') ;;
  }

  dimension: height {
    type: number
    sql: ${TABLE}."HEIGHT" ;;
  }


  dimension: retro_id {
    type: string
    hidden: yes
    sql: ${TABLE}."RETRO_ID" ;;
  }

  dimension: throws {
    type: string
    sql: ${TABLE}."THROWS" ;;
  }

  dimension: weight {
    type: number
    sql: ${TABLE}."WEIGHT" ;;
  }

  measure: count {
    type: count
    drill_fields: [first_name, given_name, last_name]
  }
}
