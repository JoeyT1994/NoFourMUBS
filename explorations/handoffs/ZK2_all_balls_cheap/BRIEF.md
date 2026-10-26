# Handoff ZK2: cheap whole-ball C1 for every ball

**Goal.** Your ZK result (`kernel_atlas/lean/KernelAtlas/WholeBall/CheapConstants/REPORT.md`) puts 1,773 of the 2,350
seed balls in the cheap class. This handoff is to bring the other 577 in, so the kernel never needs the full tensors
or the box C1:
- **248 full-tensor fallback balls:** your rank-4 bound ÷ budget has median 1.08, at most 1.32;
- **329 balls with no fit:** median 1.28, at most 1.57; these include the 60 where Z's contraction fails and the 109
  with no budget.

These are ordinary balls, mostly at r = 0.1–0.125. Two steps should close the gap; the first is cheap.

Label claims as in ZK: **PROVED**, **CERTIFIED**, **NUMERICAL**, **NOT ESTABLISHED**.

## 1. Where to work

The checkout is `/Users/jtindall/Projects/NoFourMUBS`, on `main`. Others work in the same checkout, so:
- commit only your own files (`git add <paths>`), never switch branches, and don't push;
- your folders are `kernel_atlas/generators/wholeball_cheap_*`, `kernel_atlas/lean/KernelAtlas/WholeBall/CheapConstants/`
  and a new `kernel_atlas/generators/budget_*` for step 1;
- for step 2's driver changes, use a new script `proof/seed_atlas/driver/shrink_balls.py` and leave the existing
  driver files alone, since another session is changing `cover.py`, `edgecert.py` and `seedcert.py` on a branch.

rusty is reachable with `ssh rusty`, and the build directory is `/mnt/ceph/users/jtindall/seed_atlas_build/`:
- `hor/run5/` holds the driver state of the current atlas: `atlas_state.pkl`, `atlas_state_edge.pkl` and
  `cert_v3.json.gz`, which equals the repo's certificate;
- the Python environment is `/mnt/ceph/users/jtindall/venvs/nofourmubs/bin/python`;
- submit with `sbatch -p ccq`; full nodes are 128 cores (`--exclusive`).

Never touch other jobs. Report core-hours.

## 2. Step 1: a finer budget (no geometric change)

The budget in `stagec_n_budget.jsonl` came from a coarse screen (`proof/seed_atlas/driver/kernel_n.py`). Stage C was
tried only at n = f · sn · 1.05 for f ∈ {1.5, 2, 3, 4, 6}, so a ball that passed at 2 and failed at 3 got budget 2,
though it may pass at 2.8.

For the 577 balls, find the largest n at which Stage C passes, by bisection on f between the last pass and the first
fail (or up to f = 8), to about 2% relative precision.
- Screen with `makeball.stage_c_capped` as `kernel_n.py` does, at the ball's own label radius, then at the fallback
  label radius (0.02 or 0.03).
- Confirm every final budget with the certifier's own Stage C, `proof/seed_atlas/cert/seedcert.run_stage_c`, on the
  ball with n set to that value. That is the check that will decide the certificate.

The deliverable is a per-ball fine budget, and your rank-0/rank-4 fit redone against it. Which balls now fit, and by
what margin?

## 3. Step 2: smaller balls where it still doesn't fit

Z's bound is mostly βr²/2, so it scales like r². For each ball that still doesn't fit, the radius factor
s = 1/√(bound/budget) (at least 0.8 here) brings it inside, and a smaller enclosure only eases Stage C.

1. **Measure first (NUMERICAL, then CERTIFIED on a sample).** For a sample of the leftover balls, recompute Z's cheap
   bound and the Stage C budget at radius s·r with the same centre and frame, and confirm the fit.
2. **Design the re-cover.** A shrunk ball leaves the shell s·r < ‖w‖ ≤ r uncovered, and neighbouring balls' transfer
   boxes may target the old ball. Write `shrink_balls.py`, working on a *copy* of `run5/atlas_state.pkl`. For each
   leftover ball it:
   - sets the radius to s·r, recomputing n and the label radius as `makeball.py` does;
   - marks the ball and every ball with a transfer group targeting it for re-cover;
   - lets the existing driver (`driver.py RUN --edge --xball 0.13`, with `--reopen-*` as needed) re-cover them,
     spawning new balls where the shell needs them.

   The driver code in `proof/seed_atlas/driver/` shows how balls, groups and statuses are stored.
3. **Run it on rusty** in a new run directory, `hor/run6/`; never write into `run5/`. Report how many balls the atlas
   has afterwards, and confirm that every ball fits your cheap bound against its (fine) budget.

## 4. Done means

- The fine budgets, with certifier-confirmed Stage C, and the updated fit table.
- `shrink_balls.py` and a `run6` atlas state in which every ball is in the cheap class (rank 0 or rank 4), with the ball
  count and core-hours.
- A short report in `CheapConstants/` (`ZK2.md`): what fit after step 1, what step 2 changed, and any balls that
  still don't fit, with the reason.

I'll take run6 through export and Arb/Julia certification myself.
