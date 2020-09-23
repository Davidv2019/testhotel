connection: "hotel"

# include all the views
include: "/views/**/*.view"

datagroup: test_hotel_default_datagroup {
  # sql_trigger: SELECT MAX(id) FROM etl_log;;
  max_cache_age: "1 hour"
}

persist_with: test_hotel_default_datagroup

explore: hotel_master {}

explore: room_booking {}
