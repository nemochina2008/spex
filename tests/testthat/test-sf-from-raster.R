context("sf-from-raster")

## TODO: Rename context
## TODO: Add more tests

library(raster)
r <- aggregate(raster(volcano), 4)
b <- brick(r, r /2)
test_that("creation of polygons from raster works", {
  expect_that(qm_rasterToPolygons(b), is_a("sf"))
  expect_that(qm_rasterToPolygons(b), is_a("sf"))
  expect_that(qm_rasterToPolygons(r), is_a("sf"))
  expect_that(qm_rasterToPolygons(r), is_a("sf"))
  
  expect_that(qm_rasterToPolygons_sp(b), is_a("SpatialPolygonsDataFrame"))
  expect_that(qm_rasterToPolygons_sp(b), is_a("SpatialPolygonsDataFrame"))
  expect_that(qm_rasterToPolygons_sp(r), is_a("SpatialPolygonsDataFrame"))
  expect_that(qm_rasterToPolygons_sp(r), is_a("SpatialPolygonsDataFrame"))
  
  
})