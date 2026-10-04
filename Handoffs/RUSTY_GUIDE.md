# Running NoFourMUBS work on rusty (Flatiron): a practical guide

These notes come from running the NoFourMUBS campaign on rusty from 28 September to 4 October 2026. Most of the
lessons were learned the hard way.

## 1. Access

- Log in with `ssh rusty`, which requires your Flatiron credentials and key. Type your passphrase yourself.
- **Reuse one connection** with an SSH control socket, so that scripts and tools don't need a new login each time:
  ```bash
  ssh -M -S /tmp/rusty.sock -o ControlPersist=24h -o ServerAliveInterval=60 rusty      # in one terminal; leave it open
  ssh -S /tmp/rusty.sock -o BatchMode=yes rusty 'squeue -u $USER'                       # anywhere else
  scp -o ControlPath=/tmp/rusty.sock FILE rusty:PATH
  rsync -a -e "ssh -o ControlPath=/tmp/rusty.sock" SRC rusty:DST
  ```
  The socket dies when the network changes, and has to be reopened by hand.
- **Quoting.** In `ssh rusty "…$HOME…"`, `$HOME` is expanded **on your laptop**, not on rusty. Use single quotes, or
  `\$HOME`. One job here failed in a second because of this.
- **There are several login nodes.** `/tmp` on one is not `/tmp` on another. Do not run heavy work on them.

## 2. Partitions and limits (account `ccq`)

| Partition / QOS | Use | Limit we hit |
|---|---|---|
| `ccq` | Main production. Whole nodes (`--exclusive`), rome = 128 cores, about 1 TB memory | Per-user core cap: 30 rome nodes = 3,840 cores |
| `gen --qos=gen` | Extra jobs while `ccq` is full | **2 nodes (256 cores) per user** |
| `preempt --qos=preempt` | Short tests and helpers on idle nodes. Priority 1, so the queue wait can be long. Jobs can be preempted, so use `--requeue` | none |

- Request rome Rocky 9 nodes with `--constraint='rome&rocky9'`.
- `sbatch --test-only …` tells you whether a size will be accepted before you submit it.
- `squeue -u $USER`, `sacct -j ID -X -o jobid,state,elapsed,maxrss`, and `squeue --start` for estimated start times.

## 3. Software

```bash
module load python/3.11.11      # system Python 3.11
module load gcc/13.3.0          # needed for UBSan builds; the default g++ 11 has no libubsan
export CXX=g++                  # some verifiers call g++ or c++ from PATH, so loading the module matters
```

- A private virtualenv (for example `~/venvs/nofour_shoulder`, with python-flint 0.9.0, numpy 2.2.4, sympy 1.13.1
  and mpmath 1.3.0) holds pinned packages. Use its `python` explicitly.
- Julia is installed through juliaup, e.g. `~/.julia/juliaup/julia-1.12.7+0.x64.linux.gnu/bin/julia`. Pin the exact
  version: other versions are rejected by the production checks.
- Set `OPENBLAS_NUM_THREADS=1`, `OMP_NUM_THREADS=1` and `JULIA_NUM_THREADS=1` in every worker.

## 4. Job patterns that worked

**A whole node with a Python pool.** This is the simplest and best pattern for independent boxes:
```bash
sbatch --account=ccq --partition=ccq --nodes=1 --exclusive --mem=0 --constraint='rome&rocky9' --time=12:00:00 \
  --job-name=myrun --output=logs/myrun.out \
  --wrap 'cd /path/to/work && module load python/3.11.11 && python3 -B run.py --jobs 120'
```
- Use `imap_unordered` over **many small work items**, and write each output in order once its items are done.
- Keep a few cores free for the main process.

**Many independent tasks.** For thousands of tasks, use **disBatch**:
```bash
module load modules/2.4-20250724 disBatch
disBatch -c 1 -p logs/disbatch/LABEL_ tasks.txt
```
- Each line of `tasks.txt` is one shell command on one core.
- `logs/disbatch/*_status.txt` records each task's return code and wall time. Read it.

**Chains.** `sbatch --dependency=afterany:JOB1:JOB2 next.sh` runs the next stage without anyone watching.

**Outputs.** Always write to `OUT.part`, then `os.replace(OUT.part, OUT)`.
- A killed task then leaves no half-written output, and a rerun simply skips finished outputs.
- **Never let two processes write the same `.part` file.** Give duplicate runs a different output directory, then merge.

## 5. Mistakes we made (please avoid them)

1. **Sizing from a pilot.** Our full run turned out to be 630 times the pilot, not the 100 times we assumed. Before
   committing nodes, **count the real input** and **time a random sample of it**.
2. **One core per huge task.** We gave 65 tasks of 200,000 items one core each. With a heavy tail per item, none
   could finish inside the walltime. Pool small items across whole nodes instead.
3. **Walltime long tails.** A few tasks took 22 hours, and the walltime killed them after 17. Split slow tasks into
   small pieces and run those in parallel. If each item's output is independent, the pieces can be reassembled in
   order.
4. **Relative paths.** Our Julia code changes directory when it loads, so every relative output path failed. That
   was 1,292 tasks, and all of them "completed" in 30 seconds with no output. **Pass absolute paths**, and **check
   that the first outputs actually exist** after launch.
5. **Self-healing that heals nothing.** Our "resubmit what's missing" logic read the wrong field of the task line
   (an input, not the output). It found nothing missing and stopped the chain. Test the recovery path itself.
6. **Memory.** An audit died at 64 GB. For whole-run audits, use `--exclusive --mem=0`.
7. **`pkill -f PATTERN` matches its own shell** when the pattern is in the command line, which killed our session.
   Kill by PID.
8. **Preempted helpers.** A requeued self-resubmitting job started a second chain. Check for an existing pending
   successor before submitting a new one.
9. **Silent failures.** A job marked COMPLETED in `sacct` can have done nothing. Check outputs, not states.

## 6. Quotas

- The home file quota is **1,048,576 files**; check it with `df -i ~`. Disk space was never the issue; file count
  can be.
- Logs and outputs per task add up quickly. Prefer one output per batch, gzip big lists, and avoid per-item files.

## 7. Monitoring

- A small hourly status job can rewrite a `STATUS.md` with `squeue`, output counts, log tails and quota usage. Use
  `sbatch --begin=now+60minutes` to schedule its successor.
- Check every launched job yourself within an hour of it starting. Count the outputs it has actually produced, and
  look at a few of them.
