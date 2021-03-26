view: bb_manager {
  sql_table_name: "LOOKER"."BB_MANAGER" ;;

  dimension: pk  {
    primary_key: yes
    hidden: yes
    sql: ${player_id} ||${award_id} ||${year} ;;
  }

  dimension: award_id {
    type: string
    sql: ${TABLE}."AWARD_ID" ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}."LEAGUE_ID" ;;
  }

  dimension: notes {
    type: string
    sql: ${TABLE}."NOTES" ;;
  }

  dimension: player_id {
    type: string
    hidden: yes
    sql: ${TABLE}."PLAYER_ID" ;;
  }

  dimension: tie {
    type: string
    sql: ${TABLE}."TIE" ;;
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
