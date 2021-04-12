module StressTest

"""
    busywait(seconds)

Like Base.sleep() except maxes out the thread for a specified number of seconds. The minimum busywait time is 1
millisecond or input of `0.001`.
"""
function busywait(sec::Real)
    sec ≥ 0 || throw(ArgumentError("cannot busywait for $sec seconds"))
    t = Timer(sec)
    while isopen(t)
        yield()
    end
    nothing
end

export busywait

end # module
