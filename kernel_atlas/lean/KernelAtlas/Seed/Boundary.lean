import KernelAtlas.Seed.BallCert
import KernelAtlas.Seed.Cover
import KernelAtlas.Seed.T0
import KernelAtlas.Seed.T1Sym

/-!
# The boundary cover of a kernel seed ball (`SeedBoundaryCover`, C2)

A ball's boundary data are a list of entries, each a listed dyadic box (`Bx`, FORMAT §4, in units of the kernel
radius) with one target:
* `t0 l N b`: T0 into ball `l` (`t0OK`, `Seed/T0.lean`);
* `t1s l k I J N b`: T1 by corner symmetry into ball `l` (`t0OK` on the virtual ball `symBall k I J`, `Seed/T1Sym.lean`);
* `sub c s tl b`: transfer box `s` of the core box `c` (`coreFull`, `Seed/Full.lean`), T1 into ball `tl` or T2 into
  record `tl` by the sub-box's kind.
The listed boxes are the entries' boxes, in the order of the list (the sphere traversal `sphereOK` reads them in
preorder).  `entryOK` re-checks per entry the cheap links: the target data, the corner orders, the box coordinates.

`seedBoundary_of`: for any atlas family whose balls and records carry the kernel data (link hypotheses, discharged
at assembly by `rfl` through the shared table), the entries give `Nonempty (SeedBoundaryCover S A j)`.
-/

open Complex Matrix Hadamard6 NoFourMUBs.Side NoFourMUBs.Step2 NoFourMUBs.SeedAtlas

noncomputable section

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### Permutations of three indices given as lists -/

def perm3Fun (l : List ℕ) (a : I3) : I3 := ⟨gn l a % 3, Nat.mod_lt _ (by norm_num)⟩

def perm3OK (l : List ℕ) : Bool :=
  (l3 fun a => decide (gn l a < 3)).all id &&
    decide (gn l 0 ≠ gn l 1) && decide (gn l 0 ≠ gn l 2) && decide (gn l 1 ≠ gn l 2)

lemma perm3OK_lt {l : List ℕ} (h : perm3OK l = true) (a : I3) : gn l a < 3 := by
  simp only [perm3OK, Bool.and_eq_true] at h
  have := h.1.1.1
  simp only [l3, List.all_cons, List.all_nil, id, Bool.and_eq_true, Bool.and_true, decide_eq_true_eq] at this
  fin_cases a <;> simp_all

