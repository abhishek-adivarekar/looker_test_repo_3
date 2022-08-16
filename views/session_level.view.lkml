view: session_level {
  sql_table_name: `TIAA_Dev_dataset.Session_level`
    ;;

  dimension: average_sentiment_score {
    type: number
    sql: ${TABLE}.average_sentiment_score ;;
  }

  dimension: conversation_length_in_seconds {
    type: number
    sql: ${TABLE}.conversation_length_in_seconds ;;
  }

  dimension: count_of_msg {
    type: number
    sql: ${TABLE}.count_of_msg ;;
  }

  dimension: entry_intent {
    type: string
    sql: ${TABLE}.entry_intent ;;
  }

  dimension: exit_intent {
    type: string
    sql: ${TABLE}.exit_intent ;;
  }

  dimension: first_query {
    type: string
    sql: ${TABLE}.first_query ;;
  }

  dimension: second_query {
    type: string
    sql: ${TABLE}.second_query ;;
  }

  dimension_group: session_date {
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
    sql: ${TABLE}.session_date_time ;;
  }

  dimension: session_id {
    type: string
    sql: ${TABLE}.session_id ;;
  }

  measure: count {
    type: count
    drill_fields: []
  }
}
