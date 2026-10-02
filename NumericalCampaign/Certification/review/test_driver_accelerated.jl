# Run as `CERT_COVER_ACCELERATED=1 julia ... test_driver_accelerated.jl success`.
# The budget control also runs with CERT_COVER_ACCELERATED=0.
const DRIVER_TEST_ROOT = normpath(joinpath(@__DIR__, "../.."))
const SUCCESS_CASE = !isempty(ARGS) && ARGS[1] == "success"
ENV["CERT_FASTMAX"]="0"; ENV["CERT_CHILD_FASTMAX"]="0"
ENV["CERT_COVER_MINDEPTH"]="0"; ENV["CERT_MAXDEPTH"]="0"
ENV["CERT_COVERBUDGET"]=SUCCESS_CASE ? "500000" : "1"
ENV["CERT_CERTMAX"]="180"
include(joinpath(DRIVER_TEST_ROOT,"Campaign/driver.jl"))
f=parse.(Float64,split(first(readlines(joinpath(DRIVER_TEST_ROOT,
    "Certification/data/cover_failed_depth2_2026-09-29.txt")))))
r=only(certify_leaf(f[1:4],f[5],0;deadline=time()+180))
if SUCCESS_CASE
    @assert ACCELERATED_COVER
    @assert r.status=="certified" && r.method=="cover_accelerated"
else
    @assert r.status=="FAILED:cover_budget" && r.method==""
end
println("PASS driver accelerated=",ACCELERATED_COVER," success_control=",SUCCESS_CASE," ",r)
