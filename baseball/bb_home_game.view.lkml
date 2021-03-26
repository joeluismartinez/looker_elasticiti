view: bb_home_game {
  sql_table_name: "LOOKER"."BB_HOME_GAME" ;;

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${year} || ${team_id} || ${park_id} ;;
  }

  dimension: attendance {
    type: number
    sql: ${TABLE}."ATTENDANCE" ;;
  }

  dimension: games {
    type: number
    sql: ${TABLE}."GAMES" ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}."LEAGUE_ID" ;;
  }

  dimension: openings {
    type: number
    sql: ${TABLE}."OPENINGS" ;;
  }

  dimension: park_id {
    type: string
    sql: ${TABLE}."PARK_ID" ;;
  }

  dimension_group: span_first {
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
    sql: ${TABLE}."SPAN_FIRST" ;;
  }

  dimension_group: span_last {
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
    sql: ${TABLE}."SPAN_LAST" ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}."TEAM_ID" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
