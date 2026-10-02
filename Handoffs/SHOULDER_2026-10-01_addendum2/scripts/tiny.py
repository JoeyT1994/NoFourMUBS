import sys, math, json, time
from fractions import Fraction as F
sys.path.insert(0, '/Users/jtindall/Files/NoFourMUBS/ProvenResults/FourierNeighbourhood/SeedLifting')
from moving_reference_lift import certify_projected_box, projected_parameters
# a seed exactly on the reference surface: a,b turns -> seed (2/3, -1/3+2a, -2/3, -2/3+2b) pi
for a,b in [(F(19,60),F(2,3)), (F(31,100),F(33,50))]:
    c=[F(2,3), -F(1,3)+2*a, -F(2,3), -F(2,3)+2*b]
    c=[((x+1)%2)-1 for x in c]
    for w in [F(1,10**6), F(1,10**5), F(1,10**4)]:
        t=time.process_time(); r=certify_projected_box(c,[w]*4,maxlabels=20000,budget=2000000,pair_budget=20000000,triple_budget=20000000)
        print(float(a),float(b),float(w),r['ok'],r['reason'],r.get('column_distance','')[:12],r.get('R_cap','')[:10],round(time.process_time()-t,1),flush=True)
