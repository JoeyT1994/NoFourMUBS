"""Run the diagnostic wrapper with the complex-entry polynomial search."""
import argparse
import json
from load_native import R
import pilot_optimized as pilot
import chordal_support
pilot.OS=chordal_support

if __name__=='__main__':
    p=argparse.ArgumentParser()
    p.add_argument('--index',type=int,required=True)
    p.add_argument('--output',required=True)
    a=p.parse_args()
    row=R.run_ball(str(R.DEFAULT_ATLAS),a.index,R.binding(R.DEFAULT_ATLAS)['id'])
    row['status']='EXPERIMENTAL DIAGNOSTIC ONLY';row.pop('claim',None)
    with open(a.output,'w') as f:json.dump(row,f,indent=2)
