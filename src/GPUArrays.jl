__precompile__(true)
module GPUArrays

using Compat, Sugar
@compat abstract type Context end

include("abstractarray.jl")
export GPUArray, mapidx, linear_index, gpu_call

include(joinpath("backends", "backends.jl"))
export is_backend_supported, supported_backends


end # module
