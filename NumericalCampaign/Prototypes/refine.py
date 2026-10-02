import numpy as np, sys, json
exec(open('seed_cell_certify.py').read().split("if __name__ == '__main__':")[0])
cells=[json.loads(l) for f in sys.argv[1:] for l in open(f) if l.startswith('{')]
cells=[c for c in cells if c['cls']!='no-triple']
for c in cells:
    th=np.array(c['seeds']); U0=H_of(th); R=rays(U0,1500); U0,vel=ray_velocities(th,R)
    out=[]
    for rho in (0.01,0.005,0.0025):
        nb,sv=certify_cell(R,vel,2.0*rho); out.append((rho,nb,sv))
        if nb==0: break
    print(c['seeds'],'minor',c['minor'],'(rho, bases, surviving):',out,flush=True)
