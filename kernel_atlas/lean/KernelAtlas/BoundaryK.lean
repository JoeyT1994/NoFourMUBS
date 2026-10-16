import KernelAtlas.NormalK
import NoFourMUBs.Boundary

/-!
# The boundary cover of a Record in the kernel (Lemma 4.1, `BoundaryCover`)

`BoundaryCover A l` (`NoFourMUBs/Boundary.lean`) needs, for the source Record `l`: every `η` of the shell
`‖η‖ ≤ r_H`, `‖Tη‖² ≥ R² − n²` transfers into some target Record `t`,
`‖h(A P + 2πN − P_t) + h(A Tη)‖ + n < R_t`.  The certificate is a 16-ary tree of η-boxes
(`docs/KERNEL_BOUNDARY.md`):
* the box at depth `d` with integer centre `m` is `{η : |2^d η_k − W m_k| ≤ W}`, the root `d = 0, m = 0` is
  `[−W, W]⁴ ⊇ {‖η‖ ≤ r_H}`;
* `off` boxes miss the ball (`Σ max(|m_k| − 1, 0)² > B_d`) or lie inside the inner shell (`mᵀĜ_T m < Φ_d`);
* `leaf j` boxes pass the transfer test into target `j`: `wᵀĜ_j w < Θ_{j,d}`, a 5 × 5 integer quadratic form;
* `split` boxes have 16 children `2m + s`, `s ∈ {±1}⁴`.
The tree is packed in preorder into the digits (base `D.base`) of one natural number.

`cover_sound` proves the shell statement from the checks `gOK` (constants and tables), `tOK` (per target: the
permutation, `Ŷ = L(A P + 2π̃N − P_t)`, the Gram matrix `Ĝ_j` and the thresholds) and `walk` (the tree);
`boundaryCover_of` builds the `BoundaryCover`.
-/

open Matrix Hadamard6 NoFourMUBs

namespace NoFourMUBs.KernelAtlas

/-! ### Helpers -/

def z6 (f : I6 → ℤ) : ℤ := f (.inl 0) + f (.inl 1) + f (.inl 2) + f (.inr 0) + f (.inr 1) + f (.inr 2)

lemma z6_cast (f : I6 → ℤ) : ((z6 f : ℤ) : ℝ) = ∑ j, (f j : ℝ) := by
  rw [sum_I6R]; simp only [z6]; push_cast; ring

def all5 (f : Fin 5 → Bool) : Bool := f 0 && f 1 && f 2 && f 3 && f 4

