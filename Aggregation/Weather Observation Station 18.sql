# https://www.hackerrank.com/challenges/weather-observation-station-18/problem?isFullScreen=true
# Manhattan distance: The distance between two points measured along axes at right angles. In a plane with p1 at (x1, y1) and p2 at (x2, y2), it is |x1 - x2| + |y1 - y2|
# abs()

select round(max(lat_n) - min(lat_n) + max(long_w) - min(long_w), 4) from station
