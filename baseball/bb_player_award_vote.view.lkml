view: bb_player_award_vote {
  sql_table_name: "LOOKER"."BB_PLAYER_AWARD_VOTE" ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: ${player_id} ||${year}||${award_id}||${league_id} ;;
  }

  dimension: award_id {
    type: string
    sql: ${TABLE}."AWARD_ID" ;;
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

  dimension: points_max {
    type: number
    sql: ${TABLE}."POINTS_MAX" ;;
  }

  dimension: points_won {
    type: number
    sql: ${TABLE}."POINTS_WON" ;;
  }

  dimension: votes_first {
    type: number
    sql: ${TABLE}."VOTES_FIRST" ;;
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
