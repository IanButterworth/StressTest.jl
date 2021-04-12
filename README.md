# StressTest.jl

A collection of convenience functions for stress testing purposes.

*Disclaimer: Use at your own risk. Stress testing may damage hardware.*

[![Stable](https://img.shields.io/badge/docs-stable-blue.svg)](https://ianbutterworth.github.io/StressTest.jl/stable)
[![Dev](https://img.shields.io/badge/docs-dev-blue.svg)](https://ianbutterworth.github.io/StressTest.jl/dev)
[![Build Status](https://travis-ci.com/ianbutterworth/StressTest.jl.svg?branch=master)](https://travis-ci.com/ianbutterworth/StressTest.jl)
[![Build Status](https://ci.appveyor.com/api/projects/status/github/ianbutterworth/StressTest.jl?svg=true)](https://ci.appveyor.com/project/ianbutterworth/StressTest-jl)
[![Codecov](https://codecov.io/gh/ianbutterworth/StressTest.jl/branch/master/graph/badge.svg)](https://codecov.io/gh/ianbutterworth/StressTest.jl)
[![Coveralls](https://coveralls.io/repos/github/ianbutterworth/StressTest.jl/badge.svg?branch=master)](https://coveralls.io/github/ianbutterworth/StressTest.jl?branch=master)
[![Build Status](https://api.cirrus-ci.com/github/ianbutterworth/StressTest.jl.svg)](https://cirrus-ci.com/github/ianbutterworth/StressTest.jl)

## CPU loading
- `busywait(seconds)` - Like `Base.sleep(seconds)` except it maxes out the thread

For instance, for testing multithreaded CPU loading in Julia
```julia
using StressTest
Threads.@threads for _ in 1:4
    busywait(10)
end
(System monitor then shows julia ramping up to ~400% for 10 seconds)
```


PR's welcome!
