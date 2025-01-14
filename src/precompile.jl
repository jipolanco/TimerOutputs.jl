
function _precompile_()
  ccall(:jl_generating_output, Cint, ()) == 1 || return nothing
  @assert Base.precompile(Tuple{typeof(print_timer), typeof(stdout), TimerOutput})
  @assert Base.precompile(Tuple{typeof(print_timer), TimerOutput})
  @assert Base.precompile(Tuple{typeof(push!), TimerOutput, String})
  @assert Base.precompile(Tuple{typeof(reset_timer!), TimerOutput})
  @assert Base.precompile(Tuple{typeof(disable_timer!), TimerOutput})
  @assert Base.precompile(Tuple{typeof(enable_timer!), TimerOutput})
  @assert Base.precompile(Tuple{typeof(do_accumulate!), TimeData, UInt64, Int64})
  @assert Base.precompile(Tuple{Type{TimerOutput}, String})
end
