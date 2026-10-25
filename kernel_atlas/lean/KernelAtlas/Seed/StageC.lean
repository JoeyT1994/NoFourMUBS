import KernelAtlas.Seed.Ball
import KernelAtlas.NormalK

/-!
# Stage C for a kernel seed ball (`KERNEL_SEED.md` §5)

The `stageC` field of a seed ball's `SeedBallCert` is the Record pipeline's Stage C certificate (`stageCK2B` /
`stageCK2`: the v2 bin cover with label leaves, the direct and joint edge tests, the clique search) run on the ball's
own grid data.  A generated ball module provides that certificate for any radii under its bars (`stageC2`, exactly as
for a Record) and four kernel decisions:
* `centreB`: the centre table `tb` holds `Pm D.B` exactly (`PqL[a][b] = P[6a+b]/2^pp`, 36 rationals);
* `frameB`: the integer frame is `Um D.B` exactly (`DT = 2^pp`, `T'[36k+6a+b] − OT = U[4(6a+b)+k]`, 144 integers);
* `e0OK` on a high-precision table `tbN` with the same centre, for the operator-norm bound `K̄` (`opnorm_sound`);
* `radiiB`: the radii `r/2π`, `n/2π`, `(t r + n)/2π`, `(λ_F r + n)/2π` under the bars `r̄_H`, `n̄`, `r̄`, `r̄_F`
  (with `π̃ ≤ π`, exact rationals), and `1 + e₀/4 ≤ K̄²`.
`stageCSeed` turns them into the `stageC` field for the ball `D`.  The constants `t`, `λ_F` only enter the radii
here; that they bound the frame (`hcol`, `hfrob`) is a separate check.
-/

open Hadamard6 NoFourMUBs NoFourMUBs.StageC

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### The checks -/

/-- A grid natural as a rational. -/
def qn (a : ℕ) : ℚ := (a : ℚ) / 2 ^ pp

/-- The centre table holds `P` exactly: `PqL[a][b] = P[6a + b] / 2^pp`. -/
def centreB (B : BallD) (tb : Tab) : Bool :=
  allNat 6 fun a => allNat 6 fun b => decide ((tb.PqL.getD a []).getD b 0 = (gi B.P (6 * a + b) : ℚ) / 2 ^ pp)

/-- The integer frame is `U` exactly: `DT = 2^pp` and `T'[36k + 6a + b] − OT = U[4(6a + b) + k]`. -/
def frameB (B : BallD) (tc : TCfg) (tq : TParQ) : Bool :=
  decide (tq.DT = 2 ^ pp) && allNat 4 fun k => allNat 6 fun a => allNat 6 fun b =>
    decide (((tc.TpL.getD (36 * k + 6 * a + b) 0 : ℕ) : ℤ) - tc.OT = gi B.U (4 * (6 * a + b) + k))

/-- The radii of the ball (cycles, with `π̃ ≤ π`) under the bars of the bin tree, and `1 + e₀/4 ≤ K̄²`. -/
def radiiB (D : SeedD) (pq : ParQ) (tq : TParQ) (e0 : ℚ) : Bool :=
  decide (qn D.r / (2 * piLo) ≤ tq.rHbar) && decide (qn D.B.n / (2 * piLo) ≤ tq.nbar) &&
    decide ((qn D.t * qn D.r + qn D.B.n) / (2 * piLo) ≤ pq.rbar) &&
    decide ((qn D.lamF * qn D.r + qn D.B.n) / (2 * piLo) ≤ pq.rFbar) &&
    decide (0 ≤ pq.Kbar) && decide (1 + e0 / 4 ≤ pq.Kbar ^ 2)

/-! ### The exact bridges -/

lemma sidx_eq_idx (i : I6) : sidx i = idx i := by rcases i with i | i <;> rfl

lemma idx_lt6 (i : I6) : idx i < 6 := sidx_eq_idx i ▸ sidx_lt i

lemma rn_eq_qn (a : ℕ) : rn a = ((qn a : ℚ) : ℝ) := by unfold rn qn; push_cast; ring

/-- The table's centre is the ball's `P`. -/
theorem Pmat_eq_Pm {B : BallD} {tb : Tab} (h : centreB B tb = true) : Pmat tb.pq = Pm B := by
  funext j i
  have hji : (tb.PqL.getD (idx j) []).getD (idx i) 0 = (gi B.P (6 * idx j + idx i) : ℚ) / 2 ^ pp :=
    of_decide_eq_true (allNat_spec (allNat_spec h (idx j) (idx_lt6 j)) (idx i) (idx_lt6 i))
  show (((tb.PqL.getD (idx j) []).getD (idx i) 0 : ℚ) : ℝ) = rq (gi B.P (ix j i))
  rw [hji, ix, sidx_eq_idx, sidx_eq_idx, rq]
  push_cast; rfl