lemma all5_spec {f : Fin 5 → Bool} (h : all5 f = true) : ∀ i, f i = true := by
  unfold all5 at h
  simp only [Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨h0, h1⟩, h2⟩, h3⟩, h4⟩ := h
  intro i; fin_cases i <;> assumption

def f4 (g : Fin 4 → ℤ) : ℤ := g 0 + g 1 + g 2 + g 3
def f5 (g : Fin 5 → ℤ) : ℤ := g 0 + g 1 + g 2 + g 3 + g 4

lemma f4_cast (g : Fin 4 → ℤ) : ((f4 g : ℤ) : ℝ) = ∑ k, (g k : ℝ) := by
  rw [Fin.sum_univ_four]; simp only [f4]; push_cast; ring

lemma f5_cast (g : Fin 5 → ℤ) : ((f5 g : ℤ) : ℝ) = ∑ k, (g k : ℝ) := by
  rw [Fin.sum_univ_five]; simp only [f5]; push_cast; ring

/-- Entry `(a, b)` of a 6 × 6 integer matrix stored row-major in `idx` order. -/
def mg (l : List ℤ) (a b : I6) : ℤ := l.getD (6 * idx a + idx b) 0

/-- `36 · h(Z)`: `36 Z − 6·(row sums) − 6·(column sums) + total`. -/
def hor36 (Z : I6 → I6 → ℤ) (a b : I6) : ℤ :=
  36 * Z a b - 6 * z6 (Z a) - 6 * z6 (fun c => Z c b) + z6 fun c => z6 (Z c)

/-! ### Permutations from lists -/

def ofIdx : ℕ → I6
  | 0 => .inl 0
  | 1 => .inl 1
  | 2 => .inl 2
  | 3 => .inr 0
  | 4 => .inr 1
  | _ => .inr 2

def pf (l : List ℕ) (i : I6) : I6 := ofIdx (l.getD (idx i) 0)

def permChk (l li : List ℕ) : Bool :=
  allI6 (fun i => decide (pf li (pf l i) = i)) && allI6 (fun i => decide (pf l (pf li i) = i))

/-- The permutation `i ↦ l[idx i]` with inverse `li` (the identity if the check fails). -/
def mkPerm (l li : List ℕ) : Equiv.Perm I6 :=
  if h : permChk l li = true then
    { toFun := pf l
      invFun := pf li
      left_inv := fun i => by
        simp only [permChk, Bool.and_eq_true] at h
        exact of_decide_eq_true (allI6_spec h.1 i)
      right_inv := fun i => by
        simp only [permChk, Bool.and_eq_true] at h
        exact of_decide_eq_true (allI6_spec h.2 i) }
  else 1

lemma mkPerm_apply {l li : List ℕ} (h : permChk l li = true) (i : I6) : mkPerm l li i = pf l i := by
  rw [mkPerm, dif_pos h]; rfl

/-! ### Data -/

/-- One transfer target. -/
structure BTgt where
  /-- the sign (`cj = true`: `−1`) and the transposition of the signed permutation -/
  cj : Bool
  tr : Bool
  /-- row and column permutations (`idx` order) and their inverses -/
  rp : List ℕ
  rpi : List ℕ
  cp : List ℕ
  cpi : List ℕ
  /-- the winding `N` (36 entries, row-major) -/
  N : List ℤ
  /-- the target centre (radians), in the layout of `Tab.PqL` -/
  Pt : List (List ℚ)
  /-- a lower bound of the target radius -/
  Rt : ℚ
  /-- `Ŷ = L (A P_s + 2π̃N − P_t)` (36 entries) -/
  Y : List ℤ
  /-- the Gram matrix of `hor36 Ŷ, hor36 (A T̂₀), …, hor36 (A T̂₃)` (25 entries) -/
  G : List ℤ
  /-- the thresholds `Θ_d` -/
  Th : List ℕ

def BTgt.pt (t : BTgt) (j i : I6) : ℚ := (t.Pt.getD (idx j) []).getD (idx i) 0
def BTgt.sp (t : BTgt) : SignedPerm := ⟨mkPerm t.rp t.rpi, mkPerm t.cp t.cpi, t.tr, t.cj⟩
def BTgt.wind (t : BTgt) : Matrix I6 I6 ℤ := fun a b => mg t.N a b
def BTgt.sgnZ (t : BTgt) : ℤ := if t.cj then -1 else 1

/-- `(A X)_{ab} = ±(X or Xᵀ)(σ a, τ b)` on integer matrices. -/
def BTgt.actZ (t : BTgt) (X : I6 → I6 → ℤ) (a b : I6) : ℤ :=
  t.sgnZ * (if t.tr then X (pf t.cp b) (pf t.rp a) else X (pf t.rp a) (pf t.cp b))

/-- The same on rational matrices. -/
def BTgt.actQ (t : BTgt) (X : I6 → I6 → ℚ) (a b : I6) : ℚ :=
  (if t.cj then -1 else 1) * (if t.tr then X (pf t.cp b) (pf t.rp a) else X (pf t.rp a) (pf t.cp b))

/-- The five integer matrices `Ŷ, A T̂₀, …, A T̂₃` of a target. -/
def tZ (Th : ℕ → I6 → I6 → ℤ) (t : BTgt) (x : Fin 5) : I6 → I6 → ℤ :=
  if x.val = 0 then mg t.Y else t.actZ (Th (x.val - 1))

/-- The boundary data of one Record. -/
structure BData where
  /-- `T = T̂ / DT` -/
  DT : ℕ
  /-- `W = Wn / Wd ≥ r_H` -/
  Wn : ℕ
  Wd : ℕ
  /-- the common denominator of `A P_s + 2π̃N − P_t` -/
  L : ℕ
  R : ℚ
  rH : ℚ
  lam : ℚ
  nbar : ℚ
  /-- `s_λ ≥ √λ`, `s_q ≤ √(R² − n̄²)` -/
  slam : ℚ
  sq : ℚ
  /-- the Gram matrix of `T̂` (16 entries) -/
  GT : List ℤ
  /-- the off-ball thresholds `B_d` and the inner-shell thresholds `Φ_d` -/
  Bd : List ℕ
  Phi : List ℕ
  tg : List BTgt
  /-- the packed tree -/
  base : ℕ
  fuel : ℕ
  code : ℕ

def BData.W (D : BData) : ℚ := (D.Wn : ℚ) / D.Wd

/-- `w = (Wd 2^d DT, L Wn m₀, …, L Wn m₃)`. -/
def BData.wv (D : BData) (d : ℕ) (a b c e : ℤ) : Fin 5 → ℤ :=
  ![(D.Wd : ℤ) * 2 ^ d * D.DT, D.L * D.Wn * a, D.L * D.Wn * b, D.L * D.Wn * c, D.L * D.Wn * e]

/-- `κ_d = 36 L Wd 2^d DT`. -/
def BData.kap (D : BData) (d : ℕ) : ℚ := 36 * D.L * D.Wd * 2 ^ d * D.DT

/-- `Σ N²`. -/
def BTgt.nn (t : BTgt) : ℤ := z6 fun a => z6 fun b => mg t.N a b ^ 2

/-- `D_{j,d} = R_t − n̄ − 2 s_λ W/2^d − 10⁻²⁰(ΣN² + 1)`. -/
def BData.tD (D : BData) (t : BTgt) (d : ℕ) : ℚ :=
  t.Rt - D.nbar - 2 * D.slam * (D.W / 2 ^ d) - 1 / 10 ^ 20 * ((t.nn : ℚ) + 1)

def v4 (a b c e : ℤ) : Fin 4 → ℤ := ![a, b, c, e]

def qf4 (G : List ℤ) (m : Fin 4 → ℤ) : ℤ := f4 fun k => m k * f4 fun l => G.getD (4 * k.val + l.val) 0 * m l
def qf5 (G : List ℤ) (w : Fin 5 → ℤ) : ℤ := f5 fun a => w a * f5 fun b => G.getD (5 * a.val + b.val) 0 * w b

/-! ### The checks -/

/-- Constants and tables. -/
def gOK (D : BData) (Th : ℕ → I6 → I6 → ℤ) : Bool :=
  decide (0 < D.DT) && decide (0 < D.Wn) && decide (0 < D.Wd) && decide (0 < D.L) && decide (2 ≤ D.base) &&
  decide (0 ≤ D.rH) && decide (D.rH ≤ D.W) && decide (0 ≤ D.slam) && decide (D.lam ≤ D.slam ^ 2) &&
  decide (0 ≤ D.sq) && decide (D.sq ^ 2 ≤ D.R ^ 2 - D.nbar ^ 2) &&
  (all4 fun k => all4 fun l =>
    decide (D.GT.getD (4 * k.val + l.val) 0 = z6 fun a => z6 fun b => Th k a b * Th l a b)) &&
  ((List.range D.Bd.length).all fun d => decide (D.rH ^ 2 * 4 ^ d ≤ (D.Bd.getD d 0 : ℚ) * D.W ^ 2)) &&
  ((List.range D.Phi.length).all fun d => decide (D.Phi.getD d 0 = 0) ||
    (decide (2 * D.slam * (D.W / 2 ^ d) ≤ D.sq) &&
      decide ((D.Phi.getD d 0 : ℚ) * (D.W / (2 ^ d * D.DT)) ^ 2 ≤ (D.sq - 2 * D.slam * (D.W / 2 ^ d)) ^ 2)))

/-- One target: permutations, `Ŷ`, the Gram matrix, the thresholds. -/
def tOK (D : BData) (pq : I6 → I6 → ℚ) (Th : ℕ → I6 → I6 → ℤ) (t : BTgt) : Bool :=
  permChk t.rp t.rpi && permChk t.cp t.cpi &&
  (allI6 fun a => allI6 fun b =>
    decide ((mg t.Y a b : ℚ) = D.L * (t.actQ pq a b + 2 * piLo * (mg t.N a b : ℚ) - t.pt a b))) &&
  (all5 fun x => all5 fun y => decide (t.G.getD (5 * x.val + y.val) 0 =
    z6 fun a => z6 fun b => hor36 (tZ Th t x) a b * hor36 (tZ Th t y) a b)) &&
  ((List.range t.Th.length).all fun d => decide (t.Th.getD d 0 = 0) ||
    (decide (0 ≤ D.tD t d) && decide ((t.Th.getD d 0 : ℚ) ≤ (D.kap d * D.tD t d) ^ 2)))

def e1 (x : ℤ) : ℤ := if 1 ≤ x then x - 1 else if x ≤ -1 then -x - 1 else 0

/-- The box misses the ball `‖η‖ ≤ r_H`, or lies inside the inner shell. -/
def offOK (D : BData) (d : ℕ) (a b c e : ℤ) : Bool :=
  (decide (d < D.Bd.length) && decide (((D.Bd.getD d 0 : ℕ) : ℤ) < e1 a ^ 2 + e1 b ^ 2 + e1 c ^ 2 + e1 e ^ 2)) ||
  (decide (0 < D.Phi.getD d 0) && decide (qf4 D.GT (v4 a b c e) < ((D.Phi.getD d 0 : ℕ) : ℤ)))

/-- The box transfers into target `j`. -/
def trOK (D : BData) (j d : ℕ) (a b c e : ℤ) : Bool :=
  match D.tg[j]? with
  | none => false
  | some t => decide (0 < t.Th.getD d 0) && decide (qf5 t.G (D.wv d a b c e) < ((t.Th.getD d 0 : ℕ) : ℤ))

/-- The 16 sign vectors, in the order of the children. -/
def offs : List (ℤ × ℤ × ℤ × ℤ) :=
  [(-1, -1, -1, -1), (-1, -1, -1, 1), (-1, -1, 1, -1), (-1, -1, 1, 1), (-1, 1, -1, -1), (-1, 1, -1, 1),
   (-1, 1, 1, -1), (-1, 1, 1, 1), (1, -1, -1, -1), (1, -1, -1, 1), (1, -1, 1, -1), (1, -1, 1, 1),
   (1, 1, -1, -1), (1, 1, -1, 1), (1, 1, 1, -1), (1, 1, 1, 1)]

/-- Run `g` on the children `2m + o`, `o ∈ os`, threading the code stream. -/
def bkids (g : ℤ → ℤ → ℤ → ℤ → ℕ → Option ℕ) (a b c e : ℤ) : List (ℤ × ℤ × ℤ × ℤ) → ℕ → Option ℕ
  | [], s => some s
  | o :: os, s =>
    match g (2 * a + o.1) (2 * b + o.2.1) (2 * c + o.2.2.1) (2 * e + o.2.2.2) s with
    | some s' => bkids g a b c e os s'
    | none => none

/-- The tree check: reads one code from the stream `s` (0 off, 1 split, `2 + j` leaf into target `j`). -/
def walk (D : BData) (f d : ℕ) (a b c e : ℤ) (s : ℕ) : Option ℕ :=
  match f with
  | 0 => none
  | f + 1 =>
    if s % D.base = 0 then (if offOK D d a b c e then some (s / D.base) else none)
    else if s % D.base = 1 then
      bkids (fun a' b' c' e' s' => walk D f (d + 1) a' b' c' e' s') a b c e offs (s / D.base)
    else (if trOK D (s % D.base - 2) d a b c e then some (s / D.base) else none)
termination_by structural f

/-! ### Reading the checks -/

lemma range_all {n : ℕ} {p : ℕ → Bool} (h : (List.range n).all p = true) {d : ℕ} (hd : d < n) : p d = true := by
  rw [List.all_eq_true] at h; exact h d (List.mem_range.mpr hd)

lemma getD_pos {α : Type*} {l : List α} {d : ℕ} {z : α} (h : l.getD d z ≠ z) : d < l.length := by
  by_contra hd; exact h (List.getD_eq_default _ _ (Nat.le_of_not_lt hd))

/-- The constants of `gOK`, over `ℚ`. -/
structure GFacts (D : BData) (Th : ℕ → I6 → I6 → ℤ) : Prop where
  DT : 0 < D.DT
  Wn : 0 < D.Wn
  Wd : 0 < D.Wd
  L : 0 < D.L
  base : 2 ≤ D.base
  rH0 : 0 ≤ D.rH
  rHW : D.rH ≤ D.W
  slam0 : 0 ≤ D.slam
  slam : D.lam ≤ D.slam ^ 2
  sq0 : 0 ≤ D.sq
  sq : D.sq ^ 2 ≤ D.R ^ 2 - D.nbar ^ 2
  GT : ∀ k l : Fin 4, D.GT.getD (4 * k.val + l.val) 0 = z6 fun a => z6 fun b => Th k a b * Th l a b
  Bd : ∀ d < D.Bd.length, D.rH ^ 2 * 4 ^ d ≤ (D.Bd.getD d 0 : ℚ) * D.W ^ 2
  Phi : ∀ d < D.Phi.length, D.Phi.getD d 0 = 0 ∨ (2 * D.slam * (D.W / 2 ^ d) ≤ D.sq ∧
    (D.Phi.getD d 0 : ℚ) * (D.W / (2 ^ d * D.DT)) ^ 2 ≤ (D.sq - 2 * D.slam * (D.W / 2 ^ d)) ^ 2)

lemma gOK_facts {D : BData} {Th : ℕ → I6 → I6 → ℤ} (h : gOK D Th = true) : GFacts D Th := by
  simp only [gOK, Bool.and_eq_true, decide_eq_true_eq] at h
  obtain ⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩, h6⟩, h7⟩, h8⟩, h9⟩, h10⟩, h11⟩, h12⟩, h13⟩, h14⟩ := h
  refine ⟨h1, h2, h3, h4, h5, h6, h7, h8, h9, h10, h11, fun k l => ?_, fun d hd => ?_, fun d hd => ?_⟩
  · exact of_decide_eq_true (all4_spec (all4_spec h12 k) l)
  · exact of_decide_eq_true (range_all h13 hd)
  · have := range_all h14 hd
    simp only [Bool.or_eq_true, Bool.and_eq_true, decide_eq_true_eq] at this
    exact this

/-- The facts of `tOK` for one target. -/
structure TFacts (D : BData) (pq : I6 → I6 → ℚ) (Th : ℕ → I6 → I6 → ℤ) (t : BTgt) : Prop where
  rp : permChk t.rp t.rpi = true
  cp : permChk t.cp t.cpi = true
  Y : ∀ a b, (mg t.Y a b : ℚ) = D.L * (t.actQ pq a b + 2 * piLo * (mg t.N a b : ℚ) - t.pt a b)
  G : ∀ x y : Fin 5, t.G.getD (5 * x.val + y.val) 0 =
    z6 fun a => z6 fun b => hor36 (tZ Th t x) a b * hor36 (tZ Th t y) a b
  Th : ∀ d < t.Th.length, t.Th.getD d 0 = 0 ∨ (0 ≤ D.tD t d ∧ (t.Th.getD d 0 : ℚ) ≤ (D.kap d * D.tD t d) ^ 2)

lemma tOK_facts {D : BData} {pq : I6 → I6 → ℚ} {Th : ℕ → I6 → I6 → ℤ} {t : BTgt} (h : tOK D pq Th t = true) :
    TFacts D pq Th t := by
  simp only [tOK, Bool.and_eq_true] at h
  obtain ⟨⟨⟨⟨h1, h2⟩, h3⟩, h4⟩, h5⟩ := h
  refine ⟨h1, h2, fun a b => of_decide_eq_true (allI6_spec (allI6_spec h3 a) b),
    fun x y => of_decide_eq_true (all5_spec (all5_spec h4 x) y), fun d hd => ?_⟩
  have := range_all h5 hd
  simp only [Bool.or_eq_true, Bool.and_eq_true, decide_eq_true_eq] at this
  exact this

lemma tOK_of_mem {D : BData} {pq : I6 → I6 → ℚ} {Th : ℕ → I6 → I6 → ℤ} (h : D.tg.all (tOK D pq Th) = true)
    {j : ℕ} {t : BTgt} (ht : D.tg[j]? = some t) : TFacts D pq Th t := by
  rw [List.all_eq_true] at h
  exact tOK_facts (h t (List.mem_of_getElem? ht))

/-! ### Linear algebra on `RMat6` -/

lemma hor_smul (r : ℝ) (Y : RMat6) : hor (r • Y) = r • hor Y := by
  ext i j
  simp only [hor_apply, rowMean, colMean, allMean, Matrix.smul_apply, smul_eq_mul, ← Finset.mul_sum]
  ring

lemma hor_zero : hor (0 : RMat6) = 0 := by simpa using hor_smul 0 0

/-- `hor` as an additive map. -/
noncomputable def horHom : RMat6 →+ RMat6 := AddMonoidHom.mk' hor hor_add

lemma hor_sum4 (Y : Fin 4 → RMat6) : hor (∑ k, Y k) = ∑ k, hor (Y k) := map_sum horHom Y Finset.univ

lemma act_smul (A : SignedPerm) (r : ℝ) (Y : RMat6) : A.act (r • Y) = r • A.act Y := by
  ext i j; cases h : A.tr <;> simp [SignedPerm.act, h] <;> ring

noncomputable def actHom (A : SignedPerm) : RMat6 →+ RMat6 := AddMonoidHom.mk' A.act A.act_add

lemma act_sum4 (A : SignedPerm) (Y : Fin 4 → RMat6) : A.act (∑ k, Y k) = ∑ k, A.act (Y k) :=
  map_sum (actHom A) Y Finset.univ

/-- `hor` of a scaled integer matrix is `hor36 / 36`. -/
lemma hor_ofInt (Z : I6 → I6 → ℤ) (s : ℝ) :
    hor (Matrix.of fun a b => (Z a b : ℝ) * s) = Matrix.of fun a b => (hor36 Z a b : ℝ) * (s / 36) := by
  ext i j
  simp only [hor_apply, rowMean, colMean, allMean, Matrix.of_apply, hor36]
  push_cast [z6_cast]
  simp only [← Finset.sum_mul]
  ring

/-- The inner product `⟨X, Y⟩ = Σ X_ij Y_ij`. -/
noncomputable def ip (X Y : RMat6) : ℝ := ∑ i, ∑ j, X i j * Y i j

lemma sumsq_lin {n : ℕ} (x : Fin n → ℝ) (M : Fin n → RMat6) :
    sumsq (∑ a, x a • M a) = ∑ a, ∑ b, x a * x b * ip (M a) (M b) := by
  have e : ∀ i j, (∑ a, x a * M a i j) ^ 2 = ∑ a, ∑ b, x a * x b * (M a i j * M b i j) := by
    intro i j
    rw [sq, Finset.sum_mul_sum]
    exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring
  have h1 : sumsq (∑ a, x a • M a) = ∑ i, ∑ j, ∑ a, ∑ b, x a * x b * (M a i j * M b i j) := by
    simp only [sumsq, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul, e]
  rw [h1]
  simp only [ip, Finset.mul_sum]
  calc ∑ i, ∑ j, ∑ a, ∑ b, x a * x b * (M a i j * M b i j)
      = ∑ i, ∑ a, ∑ b, ∑ j, x a * x b * (M a i j * M b i j) := by
        refine Finset.sum_congr rfl fun i _ => ?_
        rw [Finset.sum_comm]
        exact Finset.sum_congr rfl fun a _ => Finset.sum_comm
    _ = ∑ a, ∑ b, ∑ i, ∑ j, x a * x b * (M a i j * M b i j) := by
        rw [Finset.sum_comm]
        exact Finset.sum_congr rfl fun a _ => Finset.sum_comm

lemma frob_le_of_sumsq {Y : RMat6} {c : ℝ} (hc : 0 ≤ c) (h : sumsq Y ≤ c ^ 2) : frob Y ≤ c := by
  rw [frob_eq_sqrt]; exact Real.sqrt_le_iff.mpr ⟨hc, h⟩

lemma frob_lt_of_sumsq {Y : RMat6} {c : ℝ} (hc : 0 ≤ c) (h : sumsq Y < c ^ 2) : frob Y < c := by
  rw [frob_eq_sqrt]; exact (Real.sqrt_lt' (by nlinarith [sumsq_nonneg Y])).mpr h

lemma sumsq_eq_frob_sq (Y : RMat6) : sumsq Y = frob Y ^ 2 := by
  rw [frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg Y)]

/-! ### Boxes -/

/-- `η` lies in the box of depth `d` and integer centre `m`: `|2^d η_k − W m_k| ≤ W`. -/
def BInBox (D : BData) (d : ℕ) (m : Fin 4 → ℤ) (η : Fin 4 → ℝ) : Prop :=
  ∀ k, |2 ^ d * η k - (D.W : ℝ) * m k| ≤ D.W

lemma W_pos {D : BData} {Th : ℕ → I6 → I6 → ℤ} (G : GFacts D Th) : (0 : ℝ) < D.W := by
  have : (0 : ℚ) < D.W := by unfold BData.W; have := G.Wn; have := G.Wd; positivity
  exact_mod_cast this

/-- The centre `W m_k / 2^d`. -/
noncomputable def cen (D : BData) (d : ℕ) (m : Fin 4 → ℤ) (k : Fin 4) : ℝ := (D.W : ℝ) * m k / 2 ^ d

lemma box_dev {D : BData} {d : ℕ} {m : Fin 4 → ℤ} {η : Fin 4 → ℝ} (h : BInBox D d m η) (k : Fin 4) :
    |η k - cen D d m k| ≤ (D.W : ℝ) / 2 ^ d := by
  have h2 : (0 : ℝ) < 2 ^ d := by positivity
  have e : η k - cen D d m k = (2 ^ d * η k - (D.W : ℝ) * m k) / 2 ^ d := by unfold cen; field_simp
  rw [e, abs_div, abs_of_pos h2]
  exact div_le_div_of_nonneg_right (h k) h2.le

lemma box_dev_sq {D : BData} {d : ℕ} {m : Fin 4 → ℤ} {η : Fin 4 → ℝ} (h : BInBox D d m η) :
    ∑ k, (η k - cen D d m k) ^ 2 ≤ 4 * ((D.W : ℝ) / 2 ^ d) ^ 2 := by
  have hk : ∀ k, (η k - cen D d m k) ^ 2 ≤ ((D.W : ℝ) / 2 ^ d) ^ 2 := fun k => by
    rw [← sq_abs]; exact pow_le_pow_left₀ (abs_nonneg _) (box_dev h k) 2
  rw [Fin.sum_univ_four]; linarith [hk 0, hk 1, hk 2, hk 3]

lemma sum_cen_dev (D : BData) (d : ℕ) (m : Fin 4 → ℤ) (η : Fin 4 → ℝ) (T : Fin 4 → RMat6) :
    ∑ k, η k • T k = (∑ k, cen D d m k • T k) + ∑ k, (η k - cen D d m k) • T k := by
  rw [← Finset.sum_add_distrib]
  exact Finset.sum_congr rfl fun k _ => by rw [← add_smul]; congr 1; ring

/-- The off-centre part of `Tη` is at most `√λ · 2h`. -/
lemma frob_dev {D : BData} {d : ℕ} {m : Fin 4 → ℤ} {η : Fin 4 → ℝ} (h : BInBox D d m η) (C : RecordCert)
    {s : ℝ} (hs : 0 ≤ s) (hlam : C.lam ≤ s ^ 2) :
    frob (∑ k, (η k - cen D d m k) • C.T k) ≤ 2 * s * ((D.W : ℝ) / 2 ^ d) := by
  have hW : (0 : ℝ) ≤ (D.W : ℝ) / 2 ^ d := (abs_nonneg _).trans (box_dev h 0)
  apply frob_le_of_sumsq (by positivity)
  have h1 := C.hlam fun k => η k - cen D d m k
  rw [Real.sq_sqrt (Finset.sum_nonneg fun k _ => sq_nonneg _)] at h1
  have h2 := box_dev_sq h
  have h3 : C.lam * ∑ k, (η k - cen D d m k) ^ 2 ≤ s ^ 2 * (4 * ((D.W : ℝ) / 2 ^ d) ^ 2) :=
    mul_le_mul hlam h2 (Finset.sum_nonneg fun k _ => sq_nonneg _) (sq_nonneg s)
  nlinarith

lemma e1_sq {W x : ℝ} {m : ℤ} {p : ℝ} (hW : 0 ≤ W) (_hp : 0 < p) (h : |p * x - W * m| ≤ W) :
    (W * (e1 m : ℝ)) ^ 2 ≤ (p * x) ^ 2 := by
  obtain ⟨h1, h2⟩ := abs_le.mp h
  unfold e1
  split_ifs with ha hb
  · have hm : (1 : ℝ) ≤ m := by exact_mod_cast ha
    push_cast
    exact pow_le_pow_left₀ (mul_nonneg hW (by linarith)) (by nlinarith) 2
  · have hm : (m : ℝ) ≤ -1 := by exact_mod_cast hb
    push_cast
    have : (p * x) ^ 2 = (-(p * x)) ^ 2 := by ring
    rw [this]
    exact pow_le_pow_left₀ (mul_nonneg hW (by linarith)) (by nlinarith) 2
  · simp only [Int.cast_zero, mul_zero]; nlinarith [sq_nonneg (p * x)]

/-- **Off the ball**: `‖η‖ > r_H` on the box. -/
lemma offball {D : BData} {Th : ℕ → I6 → I6 → ℤ} (G : GFacts D Th) {d : ℕ} {a b c e : ℤ}
    (hd : d < D.Bd.length) (hlt : ((D.Bd.getD d 0 : ℕ) : ℤ) < e1 a ^ 2 + e1 b ^ 2 + e1 c ^ 2 + e1 e ^ 2)
    {η : Fin 4 → ℝ} (hη : BInBox D d (v4 a b c e) η) : (D.rH : ℝ) < Real.sqrt (∑ k, η k ^ 2) := by
  have hW := W_pos G
  have hp : (0 : ℝ) < 2 ^ d := by positivity
  have h0 := e1_sq hW.le hp (hη 0)
  have h1 := e1_sq hW.le hp (hη 1)
  have h2 := e1_sq hW.le hp (hη 2)
  have h3 := e1_sq hW.le hp (hη 3)
  simp only [v4, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_three,
    Matrix.head_cons, Matrix.tail_cons] at h0 h1 h2 h3
  have hB : ((D.rH ^ 2 * 4 ^ d : ℚ) : ℝ) ≤ (((D.Bd.getD d 0 : ℚ) * D.W ^ 2 : ℚ) : ℝ) := by
    exact_mod_cast G.Bd d hd
  push_cast at hB
  have hlt' : ((D.Bd.getD d 0 : ℕ) : ℝ) + 1 ≤ (e1 a : ℝ) ^ 2 + (e1 b : ℝ) ^ 2 + (e1 c : ℝ) ^ 2 + (e1 e : ℝ) ^ 2 := by
    have : ((D.Bd.getD d 0 : ℕ) : ℤ) + 1 ≤ e1 a ^ 2 + e1 b ^ 2 + e1 c ^ 2 + e1 e ^ 2 := hlt
    exact_mod_cast this
  have h4 : (4 : ℝ) ^ d = (2 ^ d) ^ 2 := by rw [← pow_mul, mul_comm, pow_mul]; norm_num
  have hsum : (D.rH : ℝ) ^ 2 < ∑ k, η k ^ 2 := by
    rw [Fin.sum_univ_four]
    have hW2 : (0 : ℝ) < (D.W : ℝ) ^ 2 := by positivity
    have key : (D.rH : ℝ) ^ 2 * (2 ^ d) ^ 2 < (2 ^ d) ^ 2 * (η 0 ^ 2 + η 1 ^ 2 + η 2 ^ 2 + η 3 ^ 2) := by
      rw [h4] at hB
      nlinarith
    have hp2 : (0 : ℝ) < (2 ^ d) ^ 2 := by positivity
    nlinarith
  have hr0 : (0 : ℝ) ≤ D.rH := by exact_mod_cast G.rH0
  exact (Real.lt_sqrt hr0).mpr hsum

/-- `⟨T_k, T_l⟩ = Ĝ_T(k, l) / DT²`. -/
lemma ip_T {D : BData} {Th : ℕ → I6 → I6 → ℤ} (G : GFacts D Th) {C : RecordCert}
    (hT : ∀ (k : Fin 4) a b, C.T k a b = (Th k a b : ℝ) / D.DT) (k l : Fin 4) :
    ip (C.T k) (C.T l) = (D.GT.getD (4 * k.val + l.val) 0 : ℝ) / (D.DT : ℝ) ^ 2 := by
  rw [G.GT k l, z6_cast]
  simp only [ip, hT, z6_cast, Finset.sum_div]
  push_cast
  exact Finset.sum_congr rfl fun a _ => Finset.sum_congr rfl fun b _ => by ring

/-- **Inside the inner shell**: `‖Tη‖² < R² − n²` on the box. -/
lemma inner {D : BData} {Th : ℕ → I6 → I6 → ℤ} (G : GFacts D Th) {C : RecordCert}
    (hT : ∀ (k : Fin 4) a b, C.T k a b = (Th k a b : ℝ) / D.DT) (hlam : C.lam ≤ D.lam) (hR : C.R = D.R)
    (hn : C.n ≤ D.nbar) (hn0 : 0 ≤ C.n) {d : ℕ} {a b c e : ℤ} (hpos : 0 < D.Phi.getD d 0)
    (hlt : qf4 D.GT (v4 a b c e) < ((D.Phi.getD d 0 : ℕ) : ℤ)) {η : Fin 4 → ℝ} (hη : BInBox D d (v4 a b c e) η) :
    sumsq (∑ k, η k • C.T k) < C.R ^ 2 - C.n ^ 2 := by
  have hd : d < D.Phi.length := getD_pos hpos.ne'
  obtain hz | ⟨hc1, hc2⟩ := G.Phi d hd
  · omega
  have hW := W_pos G
  have hp : (0 : ℝ) < 2 ^ d := by positivity
  have hDT : (0 : ℝ) < D.DT := by exact_mod_cast G.DT
  have hs0 : (0 : ℝ) ≤ D.slam := by exact_mod_cast G.slam0
  have hlam' : C.lam ≤ (D.slam : ℝ) ^ 2 := hlam.trans (by exact_mod_cast G.slam)
  set m := v4 a b c e
  set h := (D.W : ℝ) / 2 ^ d
  set u := ∑ k, cen D d m k • C.T k
  set v := ∑ k, (η k - cen D d m k) • C.T k
  have hc1' : 2 * (D.slam : ℝ) * h ≤ D.sq := by
    have := (Rat.cast_le (K := ℝ)).mpr hc1; push_cast at this; exact this
  have hc2' : ((D.Phi.getD d 0 : ℕ) : ℝ) * ((D.W : ℝ) / (2 ^ d * D.DT)) ^ 2 ≤ ((D.sq : ℝ) - 2 * D.slam * h) ^ 2 := by
    have := (Rat.cast_le (K := ℝ)).mpr hc2; push_cast at this; exact this
  -- the centre part
  have hu : sumsq u = ((D.W : ℝ) / (2 ^ d * D.DT)) ^ 2 * (qf4 D.GT m : ℝ) := by
    rw [sumsq_lin]
    simp only [ip_T G hT, qf4, f4_cast, Int.cast_mul]
    rw [Finset.mul_sum]
    refine Finset.sum_congr rfl fun k _ => ?_
    rw [Finset.mul_sum, Finset.mul_sum]
    refine Finset.sum_congr rfl fun l _ => ?_
    simp only [cen]
    field_simp
  have hq : (qf4 D.GT m : ℝ) < ((D.Phi.getD d 0 : ℕ) : ℝ) := by exact_mod_cast hlt
  have hfu : frob u < D.sq - 2 * D.slam * h := by
    apply frob_lt_of_sumsq (by linarith)
    rw [hu]
    have hk : (0 : ℝ) < ((D.W : ℝ) / (2 ^ d * D.DT)) ^ 2 := by positivity
    nlinarith
  have hfv : frob v ≤ 2 * D.slam * h := frob_dev hη C hs0 hlam'
  have hf : frob (∑ k, η k • C.T k) < D.sq := by
    rw [sum_cen_dev D d m η C.T]
    linarith [frob_add_le u v]
  have hsq : sumsq (∑ k, η k • C.T k) < (D.sq : ℝ) ^ 2 := by
    rw [sumsq_eq_frob_sq]
    exact pow_lt_pow_left₀ hf (frob_nonneg _) two_ne_zero
  have hs : ((D.sq : ℝ)) ^ 2 ≤ (D.R : ℝ) ^ 2 - (D.nbar : ℝ) ^ 2 := by
    have := (Rat.cast_le (K := ℝ)).mpr G.sq; push_cast at this; exact this
  have hnn : C.n ^ 2 ≤ (D.nbar : ℝ) ^ 2 := pow_le_pow_left₀ hn0 hn 2
  rw [hR]; linarith

/-! ### The transfer test -/

lemma tZ_zero (Th : ℕ → I6 → I6 → ℤ) (t : BTgt) : tZ Th t 0 = mg t.Y := rfl
lemma tZ_succ (Th : ℕ → I6 → I6 → ℤ) (t : BTgt) (k : Fin 4) : tZ Th t k.succ = t.actZ (Th k) := by
  simp [tZ, Fin.val_succ]

lemma sp_act {t : BTgt} (h1 : permChk t.rp t.rpi = true) (h2 : permChk t.cp t.cpi = true) (Y : RMat6) (i j : I6) :
    t.sp.act Y i j = (if t.cj then -1 else 1) *
      (if t.tr then Y (pf t.cp j) (pf t.rp i) else Y (pf t.rp i) (pf t.cp j)) := by
  simp only [SignedPerm.act, SignedPerm.sgn, BTgt.sp, Matrix.of_apply, mkPerm_apply h1, mkPerm_apply h2]
  by_cases ht : t.tr = true <;> by_cases hc : t.cj = true <;> simp [ht, hc, Matrix.transpose_apply]

lemma sqrt_le_half (S : ℝ) (hS : 0 ≤ S) : Real.sqrt S ≤ (S + 1) / 2 := by
  nlinarith [Real.sq_sqrt hS, sq_nonneg (Real.sqrt S - 1)]

/-- **The transfer test**: on the box, `‖h(A P + 2πN − P_t) + h(A Tη)‖ + n < R_t`. -/
lemma transfer_ok {D : BData} {pq : I6 → I6 → ℚ} {Th : ℕ → I6 → I6 → ℤ} (G : GFacts D Th) {t : BTgt}
    (F : TFacts D pq Th t) {C : RecordCert} (hP : C.P = Pmat pq)
    (hT : ∀ (k : Fin 4) a b, C.T k a b = (Th k a b : ℝ) / D.DT) (hlam : C.lam ≤ D.lam) (hn : C.n ≤ D.nbar)
    {Ptj : RMat6} (hPt : Ptj = Pmat t.pt) {Rtj : ℝ} (hRt : (t.Rt : ℝ) ≤ Rtj) {d : ℕ} {a b c e : ℤ}
    (hpos : 0 < t.Th.getD d 0) (hlt : qf5 t.G (D.wv d a b c e) < ((t.Th.getD d 0 : ℕ) : ℤ))
    {η : Fin 4 → ℝ} (hη : BInBox D d (v4 a b c e) η) :
    frob (hor (t.sp.act C.P + (2 * Real.pi) • t.wind.map (Int.cast : ℤ → ℝ) - Ptj) +
      hor (t.sp.act (∑ k, η k • C.T k))) + C.n < Rtj := by
  have hd : d < t.Th.length := getD_pos hpos.ne'
  obtain hz | ⟨hD0, hDk⟩ := F.Th d hd
  · omega
  have hW := W_pos G
  have hp : (0 : ℝ) < 2 ^ d := by positivity
  have hDT : (0 : ℝ) < D.DT := by exact_mod_cast G.DT
  have hL : (0 : ℝ) < D.L := by exact_mod_cast G.L
  have hWd : (0 : ℝ) < D.Wd := by exact_mod_cast G.Wd
  have hs0 : (0 : ℝ) ≤ D.slam := by exact_mod_cast G.slam0
  have hlam' : C.lam ≤ (D.slam : ℝ) ^ 2 := hlam.trans (by exact_mod_cast G.slam)
  set m := v4 a b c e
  set h := (D.W : ℝ) / 2 ^ d
  set Nr : RMat6 := t.wind.map (Int.cast : ℤ → ℝ)
  set u := ∑ k, cen D d m k • C.T k
  set v := ∑ k, (η k - cen D d m k) • C.T k
  set E : RMat6 := (2 * (Real.pi - piLo)) • Nr
  set Y0 : RMat6 := Matrix.of fun i j => (mg t.Y i j : ℝ) * (1 / D.L)
  set AT : Fin 4 → RMat6 := fun k => Matrix.of fun i j => (t.actZ (Th k) i j : ℝ) * (1 / D.DT)
  -- the exact pieces
  have hY0 : t.sp.act C.P + (2 * Real.pi) • Nr - Ptj = Y0 + E := by
    ext i j
    have hc := congrArg (Rat.cast : ℚ → ℝ) (F.Y i j)
    by_cases hcj : t.cj = true <;> by_cases htr : t.tr = true <;>
      simp [hcj, htr, BTgt.actQ, Y0, E, Nr, hP, hPt, Pmat, BTgt.wind, sp_act F.rp F.cp] at hc ⊢ <;>
      rw [hc] <;> field_simp <;> ring
  have hAT : ∀ k, t.sp.act (C.T k) = AT k := by
    intro k; ext i j
    by_cases hcj : t.cj = true <;> by_cases htr : t.tr = true <;>
      simp [hcj, htr, AT, sp_act F.rp F.cp, hT, BTgt.actZ, BTgt.sgnZ] <;> ring
  have hAu : hor (t.sp.act u) = ∑ k, cen D d m k • hor (AT k) := by
    simp only [u, act_sum4, act_smul, hAT, hor_sum4, hor_smul]
  -- the centre part as a combination of the five integer matrices
  set Hm : Fin 5 → RMat6 := fun x => Matrix.of fun i j => (hor36 (tZ Th t x) i j : ℝ)
  set κ : ℝ := (D.kap d : ℝ)
  have hκ : 0 < κ := by
    have : (0 : ℚ) < D.kap d := by
      unfold BData.kap; have := G.L; have := G.Wd; have := G.DT; positivity
    show (0 : ℝ) < ((D.kap d : ℚ) : ℝ)
    exact_mod_cast this
  set coef : Fin 5 → ℝ := fun x => (D.wv d a b c e x : ℝ) / κ
  set x := hor Y0 + hor (t.sp.act u)
  have hx : x = ∑ y, coef y • Hm y := by
    simp only [x, hAu, Y0, AT, hor_ofInt]
    ext i j
    simp only [Matrix.add_apply, Matrix.sum_apply, Matrix.smul_apply, Matrix.of_apply, smul_eq_mul,
      Fin.sum_univ_four, Fin.sum_univ_five, Hm, coef, κ, BData.kap, BData.wv, cen, m, v4]
    have e1 : tZ Th t 1 = t.actZ (Th 0) := tZ_succ Th t 0
    have e2 : tZ Th t 2 = t.actZ (Th 1) := tZ_succ Th t 1
    have e3 : tZ Th t 3 = t.actZ (Th 2) := tZ_succ Th t 2
    have e4 : tZ Th t 4 = t.actZ (Th 3) := tZ_succ Th t 3
    rw [tZ_zero, e1, e2, e3, e4]
    simp only [Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_three,
      Matrix.cons_val_four, Matrix.head_cons, Matrix.tail_cons, Fin.isValue, Fin.val_zero, Fin.val_one,
      Fin.val_two]
    simp only [BData.W, show ((3 : Fin 4) : ℕ) = 3 from rfl]
    push_cast
    field_simp
    ring
  have hGx : ∀ y z : Fin 5, ip (Hm y) (Hm z) = (t.G.getD (5 * y.val + z.val) 0 : ℝ) := by
    intro y z
    rw [F.G y z, z6_cast]
    simp only [ip, Hm, Matrix.of_apply, z6_cast]
    push_cast
    rfl
  have hsx : sumsq x = (qf5 t.G (D.wv d a b c e) : ℝ) / κ ^ 2 := by
    rw [hx, sumsq_lin]
    simp only [hGx, qf5, f5_cast, Int.cast_mul, Finset.sum_div]
    refine Finset.sum_congr rfl fun y _ => ?_
    rw [Finset.mul_sum, Finset.sum_div]
    refine Finset.sum_congr rfl fun z _ => ?_
    simp only [coef]
    field_simp
  -- the bound on the centre part
  have hq : (qf5 t.G (D.wv d a b c e) : ℝ) < ((t.Th.getD d 0 : ℕ) : ℝ) := by exact_mod_cast hlt
  have hDk' : ((t.Th.getD d 0 : ℕ) : ℝ) ≤ (κ * (D.tD t d : ℝ)) ^ 2 := by
    have := (Rat.cast_le (K := ℝ)).mpr hDk; push_cast at this; exact this
  have hD0' : (0 : ℝ) ≤ (D.tD t d : ℝ) := by exact_mod_cast hD0
  have hfx : frob x < D.tD t d := by
    apply frob_lt_of_sumsq hD0'
    rw [hsx, div_lt_iff₀ (by positivity)]
    nlinarith
  -- the winding error
  have hfE : frob (hor E) ≤ 1 / 10 ^ 20 * ((t.nn : ℝ) + 1) := by
    refine (frob_hor_le E).trans ?_
    have hpi1 := piLo_le_pi
    have hpi2 : Real.pi - piLo ≤ 1 / 10 ^ 20 := by
      have := Real.pi_lt_d20; unfold piLo; push_cast; norm_num at this ⊢; linarith
    have hS : sumsq Nr = (t.nn : ℝ) := by
      simp only [BTgt.nn, z6_cast, sumsq, Nr, Matrix.map_apply, BTgt.wind]
      push_cast; rfl
    have hS0 : (0 : ℝ) ≤ t.nn := by rw [← hS]; exact sumsq_nonneg _
    rw [frob_smul, frob_eq_sqrt Nr, hS, abs_of_nonneg (by linarith)]
    have := sqrt_le_half _ hS0
    have h0 := Real.sqrt_nonneg (t.nn : ℝ)
    nlinarith
  -- the off-centre part
  have hfv : frob (hor (t.sp.act v)) ≤ 2 * D.slam * h :=
    (frob_hor_le _).trans ((SignedPerm.frob_act t.sp v).le.trans (frob_dev hη C hs0 hlam'))
  -- assemble
  have hsplit : hor (t.sp.act C.P + (2 * Real.pi) • Nr - Ptj) + hor (t.sp.act (∑ k, η k • C.T k)) =
      x + hor E + hor (t.sp.act v) := by
    rw [hY0, sum_cen_dev D d m η C.T, SignedPerm.act_add, hor_add, hor_add]
    simp only [x]; abel
  have htD : ((D.tD t d : ℚ) : ℝ) = t.Rt - D.nbar - 2 * D.slam * h - 1 / 10 ^ 20 * ((t.nn : ℝ) + 1) := by
    simp only [BData.tD, h]; push_cast; ring
  rw [hsplit]
  have h1 := frob_add_le (x + hor E) (hor (t.sp.act v))
  have h2 := frob_add_le x (hor E)
  linarith

/-! ### The tree -/

/-- `η` lies in the boundary shell of the Record. -/
def Shell (C : RecordCert) (η : Fin 4 → ℝ) : Prop :=
  Real.sqrt (∑ k, η k ^ 2) ≤ C.rH ∧ C.R ^ 2 - C.n ^ 2 ≤ sumsq (∑ k, η k • C.T k)

/-- `η` transfers into some target. -/
def Good (D : BData) (C : RecordCert) (Pt : ℕ → RMat6) (Rt : ℕ → ℝ) (η : Fin 4 → ℝ) : Prop :=
  ∃ j t, D.tg[j]? = some t ∧
    frob (hor (t.sp.act C.P + (2 * Real.pi) • t.wind.map (Int.cast : ℤ → ℝ) - Pt j) +
      hor (t.sp.act (∑ k, η k • C.T k))) + C.n < Rt j

lemma bkids_some {g : ℤ → ℤ → ℤ → ℤ → ℕ → Option ℕ} {a b c e : ℤ} :
    ∀ {os : List (ℤ × ℤ × ℤ × ℤ)} {s s' : ℕ}, bkids g a b c e os s = some s' →
      ∀ o ∈ os, ∃ s1 s2, g (2 * a + o.1) (2 * b + o.2.1) (2 * c + o.2.2.1) (2 * e + o.2.2.2) s1 = some s2
  | [], _, _, _ => by simp
  | o :: os, s, s', h => by
    simp only [bkids] at h
    split at h
    · rename_i s'' hg
      intro o' ho'
      rcases List.mem_cons.mp ho' with rfl | ho'
      · exact ⟨s, s'', hg⟩
      · exact bkids_some h o' ho'
    · exact absurd h (by simp)

lemma coord_child {W p x : ℝ} {m : ℤ} (_hW : 0 ≤ W) (h : |p * x - W * m| ≤ W) :
    ∃ σ : ℤ, (σ = -1 ∨ σ = 1) ∧ |(2 * p) * x - W * ((2 * m + σ : ℤ) : ℝ)| ≤ W := by
  obtain ⟨h1, h2⟩ := abs_le.mp h
  by_cases hc : W * m ≤ p * x
  · refine ⟨1, Or.inr rfl, abs_le.mpr ⟨?_, ?_⟩⟩ <;> push_cast <;> nlinarith
  · refine ⟨-1, Or.inl rfl, abs_le.mpr ⟨?_, ?_⟩⟩ <;> push_cast <;> nlinarith

lemma mem_offs {s0 s1 s2 s3 : ℤ} (h0 : s0 = -1 ∨ s0 = 1) (h1 : s1 = -1 ∨ s1 = 1) (h2 : s2 = -1 ∨ s2 = 1)
    (h3 : s3 = -1 ∨ s3 = 1) : (s0, s1, s2, s3) ∈ offs := by
  rcases h0 with rfl | rfl <;> rcases h1 with rfl | rfl <;> rcases h2 with rfl | rfl <;>
    rcases h3 with rfl | rfl <;> decide

/-- The 16 children cover the box. -/
lemma child_cover {D : BData} {Th : ℕ → I6 → I6 → ℤ} (G : GFacts D Th) {d : ℕ} {a b c e : ℤ}
    {η : Fin 4 → ℝ} (h : BInBox D d (v4 a b c e) η) :
    ∃ o ∈ offs, BInBox D (d + 1) (v4 (2 * a + o.1) (2 * b + o.2.1) (2 * c + o.2.2.1) (2 * e + o.2.2.2)) η := by
  have hW := (W_pos G).le
  have h0 := h 0
  have h1 := h 1
  have h2 := h 2
  have h3 := h 3
  simp only [v4, Matrix.cons_val_zero, Matrix.cons_val_one, Matrix.cons_val_two, Matrix.cons_val_three,
    Matrix.head_cons, Matrix.tail_cons] at h0 h1 h2 h3
  obtain ⟨s0, hs0, k0⟩ := coord_child hW h0
  obtain ⟨s1, hs1, k1⟩ := coord_child hW h1
  obtain ⟨s2, hs2, k2⟩ := coord_child hW h2
  obtain ⟨s3, hs3, k3⟩ := coord_child hW h3
  push_cast at k0 k1 k2 k3
  refine ⟨(s0, s1, s2, s3), mem_offs hs0 hs1 hs2 hs3, fun k => ?_⟩
  rw [pow_succ, mul_comm ((2 : ℝ) ^ d) 2]
  fin_cases k <;> simp [v4] <;> assumption

section Sound

variable {D : BData} {pq : I6 → I6 → ℚ} {Th : ℕ → I6 → I6 → ℤ} {C : RecordCert} {Pt : ℕ → RMat6} {Rt : ℕ → ℝ}

/-- **The tree check is sound**: every shell point of a checked box transfers into some target. -/
theorem walk_sound (G : GFacts D Th) (ht : D.tg.all (tOK D pq Th) = true) (hP : C.P = Pmat pq)
    (hT : ∀ (k : Fin 4) a b, C.T k a b = (Th k a b : ℝ) / D.DT) (hlam : C.lam ≤ D.lam) (hR : C.R = D.R)
    (hrH : C.rH = D.rH) (hn : C.n ≤ D.nbar) (hn0 : 0 ≤ C.n)
    (htP : ∀ j t, D.tg[j]? = some t → Pt j = Pmat t.pt) (htR : ∀ j t, D.tg[j]? = some t → (t.Rt : ℝ) ≤ Rt j) :
    ∀ f d a b c e s s', walk D f d a b c e s = some s' →
      ∀ η, BInBox D d (v4 a b c e) η → Shell C η → Good D C Pt Rt η := by
  intro f
  induction f with
  | zero => intro d a b c e s s' h; simp [walk] at h
  | succ f ih =>
    intro d a b c e s s' h η hη hs
    simp only [walk] at h
    by_cases h0 : s % D.base = 0
    · rw [if_pos h0] at h
      by_cases hoff : offOK D d a b c e = true
      · exfalso
        simp only [offOK, Bool.or_eq_true, Bool.and_eq_true, decide_eq_true_eq] at hoff
        rcases hoff with ⟨hd, hlt⟩ | ⟨hpos, hlt⟩
        · have := offball G hd hlt hη
          rw [← hrH] at this; linarith [hs.1]
        · have := inner G hT hlam hR hn hn0 hpos hlt hη
          linarith [hs.2]
      · rw [if_neg hoff] at h; exact absurd h (by simp)
    rw [if_neg h0] at h
    by_cases h1 : s % D.base = 1
    · rw [if_pos h1] at h
      obtain ⟨o, ho, hc⟩ := child_cover G hη
      obtain ⟨s1, s2, hw⟩ := bkids_some h o ho
      exact ih _ _ _ _ _ s1 s2 hw η hc hs
    rw [if_neg h1] at h
    by_cases htr : trOK D (s % D.base - 2) d a b c e = true
    · simp only [trOK] at htr
      split at htr
      · exact absurd htr (by simp)
      · rename_i t hj
        simp only [Bool.and_eq_true, decide_eq_true_eq] at htr
        exact ⟨_, t, hj, transfer_ok G (tOK_of_mem ht hj) hP hT hlam hn (htP _ t hj) (htR _ t hj) htr.1 htr.2 hη⟩
    · rw [if_neg htr] at h; exact absurd h (by simp)

/-- **The boundary cover, pointwise**: from the three kernel checks, every shell point of a Record whose data
match `D` transfers into some target. -/
theorem cover_sound (hg : gOK D Th = true) (ht : D.tg.all (tOK D pq Th) = true)
    (hw : walk D D.fuel 0 0 0 0 0 D.code = some 0) (hP : C.P = Pmat pq)
    (hT : ∀ (k : Fin 4) a b, C.T k a b = (Th k a b : ℝ) / D.DT) (hlam : C.lam ≤ D.lam) (hR : C.R = D.R)
    (hrH : C.rH = D.rH) (hn : C.n ≤ D.nbar) (hn0 : 0 ≤ C.n)
    (htP : ∀ j t, D.tg[j]? = some t → Pt j = Pmat t.pt) (htR : ∀ j t, D.tg[j]? = some t → (t.Rt : ℝ) ≤ Rt j)
    (η : Fin 4 → ℝ) (hs : Shell C η) : Good D C Pt Rt η := by
  have G := gOK_facts hg
  refine walk_sound G ht hP hT hlam hR hrH hn hn0 htP htR _ _ _ _ _ _ _ _ hw η (fun k => ?_) hs
  have hrW : (D.rH : ℝ) ≤ D.W := by exact_mod_cast G.rHW
  have hk : |η k| ≤ Real.sqrt (∑ k, η k ^ 2) :=
    Real.abs_le_sqrt (Finset.single_le_sum (f := fun k => η k ^ 2) (fun _ _ => sq_nonneg _) (Finset.mem_univ k))
  have := hs.1
  rw [hrH] at this
  have h0 : v4 0 0 0 0 k = 0 := by fin_cases k <;> rfl
  simp only [pow_zero, one_mul, h0, Int.cast_zero, mul_zero, sub_zero]
  linarith

end Sound

/-- **A `BoundaryCover` from the pointwise cover.** One box per target: the set where its transfer
inequality holds. -/
noncomputable def coverOf {ι : Type*} (A : ι → RecordCert) (l : ι) (D : BData) (tg : ℕ → ι)
    (hc : ∀ η, Shell (A l) η → Good D (A l) (fun j => (A (tg j)).P) (fun j => (A (tg j)).R) η) :
    BoundaryCover A l where
  β := Fin D.tg.length
  box b := {η | frob (hor ((D.tg.get b).sp.act (A l).P +
      (2 * Real.pi) • (D.tg.get b).wind.map (Int.cast : ℤ → ℝ) - (A (tg b)).P) +
      hor ((D.tg.get b).sp.act (∑ k, η k • (A l).T k))) + (A l).n < (A (tg b)).R}
  tgt b := tg b
  perm b := (D.tg.get b).sp
  wind b := (D.tg.get b).wind
  hcover η h1 h2 := by
    obtain ⟨j, t, hj, hlt⟩ := hc η ⟨h1, h2⟩
    obtain ⟨hjl, hjt⟩ := List.getElem?_eq_some_iff.mp hj
    refine ⟨⟨j, hjl⟩, ?_⟩
    have e : D.tg.get ⟨j, hjl⟩ = t := hjt
    simp only [Set.mem_ofPred_eq, e]
    exact hlt
  htransfer _ _ h := h

/-! ### Records built by `recordK` -/

/-- The integer frame `T̂ = DT·T` of a `TCfg`. -/
def tcTh (tc : TCfg) : ℕ → I6 → I6 → ℤ := fun k j i => (tc.Tp k j i : ℤ) - tc.OT

/-- The boundary data carry the Record's own constants. -/
def bdMatch (D : BData) (fq : FrameQ) (B : BarsQ) (tq : TParQ) : Bool :=
  decide (D.R = B.R) && decide (D.rH = fq.g * B.R) && decide (D.lam = fq.lam) && decide (D.nbar = B.nbar fq) &&
  decide (D.DT = tq.DT)

/-- The normal bound of a `recordK` Record: `0 ≤ n ≤ n̄`. -/
lemma nroot_bars {fq : FrameQ} {B : BarsQ} {pq : ParQ} {tq : TParQ} {F : QFrame} (hF : frameOK F fq = true)
    (hB : barsOK B fq pq tq = true) :
    0 ≤ nroot B.sigma (B.e0 + B.j1 * (fq.g * B.R) + Real.sqrt 3 * fq.lam * (fq.g * B.R) ^ 2) ∧
      nroot B.sigma (B.e0 + B.j1 * (fq.g * B.R) + Real.sqrt 3 * fq.lam * (fq.g * B.R) ^ 2) ≤ (B.nbar fq : ℝ) := by
  obtain ⟨hR0, hσ0, -, he0, hj0, hslo, hD, -⟩ := barsOK_parts hB
  obtain ⟨-, -, -, hG0, -, -, hg0, hl, -, -⟩ := frameOK_parts hF
  have hR0' : (0 : ℝ) ≤ B.R := by exact_mod_cast hR0
  have hg0' : (0 : ℝ) ≤ fq.g := by exact_mod_cast hg0
  have hl0q : (0 : ℚ) ≤ fq.lam := by linarith
  have hl0' : (0 : ℝ) ≤ fq.lam := by exact_mod_cast hl0q
  have he0' : (0 : ℝ) ≤ B.e0 := by exact_mod_cast he0
  have hj0' : (0 : ℝ) ≤ B.j1 := by exact_mod_cast hj0
  have hgR : (0 : ℝ) ≤ fq.g * B.R := mul_nonneg hg0' hR0'
  set b : ℝ := B.e0 + B.j1 * (fq.g * B.R) + Real.sqrt 3 * fq.lam * (fq.g * B.R) ^ 2 with hbdef
  have hb0 : 0 ≤ b := by positivity
  have hbb : b ≤ (B.bbar fq : ℝ) := by
    simp only [BarsQ.bbar, BarsQ.gR]; push_cast
    have := mul_le_mul_of_nonneg_right sqrt3_le_s3hi (mul_nonneg hl0' (sq_nonneg (fq.g * B.R : ℝ)))
    nlinarith
  have hD' : (B.slo : ℝ) ^ 2 ≤ (B.sigma : ℝ) ^ 2 - 4 * s3hi * (B.bbar fq : ℝ) := by exact_mod_cast hD
  have hσ' : (0 : ℝ) < B.sigma := by exact_mod_cast hσ0
  have hslo' : (0 : ℝ) ≤ B.slo := by exact_mod_cast hslo
  refine ⟨?_, by simpa [BarsQ.nbar] using nroot_le hb0 hbb sqrt3_le_s3hi hslo' hD' hσ'⟩
  unfold nroot
  apply div_nonneg _ (by positivity)
  rw [sub_nonneg]
  calc Real.sqrt ((B.sigma : ℝ) ^ 2 - 2 * (2 * Real.sqrt 3) * b) ≤ Real.sqrt ((B.sigma : ℝ) ^ 2) :=
        Real.sqrt_le_sqrt (by have : 0 < Real.sqrt 3 := Real.sqrt_pos.mpr (by norm_num); nlinarith)
    _ = B.sigma := Real.sqrt_sq hσ'.le

/-- **The boundary cover of a kernel-certified Record** (`recordK`), from the three kernel checks and the
match of the data with the Record's constants, for any atlas `A` with `A l` that Record and targets `A (tg j)` with
the centres and radii of the data. -/
theorem boundaryK {ι : Type*} {A : ι → RecordCert} {l : ι} {tb tbN : Tab} {tc : TCfg} {fq : FrameQ} {S : SigQ}
    {B : BarsQ} {pq : ParQ} {tq : TParQ} {hPq : tbN.pq = tb.pq} {hF : frameOK (frameOf tc tq) fq = true}
    {hS : sigmaOK tbN (frameOf tc tq) S B.sigma = true} {he : e0OK tbN B.e0 = true}
    {hj : j1OK tbN (frameOf tc tq) B.j1 = true} {hB : barsOK B fq pq tq = true}
    {SC : ∀ {rH n r rF K : ℝ}, 0 ≤ K →
      (∀ z, StageC.cnorm (StageC.Qop ((1 / (2 * Real.pi)) • Pmat tb.pq) z) ≤ K * StageC.cnorm z) →
      K ≤ pq.Kbar → r ≤ pq.rbar → rF ≤ pq.rFbar → rH ≤ tq.rHbar → n ≤ tq.nbar →
      StageC.StageCCert ((1 / (2 * Real.pi)) • Pmat tb.pq) (frameOf tc tq).toR rH n r rF}
    (hl : A l = recordK hPq hF hS he hj hB SC)
    {D : BData} (hg : gOK D (tcTh tc) = true) (ht : D.tg.all (tOK D tb.pq (tcTh tc)) = true)
    (hw : walk D D.fuel 0 0 0 0 0 D.code = some 0) (hm : bdMatch D fq B tq = true) (tg : ℕ → ι)
    (htP : ∀ j t, D.tg[j]? = some t → (A (tg j)).P = Pmat t.pt)
    (htR : ∀ j t, D.tg[j]? = some t → (t.Rt : ℝ) ≤ (A (tg j)).R) : Nonempty (BoundaryCover A l) := by
  simp only [bdMatch, Bool.and_eq_true, decide_eq_true_eq] at hm
  obtain ⟨⟨⟨⟨hmR, hmrH⟩, hmlam⟩, hmn⟩, hmDT⟩ := hm
  obtain ⟨hn0, hn⟩ := nroot_bars hF hB
  refine ⟨coverOf A l D tg fun η hs => ?_⟩
  rw [hl] at hs ⊢
  refine cover_sound (C := recordK hPq hF hS he hj hB SC) hg ht hw rfl (fun k a b => ?_) ?_ ?_ ?_ ?_ hn0 htP htR η hs
  · show (((frameOf tc tq) k a b : ℚ) : ℝ) = _
    simp only [frameOf, tcTh, hmDT]; push_cast; rfl
  · show (fq.lam : ℝ) ≤ D.lam; rw [hmlam]
  · show (B.R : ℝ) = D.R; rw [hmR]
  · show (fq.g : ℝ) * B.R = D.rH; rw [hmrH]; push_cast; ring
  · rw [hmn]; exact hn

end NoFourMUBs.KernelAtlas
