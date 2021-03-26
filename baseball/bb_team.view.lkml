view: bb_team {
  sql_table_name: "LOOKER"."BB_TEAM" ;;

  dimension: pk {
    hidden: yes
    primary_key: yes
    sql: ${team_id} ||${year} ;;
  }

  dimension: ab {
    type: number
    sql: ${TABLE}."AB" ;;
  }

  dimension: attendance {
    type: number
    sql: ${TABLE}."ATTENDANCE" ;;
  }

  dimension: bb {
    type: number
    sql: ${TABLE}."BB" ;;
  }

  dimension: bba {
    type: number
    sql: ${TABLE}."BBA" ;;
  }

  dimension: bpf {
    type: number
    sql: ${TABLE}."BPF" ;;
  }

  dimension: cg {
    type: number
    sql: ${TABLE}."CG" ;;
  }

  dimension: cs {
    type: number
    sql: ${TABLE}."CS" ;;
  }

  dimension: div_id {
    type: string
    sql: ${TABLE}."DIV_ID" ;;
  }

  dimension: div_win {
    type: string
    sql: ${TABLE}."DIV_WIN" ;;
  }

  dimension: double {
    type: number
    sql: ${TABLE}."DOUBLE" ;;
  }

  dimension: dp {
    type: number
    sql: ${TABLE}."DP" ;;
  }

  dimension: e {
    type: number
    sql: ${TABLE}."E" ;;
  }

  dimension: er {
    type: number
    sql: ${TABLE}."ER" ;;
  }

  dimension: era {
    type: number
    sql: ${TABLE}."ERA" ;;
  }

  dimension: fp {
    type: number
    sql: ${TABLE}."FP" ;;
  }

  dimension: franchise_id {
    type: string
    sql: ${TABLE}."FRANCHISE_ID" ;;
  }

  dimension: g {
    type: number
    sql: ${TABLE}."G" ;;
  }

  dimension: ghome {
    type: number
    sql: ${TABLE}."GHOME" ;;
  }

  dimension: h {
    type: number
    sql: ${TABLE}."H" ;;
  }

  dimension: ha {
    type: number
    sql: ${TABLE}."HA" ;;
  }

  dimension: hbp {
    type: number
    sql: ${TABLE}."HBP" ;;
  }

  dimension: hr {
    type: number
    sql: ${TABLE}."HR" ;;
  }

  dimension: hra {
    type: number
    sql: ${TABLE}."HRA" ;;
  }

  dimension: ipouts {
    type: number
    sql: ${TABLE}."IPOUTS" ;;
  }

  dimension: l {
    type: number
    sql: ${TABLE}."L" ;;
  }

  dimension: league_id {
    type: string
    sql: ${TABLE}."LEAGUE_ID" ;;
  }

  dimension: lg_win {
    type: string
    sql: ${TABLE}."LG_WIN" ;;
  }

  dimension: name {
    type: string
    sql: ${TABLE}."NAME" ;;
  }

  dimension: park {
    type: string
    sql: ${TABLE}."PARK" ;;
  }

  dimension: ppf {
    type: number
    sql: ${TABLE}."PPF" ;;
  }

  dimension: r {
    type: number
    sql: ${TABLE}."R" ;;
  }

  dimension: ra {
    type: number
    sql: ${TABLE}."RA" ;;
  }

  dimension: rank {
    type: number
    sql: ${TABLE}."RANK" ;;
  }

  dimension: sb {
    type: number
    sql: ${TABLE}."SB" ;;
  }

  dimension: sf {
    type: number
    sql: ${TABLE}."SF" ;;
  }

  dimension: sho {
    type: number
    sql: ${TABLE}."SHO" ;;
  }

  dimension: so {
    type: number
    sql: ${TABLE}."SO" ;;
  }

  dimension: soa {
    type: number
    sql: ${TABLE}."SOA" ;;
  }

  dimension: sv {
    type: number
    sql: ${TABLE}."SV" ;;
  }

  dimension: team_id {
    type: string
    sql: ${TABLE}."TEAM_ID" ;;
  }

  dimension: team_id_br {
    type: string
    sql: ${TABLE}."TEAM_ID_BR" ;;
  }

  dimension: team_id_lahman45 {
    type: string
    sql: ${TABLE}."TEAM_ID_LAHMAN45" ;;
  }

  dimension: team_id_retro {
    type: string
    sql: ${TABLE}."TEAM_ID_RETRO" ;;
  }

  dimension: triple {
    type: number
    sql: ${TABLE}."TRIPLE" ;;
  }

  dimension: w {
    type: number
    sql: ${TABLE}."W" ;;
  }

  dimension: wc_win {
    type: string
    sql: ${TABLE}."WC_WIN" ;;
  }

  dimension: ws_win {
    type: string
    sql: ${TABLE}."WS_WIN" ;;
  }

  dimension: year {
    type: number
    sql: ${TABLE}."YEAR" ;;
  }

  measure: count {
    type: count
    drill_fields: [name]
  }
}
