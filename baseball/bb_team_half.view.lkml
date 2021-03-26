view: bb_team_half {
  sql_table_name: "LOOKER"."BB_TEAM_HALF" ;;

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${team_id}||${half} ;;
  }

  dimension: div_id {
    type: string
    sql: ${TABLE}."DIV_ID" ;;
  }

  dimension: div_win {
    type: string
    sql: ${TABLE}."DIV_WIN" ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}."G" ;;
  }

  dimension: half {
    type: number
    sql: ${TABLE}."HALF" ;;
  }

  dimension: l {
    type: number
    sql: ${TABLE}."L" ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}."LEAGUE_ID" ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}."RANK" ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}."TEAM_ID" ;;
  }

  dimension: w {
    type: number
    sql: ${TABLE}."W" ;;
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
