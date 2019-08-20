- dashboard: nyc_taxi_overview
  title: NYC Taxi Overview
  layout: newspaper
  elements:
  - name: Total Taxi Trips
    title: Total Taxi Trips
    model: nyc_taxi
    explore: nyc_taxi_trips
    type: single_value
    fields: [nyc_taxi_trips.count]
    filters: {}
    sorts: [nyc_taxi_trips.count desc]
    limit: 500
    color_palette: Custom
    point_style: none
    interpolation: linear
    show_null_points: true
    value_labels: labels
    label_type: labPer
    font_size: small
    show_view_names: true
    colors: ["#8dd3c7", "#549183", "#80b37d", "#00941d", "#80b1d3", "#fdb462", "#b3de69",
      "#fccde5", "#d9d9d9", "#bc80bd", "#ccebc5", "#a3a3ff"]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    text_color: black
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Origin: nyc_taxi_trips.likely_origin
      Destination: nyc_taxi_trips.likely_destination
      Pickup Date: nyc_taxi_trips.pickup_date
    row: 0
    col: 0
    width: 6
    height: 3
  - name: Average Trip Distance (Miles)
    title: Average Trip Distance (Miles)
    model: nyc_taxi
    explore: nyc_taxi_trips
    type: single_value
    fields: [nyc_taxi_trips.average_distance]
    filters: {}
    sorts: [nyc_taxi_trips.average_distance desc]
    limit: 500
    color_palette: Custom
    point_style: none
    interpolation: linear
    show_null_points: true
    value_labels: labels
    label_type: labPer
    font_size: small
    show_view_names: true
    colors: ["#8dd3c7", "#549183", "#80b37d", "#00941d", "#80b1d3", "#fdb462", "#b3de69",
      "#fccde5", "#d9d9d9", "#bc80bd", "#ccebc5", "#a3a3ff"]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    text_color: black
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Origin: nyc_taxi_trips.likely_origin
      Destination: nyc_taxi_trips.likely_destination
      Pickup Date: nyc_taxi_trips.pickup_date
    row: 0
    col: 6
    width: 7
    height: 3
  - name: Average Number of Passengers
    title: Average Number of Passengers
    model: nyc_taxi
    explore: nyc_taxi_trips
    type: single_value
    fields: [nyc_taxi_trips.average_passengers]
    filters: {}
    sorts: [nyc_taxi_trips.average_passengers desc]
    limit: 500
    color_palette: Custom
    point_style: none
    interpolation: linear
    show_null_points: true
    value_labels: labels
    label_type: labPer
    font_size: small
    show_view_names: true
    colors: ["#8dd3c7", "#549183", "#80b37d", "#00941d", "#80b1d3", "#fdb462", "#b3de69",
      "#fccde5", "#d9d9d9", "#bc80bd", "#ccebc5", "#a3a3ff"]
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    text_color: black
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Origin: nyc_taxi_trips.likely_origin
      Destination: nyc_taxi_trips.likely_destination
      Pickup Date: nyc_taxi_trips.pickup_date
    row: 0
    col: 17
    width: 7
    height: 3
  - name: Taxi Pickup Density
    title: Taxi Pickup Density
    model: nyc_taxi
    explore: nyc_taxi_trips
    type: looker_map
    fields: [nyc_taxi_trips.pickup_location_rounded, nyc_taxi_trips.count]
    filters: {}
    sorts: [nyc_taxi_trips.pickup_datetime_day_of_week, nyc_taxi_trips.pickup_day_of_week_index,
      nyc_taxi_trips.count desc]
    limit: 500
    column_limit: 50
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    show_view_names: true
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    point_style: none
    interpolation: linear
    ordering: none
    show_null_labels: false
    show_null_points: true
    hidden_series: [Friday, Thursday, Wednesday, Tuesday, Monday]
    map_plot_mode: points
    heatmap_gridlines: true
    map_tile_provider: positron
    map_position: fit_data
    map_scale_indicator: 'off'
    map_pannable: true
    map_zoomable: true
    map_marker_type: circle
    map_marker_icon_name: default
    map_marker_radius_mode: proportional_value
    map_marker_units: meters
    map_marker_proportional_scale_type: linear
    map_marker_color_mode: value
    show_legend: false
    quantize_map_value_colors: false
    map_latitude: 40.74940275339482
    map_zoom: 13
    map_marker_radius_fixed: 30
    map_longitude: -73.99266242980957
    colors: ["#3a258a", "#bf3265"]
    color_palette: Default
    map_marker_radius_min: 30
    map_marker_radius_max: 500
    heatmap_opacity: 0.5
    show_region_field: true
    listen:
      Origin: nyc_taxi_trips.likely_origin
      Destination: nyc_taxi_trips.likely_destination
      Pickup Date: nyc_taxi_trips.pickup_date
    row: 3
    col: 0
    width: 24
    height: 8
  - name: Average Fare
    title: Average Fare
    model: nyc_taxi
    explore: nyc_taxi_trips
    type: single_value
    fields: [nyc_taxi_trips.average_fare]
    filters: {}
    sorts: [nyc_taxi_trips.pickup_datetime_day_of_week, nyc_taxi_trips.pickup_day_of_week_index,
      nyc_taxi_trips.average_fare desc]
    limit: 500
    column_limit: 50
    font_size: small
    text_color: "#000000"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    listen:
      Origin: nyc_taxi_trips.likely_origin
      Destination: nyc_taxi_trips.likely_destination
      Pickup Date: nyc_taxi_trips.pickup_date
    row: 0
    col: 13
    width: 4
    height: 3
  - name: Average Trip Time and Distance to Airports
    title: Average Trip Time and Distance to Airports
    model: nyc_taxi
    explore: nyc_taxi_trips
    type: looker_column
    fields: [nyc_taxi_trips.likely_destination, nyc_taxi_trips.average_trip_time_minutes,
      nyc_taxi_trips.average_distance]
    filters: {}
    sorts: [nyc_taxi_trips.average_trip_time_minutes]
    limit: 500
    show_view_names: false
    colors: ["#8dd3c7", "#549183", "#80b37d", "#00941d", "#80b1d3", "#fdb462", "#b3de69",
      "#fccde5", "#d9d9d9", "#bc80bd", "#ccebc5", "#a3a3ff"]
    color_palette: Custom
    point_style: none
    interpolation: linear
    show_null_points: true
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    value_labels: labels
    label_type: labPer
    y_axis_orientation: [left, right]
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Origin: nyc_taxi_trips.likely_origin
      Destination: nyc_taxi_trips.likely_destination
      Pickup Date: nyc_taxi_trips.pickup_date
    row: 11
    col: 0
    width: 12
    height: 7
  - name: Trips by Tip Percentage and Day of Week
    title: Trips by Tip Percentage and Day of Week
    model: nyc_taxi
    explore: nyc_taxi_trips
    type: looker_area
    fields: [nyc_taxi_trips.pickup_day_of_week, nyc_taxi_trips.tip_percentage_buckets,
      nyc_taxi_trips.count]
    pivots: [nyc_taxi_trips.tip_percentage_buckets]
    sorts: [nyc_taxi_trips.tip_percentage_buckets, nyc_taxi_trips.pickup_day_of_week]
    limit: 500
    column_limit: 50
    query_timezone: America/Los_Angeles
    show_view_names: false
    colors: ["#8dd3c7", "#549183", "#80b37d", "#00941d", "#80b1d3", "#fdb462", "#b3de69",
      "#fccde5", "#d9d9d9", "#bc80bd", "#ccebc5", "#a3a3ff"]
    point_style: none
    interpolation: linear
    show_null_points: true
    stacking: normal
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    y_axis_combined: false
    show_y_axis_labels: true
    show_y_axis_ticks: false
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    ordering: none
    show_null_labels: false
    value_labels: labels
    label_type: labPer
    y_axis_orientation: [left, right]
    limit_displayed_rows: false
    y_axis_scale_mode: linear
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    listen:
      Origin: nyc_taxi_trips.likely_origin
      Destination: nyc_taxi_trips.likely_destination
      Pickup Date: nyc_taxi_trips.pickup_date
    row: 11
    col: 12
    width: 12
    height: 7
  - name: Monthly Trips (2014)
    title: Monthly Trips (2014)
    model: nyc_taxi
    explore: nyc_taxi_trips
    type: looker_column
    fields: [nyc_taxi_trips.pickup_month, nyc_taxi_trips.count]
    filters:
      nyc_taxi_trips.pickup_date: '2014'
    sorts: [nyc_taxi_trips.pickup_month]
    limit: 500
    stacking: ''
    show_value_labels: false
    label_density: 25
    legend_position: center
    x_axis_gridlines: false
    y_axis_gridlines: true
    limit_displayed_rows: false
    y_axis_combined: true
    show_y_axis_labels: true
    show_y_axis_ticks: true
    y_axis_tick_density: default
    y_axis_tick_density_custom: 5
    show_x_axis_label: true
    show_x_axis_ticks: true
    x_axis_scale: auto
    y_axis_scale_mode: linear
    ordering: none
    show_null_labels: false
    show_totals_labels: false
    show_silhouette: false
    totals_color: "#808080"
    show_single_value_title: true
    show_comparison: false
    comparison_type: value
    comparison_reverse_colors: false
    show_comparison_label: true
    colors: ["#62bad4", "#a9c574", "#929292", "#9fdee0", "#1f3e5a", "#90c8ae", "#92818d",
      "#c5c6a6", "#82c2ca", "#cee0a0", "#928fb4", "#9fc190"]
    color_palette: Looker Classic
    show_view_names: true
    listen:
      Origin: nyc_taxi_trips.likely_origin
      Destination: nyc_taxi_trips.likely_destination
    row: 18
    col: 0
    width: 24
    height: 5
  filters:
  - name: Origin
    title: Origin
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: nyc_taxi
    explore: nyc_taxi_trips
    listens_to_filters: []
    field: nyc_taxi_trips.likely_origin
  - name: Destination
    title: Destination
    type: field_filter
    default_value:
    allow_multiple_values: true
    required: false
    model: nyc_taxi
    explore: nyc_taxi_trips
    listens_to_filters: []
    field: nyc_taxi_trips.likely_destination
  - name: Pickup Date
    title: Pickup Date
    type: date_filter
    default_value: 2015/01
    allow_multiple_values: true
    required: false