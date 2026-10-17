import sys
sys.argv=[sys.argv[0]]+sys.argv[1:]
exec(open('proxy_remainder_scale.py').read().split("s=int(sys.argv[1])")[0])
for s in [int(x) for x in sys.argv[1].split(',')]:
    for R,lam,lv in [(0.08,1.0,(12,24,48,96)),(0.12,1.0,(12,24,48,96)),(0.08,0.25,(12,24,48)),(0.12,0.25,(12,24,48,96)),(0.16,0.1,(12,24,48,96))]:
        try: run(s,R,lam,lv)
        except Exception as e: print(s,R,lam,'ERR',e)
