view: taxi_zone_geom {
  sql_table_name: `bigquery-public-data.new_york_taxi_trips.taxi_zone_geom` ;;

  measure: count {
    type: count
    drill_fields: [detail*]
  }

  dimension: zone_id {
    type: string
    sql: ${TABLE}.zone_id ;;
  }

  dimension: zone_name {
    type: string
    sql: ${TABLE}.zone_name ;;
  }

  dimension: borough {
    type: string
    sql: ${TABLE}.borough ;;
  }

  dimension: zone_geom {
    type: string
    sql: ${TABLE}.zone_geom ;;
  }

  set: detail {
    fields: [zone_id, zone_name, borough, zone_geom]
  }
}
