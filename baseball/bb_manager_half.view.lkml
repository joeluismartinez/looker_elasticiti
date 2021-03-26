view: bb_manager_half {
  sql_table_name: "LOOKER"."BB_MANAGER_HALF" ;;

  dimension: pk {
    primary_key: yes
    hidden: yes
    sql: ${player_id}||${year} ||${team_id} ||${half} ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}."G" ;;
  }

  dimension: half {
    type: number
    sql: ${TABLE}."HALF" ;;
  }

  dimension: inseason {
    type: number
    sql: ${TABLE}."INSEASON" ;;
  }

  dimension: l {
    type: number
    sql: ${TABLE}."L" ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}."LEAGUE_ID" ;;
  }

  dimension: player_id {
    type: string
    hidden: yes
    sql: ${TABLE}."PLAYER_ID" ;;
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
