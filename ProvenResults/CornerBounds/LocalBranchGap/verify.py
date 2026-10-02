"""Independent two-precision replay and non-exclusion/scope controls."""
import copy,json,sys
from itertools import permutations
from pathlib import Path
from fractions import Fraction as Q
from flint import arb,ctx
import local_gap as gap
sys.path.insert(0,str(Path(__file__).resolve().parents[2]/'FourierNeighbourhood/SeedAtlas'))
from atlas import classify_box

def main():
    data=json.loads((Path(__file__).parent/'data/nearzero10.json').read_text())
    assert len(data['cells'])==10 and len({r['cell'] for r in data['cells']})==10
    # Independently enumerate origins as well as all ordered rows/columns.
    actual=set()
    for rr in permutations(range(6),3):
        for cc in permutations(range(6),3):
            actual.add(tuple((rr[i]-rr[0])*(cc[j]-cc[0])%6 for i,j in ((1,1),(1,2),(2,1),(2,2))))
    assert actual==set(gap.F6_SEEDS)
    for precision in (96,160):
        ctx.prec=precision;accepted=[]
        for row in data['cells']:
            assert row['theta']==[float(row['diagnostic']['t'+str(i)]) for i in range(1,5)]
            assert int(row['diagnostic']['level'])==row['level']
            if row['gap'] is None:continue
            c=list(map(arb,row['theta']));h=[arb.pi()/2**row['level']+arb(2)**-40]*4
            assert gap.replay(c,h,row['gap']);accepted.append(row['cell'])
            centers_turns=[];radii_turns=[]
            for x,y in zip(c,h):
                t=(x+arb(0,y))/(2*arb.pi());lo,hi=Q(str(t.lower().fmpq())),Q(str(t.upper().fmpq()))
                centers_turns.append((lo+hi)/2);radii_turns.append((hi-lo)/2)
            assert row['gap']['atlas_tube_radius_turns']=='1/256'
            assert classify_box(centers_turns,radii_turns,Q(1,256))=='inside'
            assert Q(row['gap']['F6_distance_lower'])>=Q(42893,262144)
        assert len(accepted)==7
        f6=[arb(n)*arb.pi()/3 for n in (4,5,0,3)]
        assert gap.f6_separation(f6,[arb(1)/512]*4)==0
        assert not gap.certify_box(f6,[arb(1)/512]*4,max_depth=0,node_budget=1)['ok']
        example=next(r for r in data['cells'] if r['gap'])
        bad=copy.deepcopy(example['gap']);bad['scope']='outside_physical_D0'
        try:gap.replay(list(map(arb,example['theta'])),[arb.pi()/512+arb(2)**-40]*4,bad)
        except ValueError:pass
        else:raise AssertionError('Gap accepted as full D0 exclusion')
        print('PASS:',precision,'bits, seven R>1 implications and physical F6/scope controls')
    print('PASS: exact enumeration of',len(actual),'ordered F6 seed values; three cells remain open')
if __name__=='__main__':main()
