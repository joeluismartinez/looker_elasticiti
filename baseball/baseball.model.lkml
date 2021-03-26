connection: "tyson"

include: "*.view.lkml"

explore: batting {
  from: bb_batting

  join: bb_player {
    relationship: many_to_one
    sql_on: ${batting.player_id} = ${bb_player.player_id} ;;
  }

  join: bb_batting_postseason {
    relationship: many_to_one
    sql_on: ${bb_batting_postseason.player_id} = ${bb_player.player_id}
            AND ${batting.year} = ${bb_batting_postseason.year} ;;
  }

  join: bb_all_star {
    relationship: many_to_one
    sql_on: ${bb_all_star.player_id} = ${batting.player_id}
            AND ${bb_all_star.year} = ${batting.year};;
  }

  join: bb_team {
    relationship: many_to_one
    sql_on: ${bb_team.team_id} = ${batting.team_id}
            AND ${bb_team.year} = ${batting.year};;
  }

  join: bb_salary {
    relationship: many_to_one
    sql_on: ${bb_salary.player_id} = ${batting.player_id}
            AND ${bb_salary.year} = ${batting.year};;
  }

}
