# StressTest.jl

A collection of convenience functions for stress testing purposes.

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://ianshmean.github.io/StressTest.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://ianshmean.github.io/StressTest.jl/dev)
[![Build Status](https://travis-ci.com/ianshmean/StressTest.jl.svg?branch=master)](https://travis-ci.com/ianshmean/StressTest.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/ianshmean/StressTest.jl?svg=true)](https://ci.appveyor.com/project/ianshmean/StressTest-jl)
[![Codecov](https://codecov.io/gh/ianshmean/StressTest.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/ianshmean/StressTest.jl)
[![Coveralls](https://coveralls.io/repos/github/ianshmean/StressTest.jl/badge.svg?branch=master)](https://coveralls.io/github/ianshmean/StressTest.jl?branch=master)
[![Build Status](https://api.cirrus-ci.com/github/ianshmean/StressTest.jl.svg)](https://cirrus-ci.com/github/ianshmean/StressTest.jl)


## CPU load testing
```
    dream(seconds)

Like sleep() except maxes out the thread for a specified number of seconds. The minimum dream time is 1
millisecond or input of `0.001`.
```
