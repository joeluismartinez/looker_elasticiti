view: bb_all_star {
  sql_table_name: "LOOKER"."BB_ALL_STAR" ;;

  dimension: pk {
    type: string
    hidden: yes
    primary_key: yes
    sql: COALESCE(${player_id},'A') || COALESCE(${year},1) || COALESCE(${game_id},'A') ;;
  }

  dimension: game_id {
    type: string
    sql: ${TABLE}."GAME_ID" ;;
  }

  dimension: game_num {
    type: number
    sql: ${TABLE}."GAME_NUM" ;;
  }

  dimension: gp {
    type: string
    sql: ${TABLE}."GP" ;;
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

  dimension: starting_pos {
    type: string
    sql: ${TABLE}."STARTING_POS" ;;
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