/-- The integer frame is the ball's `U`. -/
theorem Tmat_eq_Um {B : BallD} {tc : TCfg} {tq : TParQ} (h : frameB B tc tq = true) : Tmat tc tq = Um B := by
  unfold frameB at h
  rw [Bool.and_eq_true] at h
  obtain ⟨hD, hU⟩ := h
  have hD' : tq.DT = 2 ^ pp := of_decide_eq_true hD
  funext k j i
  have hk : ((tc.TpL.getD (36 * k + 6 * idx j + idx i) 0 : ℕ) : ℤ) - tc.OT = gi B.U (4 * (6 * idx j + idx i) + k) :=
    of_decide_eq_true (allNat_spec (allNat_spec (allNat_spec hU k k.isLt) (idx j) (idx_lt6 j)) (idx i) (idx_lt6 i))
  show (((tc.Tp k j i : ℤ) - tc.OT : ℤ) : ℝ) / (tq.DT : ℝ) = rq (gi B.U (4 * ix j i + k))
  rw [TCfg.Tp, hk, hD', ix, sidx_eq_idx, sidx_eq_idx, rq]
  push_cast; rfl

/-- A radius `x = q ≥ 0` (radians) with `q/2π̃ ≤ b` is at most `b` in cycles. -/
lemma le_bar {x : ℝ} {q b : ℚ} (hx : x = q) (h0 : 0 ≤ x) (h : q / (2 * piLo) ≤ b) : x / (2 * Real.pi) ≤ b := by
  refine (div_2pi_le h0).trans ?_
  have := (Rat.cast_le (K := ℝ)).mpr h
  push_cast at this
  rwa [hx]

/-! ### Stage C of a seed ball -/

/-- **Stage C of a kernel seed ball**, from the Record pipeline's certificate for any radii under the bars (`SC`, the
generated `stageC2`) and the kernel decisions `centreB`, `frameB`, `e0OK`, `radiiB`.  The statement is the `stageC`
field of `SeedBallCert` with `P = Pm D.B`, `U = Um D.B`, `r = rn D.r`, `n = rn D.B.n`, `t = rn D.t`,
`λ_F = rn D.lamF`. -/
noncomputable def stageCSeed {D : SeedD} {tb tbN : Tab} {pq : ParQ} {tc : TCfg} {tq : TParQ} {e0 : ℚ}
    (hP : centreB D.B tb = true) (hT : frameB D.B tc tq = true) (hN : tbN.PqL = tb.PqL)
    (he : e0OK tbN e0 = true) (hR : radiiB D pq tq e0 = true)
    (SC : ∀ {rH n r rF K : ℝ}, 0 ≤ K → (∀ z, cnorm (Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * cnorm z) →
      K ≤ pq.Kbar → r ≤ pq.rbar → rF ≤ pq.rFbar → rH ≤ tq.rHbar → n ≤ tq.nbar →
      StageCCert ((1 / (2 * Real.pi)) • Pmat tb.pq) (Tmat tc tq) rH n r rF) :
    StageCCert ((1 / (2 * Real.pi)) • Pm D.B) (Um D.B) (rn D.r / (2 * Real.pi)) (rn D.B.n / (2 * Real.pi))
      ((rn D.t * rn D.r + rn D.B.n) / (2 * Real.pi)) ((rn D.lamF * rn D.r + rn D.B.n) / (2 * Real.pi)) := by
  unfold radiiB at hR
  simp only [Bool.and_eq_true, decide_eq_true_eq] at hR
  obtain ⟨⟨⟨⟨⟨hrH, hn⟩, hr⟩, hrF⟩, hK0⟩, hK⟩ := hR
  have hpq : tbN.pq = tb.pq := by funext j i; simp only [Tab.pq, hN]
  have hcol : rn D.t * rn D.r + rn D.B.n = ((qn D.t * qn D.r + qn D.B.n : ℚ) : ℝ) := by
    simp only [rn_eq_qn]; push_cast; rfl
  have hfro : rn D.lamF * rn D.r + rn D.B.n = ((qn D.lamF * qn D.r + qn D.B.n : ℚ) : ℝ) := by
    simp only [rn_eq_qn]; push_cast; rfl
  have h0 : ∀ a b c : ℕ, 0 ≤ rn a * rn b + rn c := fun a b c =>
    add_nonneg (mul_nonneg (rn_nonneg a) (rn_nonneg b)) (rn_nonneg c)
  rw [← Pmat_eq_Pm hP, ← Tmat_eq_Um hT]
  exact SC (K := pq.Kbar) (by exact_mod_cast hK0) (fun z => by rw [← hpq]; exact opnorm_sound he hK hK0 z) le_rfl
    (le_bar hcol (h0 _ _ _) hr) (le_bar hfro (h0 _ _ _) hrF) (le_bar (rn_eq_qn _) (rn_nonneg _) hrH)
    (le_bar (rn_eq_qn _) (rn_nonneg _) hn)

end NoFourMUBs.KernelAtlas.Seed
