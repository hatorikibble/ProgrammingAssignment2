library('RUnit')
 
source('cachematrix.R')
 
test.suite <- defineTestSuite("cachematrix",
                              dirs = file.path("tests"),
                              testFileRegexp = '^\\d+\\.R'
                              )
 
test.result <- runTestSuite(test.suite)
 
printTextProtocol(test.result)
