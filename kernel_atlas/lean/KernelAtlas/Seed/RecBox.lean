import KernelAtlas.BoundaryK
import KernelAtlas.Seed.Cover
import NoFourMUBs.SeedAtlas.Atlas

/-!
# The `rec` boundary boxes of a record (FORMAT §6), in the kernel

A `rec` group of record `s` names a target record `t`, an alignment `(g, rows, cols)` (a `SignedPerm`: `g ∈ {conj,
conjT}` is the sign, `g ∈ {T, conjT}` the transposition, `rows`, `cols` the permutations; FORMAT §4's
`Q″_ab = (g·Q)_{rows[a], cols[b]}` is `SignedPerm.act`) and a winding `N`, and lists dyadic `η`-boxes `Bx` in units of
`eta_scale`.  The claim on a box is Lemma 4.1's hypothesis, `RecTargetHolds S A s (.record t A N) η`:
`‖h(A P_s + 2πN − P_t) + h(A Tη)‖ + n_s < R_t` for every `η` of the box.

This is exactly the old atlas's transfer-leaf test (`BoundaryK.trOK`, `transfer_ok`): the `Bx` `[m, i]` at scale `W`
is `BoundaryK`'s box of depth `m` and integer centre `L + 1` (`Bx.binBox`), and the test is the 5 × 5 integer
quadratic form of the box centre against the per-target threshold `Θ_{t,m}` (which absorbs `n̄`, the box's
off-centre part `2 s_λ W/2^m` and `π − π̃`).  So a `rec` group is a `BTgt` of a `BData` whose `W` is `eta_scale`, and
`recBoxOK D j b` is `trOK D j` at the box.

* `recBox_sound`: the transfer inequality on the box, for any `RecordCert` whose `P`, `T`, `λ`, `n` match `D`;
* `recBox_holds`: the same as `RecTargetHolds`, for a family `A` whose record `A tg` has the target's centre and
  radius (the link hypotheses, discharged by the assembly);
* `recBox_holdsK`: for a record built by `recordK` (the old per-record pipeline), the match of `D` with the record
  checked by `bdMatch` (as in `boundaryK`).
-/

open Matrix Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### The box of a `Bx` -/

/-- The integer centre `L + 1` of a `Bx` (in units of `W / 2^m`). -/
def Bx.cv (b : Bx) : Fin 4 → ℤ := v4 (b.L 0 + 1) (b.L 1 + 1) (b.L 2 + 1) (b.L 3 + 1)

lemma Bx.cv_apply (b : Bx) (k : Fin 4) : b.cv k = b.L k + 1 := by
  fin_cases k <;> rfl

/-- A point of the `Bx` at scale `W` lies in `BoundaryK`'s box of depth `m` and centre `L + 1`. -/
lemma Bx.binBox {D : BData} {b : Bx} {η : Fin 4 → ℝ} (h : b.Mem (D.W : ℝ) η) : BInBox D b.m b.cv η := by
  intro k
  obtain ⟨h1, h2⟩ := h k
  have hp : (0 : ℝ) < 2 ^ b.m := by positivity
  simp only [Bx.lo, Bx.hi] at h1 h2
  rw [Bx.cv_apply]
  push_cast
  rw [abs_le]
  have e1 : (D.W : ℝ) * ((b.L k : ℝ) / 2 ^ b.m) * 2 ^ b.m = (D.W : ℝ) * b.L k := by field_simp
  have e2 : (D.W : ℝ) * (((b.L k : ℝ) + 2) / 2 ^ b.m) * 2 ^ b.m = (D.W : ℝ) * (b.L k + 2) := by field_simp
  have h1' := mul_le_mul_of_nonneg_right h1 hp.le
  have h2' := mul_le_mul_of_nonneg_right h2 hp.le
  rw [e1] at h1'
  rw [e2] at h2'
  constructor <;> nlinarith

/-! ### The test -/

/-- **The `rec` test of the box `b` into target `j`** of `D` (`BoundaryK.trOK` at depth `m`, centre `L + 1`). -/
def recBoxOK (D : BData) (j : ℕ) (b : Bx) : Bool :=
  trOK D j b.m (b.L 0 + 1) (b.L 1 + 1) (b.L 2 + 1) (b.L 3 + 1)

