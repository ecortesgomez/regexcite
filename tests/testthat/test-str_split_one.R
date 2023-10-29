test_that("strsplit1() splits a string", {
  expect_equal(str_split_one("a,b,c", pattern=','), c('a', 'b', 'c'))
})

test_that("strsplit1() splits a string again", {
  expect_equal(str_split_one("a.b.c", pattern='\\.'), c('a', 'b', 'c'))
})

test_that("str_split_one() errors if the input vector is length > 1", {
  expect_error(str_split_one(c("a,b", "c,d"), ","))
})
