view: query_level {
  sql_table_name: `TIAA_Dev_dataset.Query_level`
    ;;

  dimension: bot_response {
    type: string
    sql: ${TABLE}.bot_response ;;
  }

  dimension: intent_triggered {
    type: string
    sql: ${TABLE}.Intent_triggered ;;
  }

  dimension: intentdetectionconfidence {
    type: number
    sql: ${TABLE}.intentdetectionconfidence ;;
  }

  dimension: matchtype {
    type: string
    sql: ${TABLE}.matchtype ;;
  }

  dimension: pageid {
    type: string
    sql: ${TABLE}.pageid ;;
  }

  dimension_group: request {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.request_time ;;
  }

  dimension_group: response {
    type: time
    timeframes: [
      raw,
      time,
      date,
      week,
      month,
      quarter,
      year
    ]
    sql: ${TABLE}.response_time ;;
  }

  dimension: responseid {
    type: string
    sql: ${TABLE}.responseid ;;
  }

  dimension: sentiment_magnitude {
    type: number
    sql: ${TABLE}.sentiment_magnitude ;;
  }

  dimension: sentiment_score {
    type: number
    sql: ${TABLE}.sentiment_score ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  dimension: user_query {
    type: string
    sql: ${TABLE}.user_query ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