lemma recBoxOK_spec {D : BData} {j : ℕ} {b : Bx} {t : BTgt} (hj : D.tg[j]? = some t) (h : recBoxOK D j b = true) :
    0 < t.Th.getD b.m 0 ∧
      qf5 t.G (D.wv b.m (b.L 0 + 1) (b.L 1 + 1) (b.L 2 + 1) (b.L 3 + 1)) < ((t.Th.getD b.m 0 : ℕ) : ℤ) := by
  simp only [recBoxOK, trOK, hj, Bool.and_eq_true, decide_eq_true_eq] at h
  exact h

/-- **Soundness of the `rec` test**: on the box, `‖h(A P + 2πN − P_t) + h(A Tη)‖ + n < R_t`, for any record `C` whose
centre, frame, `λ` and `n` match `D`. -/
theorem recBox_sound {D : BData} {pq : I6 → I6 → ℚ} {Th : ℕ → I6 → I6 → ℤ} (G : GFacts D Th)
    (ht : D.tg.all (tOK D pq Th) = true) {C : RecordCert} (hP : C.P = Pmat pq)
    (hT : ∀ (k : Fin 4) a b, C.T k a b = (Th k a b : ℝ) / D.DT) (hlam : C.lam ≤ D.lam) (hn : C.n ≤ D.nbar)
    {j : ℕ} {t : BTgt} (hj : D.tg[j]? = some t) {b : Bx} (hb : recBoxOK D j b = true)
    {Pt : RMat6} (hPt : Pt = Pmat t.pt) {Rt : ℝ} (hRt : (t.Rt : ℝ) ≤ Rt) {η : Fin 4 → ℝ}
    (hη : b.Mem (D.W : ℝ) η) :
    frob (hor (t.sp.act C.P + wind t.wind - Pt) + hor (t.sp.act (tang C.T η))) + C.n < Rt := by
  obtain ⟨h1, h2⟩ := recBoxOK_spec hj hb
  have hη' : BInBox D b.m (v4 (b.L 0 + 1) (b.L 1 + 1) (b.L 2 + 1) (b.L 3 + 1)) η := Bx.binBox hη
  exact transfer_ok G (tOK_of_mem ht hj) hP hT hlam hn hPt hRt h1 h2 hη'