lemma perm3OK_inj {l : List ℕ} (h : perm3OK l = true) : Function.Injective (perm3Fun l) := by
  have hl := perm3OK_lt h
  simp only [perm3OK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨-, h01⟩, h02⟩, h12⟩ := h
  intro a b hab
  have e : gn l a = gn l b := by
    have := congrArg Fin.val hab
    simp only [perm3Fun] at this
    rwa [Nat.mod_eq_of_lt (hl a), Nat.mod_eq_of_lt (hl b)] at this
  fin_cases a <;> fin_cases b <;> simp_all [eq_comm]

def perm3Of (l : List ℕ) : Equiv.Perm I3 :=
  if h : perm3OK l = true then Equiv.ofBijective (perm3Fun l) (Finite.injective_iff_bijective.1 (perm3OK_inj h))
  else 1

lemma perm3Of_spec {l : List ℕ} (h : perm3OK l = true) (a : I3) : gn l a = perm3Of l a := by
  simp only [perm3Of, dif_pos h, Equiv.ofBijective_apply, perm3Fun]
  exact (Nat.mod_eq_of_lt (perm3OK_lt h a)).symm

/-- The permutation of a six-index list, or the identity if the list is not one. -/
def perm6Of (l : List ℕ) : Equiv.Perm I6 := if h : permOK l = true then permOf l h else 1

lemma perm6Of_spec {l : List ℕ} (h : permOK l = true) (i : I6) : perm6Of l i = permFun l i := by
  simp only [perm6Of, dif_pos h]; rfl

/-! ### Entries -/

inductive SEntry
  | t0 (l : ℕ) (N : List ℤ) (b : Bx)
  | t1s (l k : ℕ) (I J : List ℕ) (N : List ℤ) (b : Bx)
  | sub (c s tl : ℕ) (b : Bx)

def SEntry.box : SEntry → Bx
  | .t0 _ _ b => b
  | .t1s _ _ _ _ _ b => b
  | .sub _ _ _ b => b

/-- A core box with its transfer boxes. -/
structure CoreD where
  D : BoxD
  subs : List SubD

def getCore (cs : List CoreD) (c : ℕ) : CoreD := cs.getD c ⟨⟨[], [], [], [], [], [], 0, 0, [], [], [], []⟩, []⟩
def getSub (C : CoreD) (s : ℕ) : SubD := C.subs.getD s ⟨[], [], 0, ⟨0, [], [], [], [], 0, 0⟩, ⟨[], [], [], [], 0, 0⟩, 0,
  ⟨[], [], false, false, [], [], 0⟩⟩

/-- The listed box is the transfer box `s` of the core box (exact grid coordinates). -/
def subBoxOK (r : ℕ) (C : CoreD) (s : SubD) (b : Bx) : Bool :=
  decide (r % 2 ^ b.m = 0) && decide (s.h = b.hbN r) &&
    (l4 fun l => decide (gi C.D.wc l + gi s.c l = gi (b.wcZ r) l)).all id

/-- The cheap per-entry checks.  `Dt l`, `It l`: the target balls' kernel data and inverses. -/
def entryOK (D : SeedD) (cs : List CoreD) (Dt : ℕ → SeedD) (It : ℕ → InvD) : SEntry → Bool
  | .t0 l N b => invOK (Dt l).B (It l) && t0OK D (Dt l) (It l) N b
  | .t1s l k I J N b => decide (k < 4) && perm3OK I && perm3OK J && invOK (Dt l).B (It l) &&
      t0OK (symBall k I J D) (Dt l) (It l) N b
  | .sub c si tl b =>
      let C := getCore cs c
      let s := getSub C si
      decide (c < cs.length) && decide (si < C.subs.length) && subBoxOK D.r C s b &&
        (if s.kind = 1 then decide (s.t1.g < 4) && permOK s.t1.rows && permOK s.t1.cols &&
            decide (s.bl.th0 = (Dt tl).B.th0) && decide (s.bl.Mth = (Dt tl).B.Mth) && decide (s.bl.o = (Dt tl).B.o) &&
            decide (s.rl = (Dt tl).r)
          else permOK s.t2.rows && permOK s.t2.cols)

section Assembly

variable {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (ofS : ℕ → σs) (ofR : ℕ → ιr)

/-- The target of an entry. -/
def SEntry.tgt (cs : List CoreD) : SEntry → SeedTarget σs ιr
  | .t0 l N _ => .t0 (ofS l) fun i => gi N i
  | .t1s l k I J _ _ => .t1 (ofS l) ⟨k % 4, Nat.mod_lt _ (by norm_num)⟩ (symPerm (perm3Of I)) (symPerm (perm3Of J))
  | .sub c si tl _ =>
      let s := getSub (getCore cs c) si
      if s.kind = 1 then
        .t1 (ofS tl) ⟨s.t1.g % 4, Nat.mod_lt _ (by norm_num)⟩ (perm6Of s.t1.rows) (perm6Of s.t1.cols)
      else .t2 (ofR tl) (SignedPerm.mk (perm6Of s.t2.rows) (perm6Of s.t2.cols) s.t2.tr s.t2.cj) (Nmat s.t2.N)

/-- The links of a target ball `l` to its kernel data. -/
def BallLink (l : ℕ) (Dl : SeedD) : Prop :=
  (S (ofS l)).theta0 = th0R Dl.B ∧ (S (ofS l)).Mth = MthR Dl.B ∧ (S (ofS l)).r = rn Dl.r ∧
    (S (ofS l)).o = (Dl.B.o : ℤ)

/-- The T2 strictness of the record targets of the core boxes. -/
def RecLinks (cs : List CoreD) (E : List SEntry) : Prop :=
  ∀ c si tl b, SEntry.sub c si tl b ∈ E → (getSub (getCore cs c) si).kind ≠ 1 →
    rn (getSub (getCore cs c) si).t2.nb + frob (Pg (getSub (getCore cs c) si).t2.Pt - (A (ofR tl)).P) <
      (A (ofR tl)).R

lemma mem_subW {D : SeedD} {C : CoreD} {s : SubD} {b : Bx} (h : subBoxOK D.r C s b = true) {w : Fin 4 → ℝ}
    (hw : b.Mem (rn D.r) w) :
    InBox s.h (fun l => w l - rq (gi (b.wcZ D.r) l)) ∧ subW C.D s (fun l => w l - rq (gi (b.wcZ D.r) l)) = w := by
  simp only [subBoxOK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨hdiv, hh⟩, hc⟩ := h
  refine ⟨hh ▸ Bx.inBox_of_mem hdiv hw, ?_⟩
  funext l
  have e := all_l4 hc l.2
  rw [decide_eq_true_eq] at e
  simp only [subW, wOf, rq]
  rw [← e]; push_cast; ring

/-- **The boundary cover of a kernel seed ball.** -/
theorem seedBoundary_of {j : σs} {D : SeedD} {o : ℤˣ} (ho : D.B.o = (o : ℤ))
    (hj : (S j).theta0 = th0R D.B ∧ (S j).Mth = MthR D.B ∧ (S j).r = rn D.r ∧ (S j).o = o)
    {E : List SEntry} {cs : List CoreD} {maxl : ℕ} {Dt : ℕ → SeedD} {It : ℕ → InvD}
    (hsph : sphereOK D.r maxl (E.map SEntry.box) = true)
    (hcores : ∀ C ∈ cs, coreFull D.B C.D C.subs = true)
    (hent : E.all (entryOK D cs Dt It) = true)
    (hl : ∀ l, BallLink S ofS l (Dt l))
    (hr : RecLinks A ofR cs E) :
    Nonempty (SeedBoundaryCover S A j) := by
  refine ⟨{ β := Fin E.length,
             box := fun b => {w | (E.get b).box.Mem (rn D.r) w},
             tgt := fun b => (E.get b).tgt ofS ofR cs,
             hcover := ?_,
             htransfer := ?_ }⟩
  · intro w hw
    rw [hj.2.2.1] at hw
    obtain ⟨bx, hbx, hmem⟩ := sphere_cover hsph w hw
    obtain ⟨e, he, rfl⟩ := List.mem_map.1 hbx
    obtain ⟨i, rfl⟩ := List.get_of_mem he
    exact ⟨i, hmem⟩
  · intro b w hw hwr
    have hSj0 := hj.1; have hSjM := hj.2.1; have hSjo := hj.2.2.2
    suffices key : ∀ e ∈ E, entryOK D cs Dt It e = true → e.box.Mem (rn D.r) w →
        SeedTargetHolds S A j (e.tgt ofS ofR cs) w from
      key _ (List.get_mem _ _) ((List.all_eq_true.1 hent) _ (List.get_mem _ _)) hw
    have hwr' : wnorm w ≤ (S j).r := hwr.le
    intro e hmem hok hw
    cases e with
    | t0 l N bx =>
      simp only [entryOK, Bool.and_eq_true] at hok
      obtain ⟨hinv, ht0⟩ := hok
      obtain ⟨ho', hT⟩ := t0_sound hinv ht0
      obtain ⟨hl0, hlM, hlr, hlo⟩ := hl l
      refine ⟨?_, ?_⟩
      · show (S (ofS l)).o = (S j).o
        rw [hSjo]; apply Units.ext; rw [hlo, ho', ho]
      · obtain ⟨w', hw', heq⟩ := hT w hw
        refine ⟨w', by rw [hlr]; exact hw', ?_⟩
        simp only [SeedBallCert.θ, hl0, hlM, hSj0, hSjM]
        rw [heq]
    | t1s l k I J N bx =>
      simp only [entryOK, Bool.and_eq_true, decide_eq_true_eq] at hok
      obtain ⟨⟨⟨⟨hk, hI⟩, hJ⟩, hinv⟩, ht⟩ := hok
      obtain ⟨hl0, hlM, hlr, hlo⟩ := hl l
      have hk' : (⟨k % 4, Nat.mod_lt _ (by norm_num)⟩ : Fin 4) = ⟨k, hk⟩ := Fin.ext (Nat.mod_eq_of_lt hk)
      show ∃ K, RepO (S j).o (seedOf ((S j).θ w)) K ∧
        CornerIn (S (ofS l)) ⟨k % 4, _⟩ (symPerm (perm3Of I)) (symPerm (perm3Of J)) K
      rw [hk']
      have hD : D.B.o = (S j).o := by rw [hSjo, ho]
      have hDl : (Dt l).B.o = (S (ofS l)).o := hlo.symm
      exact t1sym_holds (k := ⟨k, hk⟩) (perm3Of_spec hI) (perm3Of_spec hJ) hinv ht (S j) (S (ofS l)) hSj0 hSjM hD
        hl0 hlM hlr hDl hw hwr'
    | sub c si tl bx =>
      simp only [entryOK, Bool.and_eq_true, decide_eq_true_eq] at hok
      obtain ⟨⟨⟨hc, hsi⟩, hbox⟩, hkind⟩ := hok
      set C := getCore cs c with hC
      set s := getSub C si with hs
      have hCmem : C ∈ cs := by rw [hC, getCore, List.getD_eq_getElem _ _ hc]; exact List.getElem_mem _
      have hsmem : s ∈ C.subs := by rw [hs, getSub, List.getD_eq_getElem _ _ hsi]; exact List.getElem_mem _
      have hfb := hcores C hCmem
      obtain ⟨hv, hsw⟩ := mem_subW hbox hw
      have hjB : (S j).theta0 = th0R D.B ∧ (S j).Mth = MthR D.B ∧ (S j).o = o := ⟨hSj0, hSjM, hSjo⟩
      by_cases hk1 : s.kind = 1
      · rw [if_pos hk1] at hkind
        simp only [Bool.and_eq_true, decide_eq_true_eq] at hkind
        obtain ⟨⟨⟨⟨⟨⟨hg, hrows⟩, hcols⟩, hth⟩, hM⟩, hbo⟩, hrl⟩ := hkind
        obtain ⟨hl0, hlM, hlr, hlo⟩ := hl tl
        have hlink : (S (ofS tl)).theta0 = th0R s.bl ∧ (S (ofS tl)).Mth = MthR s.bl ∧ (S (ofS tl)).r = rn s.rl := by
          refine ⟨?_, ?_, ?_⟩
          · rw [hl0]; unfold th0R; rw [hth]
          · rw [hlM]; unfold MthR; rw [hM]
          · rw [hlr, hrl]
        have hT := t1_holds (S := S) (A := A) (j := j) (l := ofS tl) ho hjB hfb hsmem hk1
          (ol := (S (ofS tl)).o) ⟨hlink.1, hlink.2.1, hlink.2.2, rfl⟩ (by rw [hbo, ← hlo])
          (fun i => perm6Of_spec hrows i) (fun i => perm6Of_spec hcols i) (kk := ⟨s.t1.g % 4, Nat.mod_lt _ (by norm_num)⟩)
          (Nat.mod_eq_of_lt hg) hv
        rw [hsw] at hT
        show SeedTargetHolds S A j (if s.kind = 1 then _ else _) w
        rw [if_pos hk1]
        exact hT
      · rw [if_neg hk1] at hkind
        simp only [Bool.and_eq_true] at hkind
        obtain ⟨hrows, hcols⟩ := hkind
        have hT := t2_holds (S := S) (A := A) (j := j) (t := ofR tl) ho hjB hfb hsmem hk1
          (fun i => perm6Of_spec hrows i) (fun i => perm6Of_spec hcols i)
          (hr c si tl bx hmem hk1) hv
        rw [hsw] at hT
        show SeedTargetHolds S A j (if s.kind = 1 then _ else _) w
        rw [if_neg hk1]
        exact hT

end Assembly

end NoFourMUBs.KernelAtlas.Seed
