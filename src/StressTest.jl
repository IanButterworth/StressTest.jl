module StressTest

Base.Experimental.@optlevel 0

"""
    busywait(seconds)

Like Base.sleep() except maxes out the thread for a specified number of seconds. The minimum busywait time is 1
millisecond or input of `0.001`.
"""
function busywait(sec::Real; yield_loop = false)
    sec ≥ 0 || throw(ArgumentError("cannot busywait for $sec seconds"))
    ns = sec * 1e9
    t = Base.time_ns()
    while Base.time_ns() - t < ns
        yield_loop && yield()
    end
    nothing
end

const TEST_MAT = rand(1000,1000)
testfunc() = TEST_MAT .* TEST_MAT

function check_parallel_threading(nthreads = Threads.nthreads())
    times = Vector{Float64}(undef, nthreads)
    t_loop = @elapsed Threads.@threads for i in 1:nthreads
        times[i] = @elapsed testfunc()
    end
    t_max = maximum(times)
    concurrency = t_loop <= (t_max * ((nthreads + 1) / nthreads))
    @show t_loop, t_max, concurrency
    return concurrency
end

export busywait, check_parallel_threading

function _precompile()
    ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
    precompile(busywait, (Int,))
    precompile(testfunc, ())
    precompile(check_parallel_threading, ())
end
_precompile()

end # module