/-- **A `rec` box as the semantic claim** `RecTargetHolds` of `Transfer.lean`, for a family `A` whose record `A l`
matches `D` and whose record `A tg` has the target's centre and radius. -/
theorem recBox_holds {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {l tg : ιr} {D : BData}
    {pq : I6 → I6 → ℚ} {Th : ℕ → I6 → I6 → ℤ} (G : GFacts D Th) (ht : D.tg.all (tOK D pq Th) = true)
    (hP : (A l).P = Pmat pq) (hT : ∀ (k : Fin 4) a b, (A l).T k a b = (Th k a b : ℝ) / D.DT)
    (hlam : (A l).lam ≤ D.lam) (hn : (A l).n ≤ D.nbar) {j : ℕ} {t : BTgt} (hj : D.tg[j]? = some t)
    (hPt : (A tg).P = Pmat t.pt) (hRt : (t.Rt : ℝ) ≤ (A tg).R) {b : Bx} (hb : recBoxOK D j b = true)
    {η : Fin 4 → ℝ} (hη : b.Mem (D.W : ℝ) η) : RecTargetHolds S A l (.record tg t.sp t.wind) η :=
  recBox_sound G ht hP hT hlam hn hj hb hPt hRt hη

/-! ### Records built by `recordK` -/

/-- The facts a `recordK` record gives the `rec` test: `D` carries its centre, frame, `λ`, `R`, `r_H` and a bound
`n̄ ≥ n ≥ 0` (`bdMatch`, `nroot_bars`). -/
theorem recordK_match {tb tbN : Tab} {tc : TCfg} {fq : FrameQ} {SQ : SigQ} {B : BarsQ} {pq : ParQ} {tq : TParQ}
    {hPq : tbN.pq = tb.pq} {hF : KernelAtlas.frameOK (frameOf tc tq) fq = true}
    {hS : sigmaOK tbN (frameOf tc tq) SQ B.sigma = true} {he : e0OK tbN B.e0 = true}
    {hj : j1OK tbN (frameOf tc tq) B.j1 = true} {hB : barsOK B fq pq tq = true}
    {SC : ∀ {rH n r rF K : ℝ}, 0 ≤ K →
      (∀ z, StageC.cnorm (StageC.Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * StageC.cnorm z) →
      K ≤ pq.Kbar → r ≤ pq.rbar → rF ≤ pq.rFbar → rH ≤ tq.rHbar → n ≤ tq.nbar →
      StageC.StageCCert ((1 / (2 * Real.pi)) • Pmat tb.pq) (frameOf tc tq).toR rH n r rF}
    {C : RecordCert} (hl : C = recordK hPq hF hS he hj hB SC) {D : BData} (hm : bdMatch D fq B tq = true) :
    C.P = Pmat tb.pq ∧ (∀ (k : Fin 4) a b, C.T k a b = (tcTh tc k a b : ℝ) / D.DT) ∧ C.lam ≤ D.lam ∧
      C.R = D.R ∧ C.rH = D.rH ∧ 0 ≤ C.n ∧ C.n ≤ D.nbar := by
  simp only [bdMatch, Bool.and_eq_true, decide_eq_true_eq] at hm
  obtain ⟨⟨⟨⟨hmR, hmrH⟩, hmlam⟩, hmn⟩, hmDT⟩ := hm
  obtain ⟨hn0, hn⟩ := nroot_bars hF hB
  subst hl
  refine ⟨rfl, fun k a b => ?_, ?_, ?_, ?_, hn0, ?_⟩
  · show (((frameOf tc tq) k a b : ℚ) : ℝ) = _
    simp only [frameOf, tcTh, hmDT]; push_cast; rfl
  · show (fq.lam : ℝ) ≤ D.lam; rw [hmlam]
  · show (B.R : ℝ) = D.R; rw [hmR]
  · show (fq.g : ℝ) * B.R = D.rH; rw [hmrH]; push_cast; ring
  · show nroot _ _ ≤ _; rw [hmn]; exact hn

/-- **A `rec` box of a `recordK` record** as `RecTargetHolds`, from the kernel checks `gOK`, `tOK` (the targets),
`bdMatch` and `recBoxOK`, for any family `A` with `A l` that record and `A tg` with the target's centre and radius. -/
theorem recBox_holdsK {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {l tg : ιr}
    {tb tbN : Tab} {tc : TCfg} {fq : FrameQ} {SQ : SigQ} {B : BarsQ} {pq : ParQ} {tq : TParQ}
    {hPq : tbN.pq = tb.pq} {hF : KernelAtlas.frameOK (frameOf tc tq) fq = true}
    {hS : sigmaOK tbN (frameOf tc tq) SQ B.sigma = true} {he : e0OK tbN B.e0 = true}
    {hj : j1OK tbN (frameOf tc tq) B.j1 = true} {hB : barsOK B fq pq tq = true}
    {SC : ∀ {rH n r rF K : ℝ}, 0 ≤ K →
      (∀ z, StageC.cnorm (StageC.Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * StageC.cnorm z) →
      K ≤ pq.Kbar → r ≤ pq.rbar → rF ≤ pq.rFbar → rH ≤ tq.rHbar → n ≤ tq.nbar →
      StageC.StageCCert ((1 / (2 * Real.pi)) • Pmat tb.pq) (frameOf tc tq).toR rH n r rF}
    (hl : A l = recordK hPq hF hS he hj hB SC) {D : BData} (hg : gOK D (tcTh tc) = true)
    (ht : D.tg.all (tOK D tb.pq (tcTh tc)) = true) (hm : bdMatch D fq B tq = true)
    {jj : ℕ} {t : BTgt} (hjj : D.tg[jj]? = some t) (hPt : (A tg).P = Pmat t.pt) (hRt : (t.Rt : ℝ) ≤ (A tg).R)
    {b : Bx} (hb : recBoxOK D jj b = true) {η : Fin 4 → ℝ} (hη : b.Mem (D.W : ℝ) η) :
    RecTargetHolds S A l (.record tg t.sp t.wind) η := by
  obtain ⟨hP, hT, hlam, -, -, -, hn⟩ := recordK_match hl hm
  exact recBox_holds (gOK_facts hg) ht hP hT hlam hn hjj hPt hRt hb hη

end NoFourMUBs.KernelAtlas.Seed
