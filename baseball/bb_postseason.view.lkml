view: bb_postseason {
  sql_table_name: "LOOKER"."BB_POSTSEASON" ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: ${year}||${round} ;;
  }

  dimension: league_id_loser {
    type: string
    sql: ${TABLE}."LEAGUE_ID_LOSER" ;;
  }

  dimension: league_id_winner {
    type: string
    sql: ${TABLE}."LEAGUE_ID_WINNER" ;;
  }

  dimension: losses {
    type: number
    sql: ${TABLE}."LOSSES" ;;
  }

  dimension: round {
    type: string
    sql: ${TABLE}."ROUND" ;;
  }

  dimension: team_id_loser {
    type: string
    sql: ${TABLE}."TEAM_ID_LOSER" ;;
  }

  dimension: team_id_winner {
    type: string
    sql: ${TABLE}."TEAM_ID_WINNER" ;;
  }

  dimension: ties {
    type: number
    sql: ${TABLE}."TIES" ;;
  }

  dimension: wins {
    type: number
    sql: ${TABLE}."WINS" ;;
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
