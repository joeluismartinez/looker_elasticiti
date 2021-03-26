view: bb_salary {
  sql_table_name: "LOOKER"."BB_SALARY" ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: ${player_id}||${team_id}||${year} ;;
  }

  dimension: league_id {
    type: string
    hidden: yes
    sql: ${TABLE}."LEAGUE_ID" ;;
  }

  dimension: player_id {
    type: string
    hidden: yes
    sql: ${TABLE}."PLAYER_ID" ;;
  }

  dimension: salary {
    type: number
    value_format_name: usd_0
    sql: ${TABLE}."SALARY" ;;
  }

  measure: salary_sum {
    type: sum
    value_format_name: usd_0
    sql: ${salary} ;;
  }

  dimension: team_id {
    type: string
    hidden: yes
    sql: ${TABLE}."TEAM_ID" ;;
  }

  dimension: year {
    type: number
    hidden: yes
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    hidden: yes
    drill_fields: []
  }
}
