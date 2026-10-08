include(joinpath(@__DIR__, "../../NumericalCampaign/Certification/domain.jl"))
using DelimitedFiles
rows=readdlm(joinpath(@__DIR__, "data/cells.txt"),Float64)
for i in axes(rows,1)
 theta=rows[i,:];rho=pi/512
 x=[tmvar(8,j,theta[j],rho) for j in 1:4];a,b,c,d=cex_tm.(x);o=one(a);E=[o o o;o a b;o c d]
 RR=corner_R_all([E E;E E])[1,1]
 println("cell ",i," R_center=",centre(RR)," R_TM=",fbound(RR))
 try
  hplus_tm(theta,rho)
  println("H+ PASS")
 catch e
  println("H+ FAIL: ",sprint(showerror,e))
 end
 flush(stdout)
end

theta=rows[5,:]
for depth in 1:2
 n=2^depth; rho=pi/512/n
 failures=Dict{String,Int}(); passed=0
 for idx in Iterators.product(ntuple(_->0:n-1,4)...)
  c=theta .+ [(2*j+1-n)*rho for j in idx]
  try
   hplus_tm(c,rho);passed+=1
  catch e
   key=split(sprint(showerror,e)," (")[1]
   key=startswith(key,"ctm_root") ? "ctm_root" : key
   failures[key]=get(failures,key,0)+1
  end
 end
 println("depth=",depth," passed=",passed," / ",n^4," failures=",failures);flush(stdout)
end
