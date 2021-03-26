view: bb_player_award {
  sql_table_name: "LOOKER"."BB_PLAYER_AWARD" ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: ${player_id} ||${award_id}||${year}||${league_id} ;;
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
    hidden: yes
    drill_fields: []
  }
}
