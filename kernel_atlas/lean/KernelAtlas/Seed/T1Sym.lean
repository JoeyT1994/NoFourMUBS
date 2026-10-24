import KernelAtlas.Seed.T0
import NoFourMUBs.SeedAtlas.Transfer

/-!
# T1 at a reordering of the seed corner ("corner symmetry", FORMAT §4 "Remark for certifiers")

A T1 transfer of seed ball `j` into seed ball `l` with `g ∈ {id, conj, T, conjT}` (`k = 0, 1, 2, 3`, `gfun`) and
ordered corner `I = (p 0, p 1, p 2)`, `J = (q 0, q 1, q 2)`, both orderings of `(0, 1, 2)`
(`σ = p ⊕ 1`, `τ = q ⊕ 1` on `I6 = I3 ⊕ I3`).  For a matched completion `K` at `θ` (dephased, leading block `E(θ)`):
* **the corner seed** of `g · K` at `(σ, τ)` is `θ' = L θ` exactly, `L` an integer `4 × 4` matrix of `(k, I, J)`
  (`symL`; the corner block of the phases is `(0, 0, 0; 0, θ₁, θ₂; 0, θ₃, θ₄)`, `g` negates and/or transposes it);
* **the orientation**: `Ψ` is invariant under row and column permutations and transposition, and conjugation
  conjugates it (`psi_submatrix`, `psi_transpose`, `psi_map_conj`), so the two side signs of `g · K` at the corner
  are those of `K` (`k = 0, 3`: orientation `o_j`) or their negatives (`k = 1, 2`: `−o_j`).
So the claim reduces to T0's exact test for the virtual source ball `symBall` (`θ₀ ↦ L θ₀`, `M_θ ↦ L M_θ`,
orientation `±o_j`): `t1sym_sound` gives `CornerIn` from `t0OK (symBall k I J D_j) D_l I_l N b`.  No Taylor model.
-/

open Complex Matrix Hadamard6 NoFourMUBs.Step2 NoFourMUBs.SeedAtlas
open scoped ComplexConjugate

namespace NoFourMUBs.KernelAtlas.Seed

/-! ### `Ψ` under permutations, transposition and conjugation -/

lemma permanent3_eq (X : Mat3) : permanent3 X = X.permanent := by
  rw [← Matrix.permanent_transpose]; rfl

lemma submatrix_split (X : Mat3) (p q : Equiv.Perm I3) : X.submatrix p q = (X.submatrix p id).submatrix id q := by
  ext i j; rfl

lemma sign_sq (u : ℤˣ) : (((u : ℤ) : ℂ)) ^ 2 = 1 := by
  rcases Int.units_eq_one_or u with h | h <;> simp [h]

lemma psi_submatrix (X : Mat3) (p q : Equiv.Perm I3) : psi (X.submatrix p q) = psi X := by
  unfold psi
  have hperm : permanent3 (X.submatrix p q) = permanent3 X := by
    rw [permanent3_eq, permanent3_eq, submatrix_split, Matrix.permanent_permute_rows, Matrix.permanent_permute_cols]
  have hdet : (X.submatrix p q).det ^ 2 = X.det ^ 2 := by
    rw [submatrix_split, Matrix.det_permute', Matrix.det_permute, mul_pow, mul_pow, sign_sq, sign_sq, one_mul,
      one_mul]
  have hprod : ∏ i, ∏ j, star (X.submatrix p q i j) = ∏ i, ∏ j, star (X i j) := by
    simp only [Matrix.submatrix_apply]
    rw [Fintype.prod_equiv p (fun i => ∏ j, star (X (p i) (q j))) (fun i => ∏ j, star (X i (q j))) (fun i => rfl)]
    exact Finset.prod_congr rfl fun i _ => Fintype.prod_equiv q _ _ (fun j => rfl)
  rw [hperm, hdet, hprod]

lemma psi_transpose (X : Mat3) : psi Xᵀ = psi X := by
  unfold psi
  rw [permanent3_eq, permanent3_eq, Matrix.permanent_transpose, Matrix.det_transpose]
  congr 1
  simp only [Matrix.transpose_apply]
  exact Finset.prod_comm

lemma psi_map_conj (X : Mat3) : psi (X.map (starRingEnd ℂ)) = conj (psi X) := by
  unfold psi
  have hperm : permanent3 (X.map (starRingEnd ℂ)) = conj (permanent3 X) := by
    simp only [permanent3, map_sum, map_prod, Matrix.map_apply]
  have hdet : (X.map (starRingEnd ℂ)).det = conj X.det := by
    rw [RingHom.map_det]; rfl
  rw [hperm, hdet]
  simp only [map_mul, map_pow, map_prod, Matrix.map_apply, Complex.star_def]

/-! ### The corner blocks of `g · K` at a reordered seed corner -/

/-- `σ = p ⊕ 1`. -/
def symPerm (p : Equiv.Perm I3) : Equiv.Perm I6 := Equiv.sumCongr p 1

lemma symPerm_inl (p : Equiv.Perm I3) (a : I3) : symPerm p (.inl a) = .inl (p a) := rfl
lemma symPerm_inr (p : Equiv.Perm I3) (a : I3) : symPerm p (.inr a) = .inr a := rfl

section Blocks

variable (p q : Equiv.Perm I3) {K : Mat6} (hK : Hadamard6.IsHadamard K)
include hK

/-- `Ψ` of the horizontal side of the corner of `g · K`, for `g = id, conj, T, conjT`. -/
lemma psi_right_sym0 : psi (rightBlock (cornerMat 0 (symPerm p) (symPerm q) K)) = psi (rightBlock K) := by
  rw [psi_rightBlock_cornerMat 0 _ _ hK, ← psi_submatrix (rightBlock K) p 1]; rfl
lemma psi_right_sym1 : psi (rightBlock (cornerMat 1 (symPerm p) (symPerm q) K)) = conj (psi (rightBlock K)) := by
  rw [psi_rightBlock_cornerMat 1 _ _ hK, ← psi_submatrix (rightBlock K) p 1, ← psi_map_conj]; rfl
lemma psi_right_sym2 : psi (rightBlock (cornerMat 2 (symPerm p) (symPerm q) K)) = psi (lowerBlock K) := by
  rw [psi_rightBlock_cornerMat 2 _ _ hK, ← psi_submatrix (lowerBlock K) 1 p, ← psi_transpose]; rfl
lemma psi_right_sym3 : psi (rightBlock (cornerMat 3 (symPerm p) (symPerm q) K)) = conj (psi (lowerBlock K)) := by
  rw [psi_rightBlock_cornerMat 3 _ _ hK, ← psi_submatrix (lowerBlock K) 1 p, ← psi_transpose, ← psi_map_conj]; rfl

/-- `Ψ` of the vertical side of the corner of `g · K`. -/
lemma psi_lower_sym0 : psi (lowerBlock (cornerMat 0 (symPerm p) (symPerm q) K)) = psi (lowerBlock K) := by
  rw [psi_lowerBlock_cornerMat 0 _ _ hK, ← psi_submatrix (lowerBlock K) 1 q]; rfl
lemma psi_lower_sym1 : psi (lowerBlock (cornerMat 1 (symPerm p) (symPerm q) K)) = conj (psi (lowerBlock K)) := by
  rw [psi_lowerBlock_cornerMat 1 _ _ hK, ← psi_submatrix (lowerBlock K) 1 q, ← psi_map_conj]; rfl
lemma psi_lower_sym2 : psi (lowerBlock (cornerMat 2 (symPerm p) (symPerm q) K)) = psi (rightBlock K) := by
  rw [psi_lowerBlock_cornerMat 2 _ _ hK, ← psi_submatrix (rightBlock K) q 1, ← psi_transpose]; rfl
lemma psi_lower_sym3 : psi (lowerBlock (cornerMat 3 (symPerm p) (symPerm q) K)) = conj (psi (rightBlock K)) := by
  rw [psi_lowerBlock_cornerMat 3 _ _ hK, ← psi_submatrix (rightBlock K) q 1, ← psi_transpose, ← psi_map_conj]; rfl

end Blocks

lemma fin4_cases (k : Fin 4) : k = 0 ∨ k = 1 ∨ k = 2 ∨ k = 3 := by fin_cases k <;> simp

/-- The target orientation: `o_j` for `k = 0, 3`, `−o_j` for `k = 1, 2`. -/
def symO (k : ℕ) (o : ℤ) : ℤ := if k = 0 ∨ k = 3 then o else -o

/-- **The side signs of the corner** of `g · K` for a matched `K` with orientation `o`. -/
theorem signs_sym (k : Fin 4) (p q : Equiv.Perm I3) {K : Mat6} (hK : Hadamard6.IsHadamard K) {o o' : ℤˣ}
    (ho : (o' : ℤ) = symO k o) (hB : 0 < osgn o * (psi (rightBlock K)).im)
    (hC : 0 < -osgn o * (psi (lowerBlock K)).im) :
    0 < osgn o' * (psi (rightBlock (cornerMat k (symPerm p) (symPerm q) K))).im ∧
      0 < -osgn o' * (psi (lowerBlock (cornerMat k (symPerm p) (symPerm q) K))).im := by
  have hpos : ((k : ℕ) = 0 ∨ (k : ℕ) = 3) → osgn o' = osgn o := by
    intro hk; unfold osgn; rw [ho, symO, if_pos hk]
  have hneg : ¬((k : ℕ) = 0 ∨ (k : ℕ) = 3) → osgn o' = -osgn o := by
    intro hk; unfold osgn; rw [ho, symO, if_neg hk]; push_cast; rfl
  obtain rfl | rfl | rfl | rfl := fin4_cases k
  · rw [hpos (by decide), psi_right_sym0 p q hK, psi_lower_sym0 p q hK]; exact ⟨hB, hC⟩
  · rw [hneg (by decide), psi_right_sym1 p q hK, psi_lower_sym1 p q hK, Complex.conj_im, Complex.conj_im]
    constructor <;> linarith
  · rw [hneg (by decide), psi_right_sym2 p q hK, psi_lower_sym2 p q hK]
    constructor <;> linarith
  · rw [hpos (by decide), psi_right_sym3 p q hK, psi_lower_sym3 p q hK, Complex.conj_im, Complex.conj_im]
    constructor <;> linarith

/-! ### The corner seed of `g · K` at a reordered seed corner -/

/-- The corner phases `Φ(θ) = (0, 0, 0; 0, θ₀, θ₁; 0, θ₂, θ₃)` of a matched completion. -/
def phi3 (θ : Fin 4 → ℝ) : I3 → I3 → ℝ := fun x y => ![![0, 0, 0], ![0, θ 0, θ 1], ![0, θ 2, θ 3]] x y

lemma seedCorner_phi3 (θ : Fin 4 → ℝ) (x y : I3) :
    seedCorner (seedOf θ) x y = Complex.exp (phi3 θ x y * I) := by
  fin_cases x <;> fin_cases y <;> simp [seedCorner, corner, seedOf, phi3, Circle.coe_exp]

/-- Phases of `K`: `Φ(θ)` on the leading block, `arg` elsewhere. -/
noncomputable def phasesOf (θ : Fin 4 → ℝ) (K : Mat6) : RMat6 := fun i j =>
  match i, j with
  | .inl a, .inl b => phi3 θ a b
  | i, j => Complex.arg (K i j)

lemma exp_arg_of_normSq {z : ℂ} (h : Complex.normSq z = 1) : Complex.exp ((Complex.arg z : ℂ) * I) = z := by
  have hn : ‖z‖ = 1 := by
    rw [Complex.norm_def, h, Real.sqrt_one]
  have := Complex.norm_mul_exp_arg_mul_I z
  rw [hn] at this; simpa using this

lemma phaseMat_phasesOf {θ : Fin 4 → ℝ} {K : Mat6} (hK : Hadamard6.IsHadamard K)
    (hE : leadingBlock K = seedCorner (seedOf θ)) : phaseMat (phasesOf θ K) = K := by
  ext i j
  simp only [phaseMat, Matrix.of_apply]
  rcases i with a | a <;> rcases j with c | c
  · have := congrFun (congrFun hE a) c
    simp only [leadingBlock] at this
    rw [this, seedCorner_phi3]; rfl
  · exact exp_arg_of_normSq (hK.1 _ _)
  · exact exp_arg_of_normSq (hK.1 _ _)
  · exact exp_arg_of_normSq (hK.1 _ _)

/-- The coefficient of `θ_m` in `Φ(θ)_{xy}`. -/
def phiC (x y m : ℕ) : ℤ :=
  if x = 1 ∧ y = 1 ∧ m = 0 then 1 else if x = 1 ∧ y = 2 ∧ m = 1 then 1
  else if x = 2 ∧ y = 1 ∧ m = 2 then 1 else if x = 2 ∧ y = 2 ∧ m = 3 then 1 else 0

/-- The coefficient of `θ_m` in `(g · Φ(θ))_{xy}` (`k = 1, 3` negate, `k = 2, 3` transpose). -/
def gphiC (k x y m : ℕ) : ℤ :=
  (if k = 1 ∨ k = 3 then -1 else 1) * (if k = 2 ∨ k = 3 then phiC y x m else phiC x y m)

/-- **The integer matrix `L`**: `θ'_c = Σ_m L_cm θ_m`, `c ↔ (a, b) = (c/2 + 1, c%2 + 1)`, at the corner `I`, `J`. -/
def symL (k : ℕ) (I J : List ℕ) (c m : ℕ) : ℤ :=
  gphiC k (gn I (c / 2 + 1)) (gn J (c % 2 + 1)) m - gphiC k (gn I (c / 2 + 1)) (gn J 0) m -
    gphiC k (gn I 0) (gn J (c % 2 + 1)) m + gphiC k (gn I 0) (gn J 0) m

lemma phi3_eq (θ : Fin 4 → ℝ) (x y : I3) : phi3 θ x y = ∑ m : Fin 4, (phiC x y m : ℝ) * θ m := by
  fin_cases x <;> fin_cases y <;> simp [phi3, phiC, Fin.sum_univ_four]

lemma gphase_phasesOf (k : Fin 4) (θ : Fin 4 → ℝ) (K : Mat6) (x y : I3) :
    gphase k (phasesOf θ K) (.inl x) (.inl y) = ∑ m : Fin 4, (gphiC k x y m : ℝ) * θ m := by
  obtain rfl | rfl | rfl | rfl := fin4_cases k
  · show phi3 θ x y = _
    rw [phi3_eq]; simp [gphiC]
  · show -phi3 θ x y = _
    rw [phi3_eq]; simp [gphiC, ← Finset.sum_neg_distrib]
  · show phi3 θ y x = _
    rw [phi3_eq]; simp [gphiC]
  · show -phi3 θ y x = _
    rw [phi3_eq]; simp [gphiC, ← Finset.sum_neg_distrib]

/-- **The corner seed is `L θ`.** -/
lemma cornerTheta_sym (k : Fin 4) {p q : Equiv.Perm I3} {I J : List ℕ} (hI : ∀ a : I3, gn I a = p a)
    (hJ : ∀ b : I3, gn J b = q b) (θ : Fin 4 → ℝ) (K : Mat6) (c : Fin 4) :
    cornerTheta (gphase k (phasesOf θ K)) (symPerm p) (symPerm q) c = ∑ m : Fin 4, (symL k I J c m : ℝ) * θ m := by
  have hI0 := hI 0; have hI1 := hI 1; have hI2 := hI 2
  have hJ0 := hJ 0; have hJ1 := hJ 1; have hJ2 := hJ 2
  simp only [Fin.val_zero, Fin.val_one, Fin.val_two] at hI0 hI1 hI2 hJ0 hJ1 hJ2
  fin_cases c <;>
  · simp only [cornerTheta, cornerD, symPerm_inl, gphase_phasesOf, symL, Matrix.cons_val_zero, Matrix.cons_val_one,
      Matrix.cons_val_two, Matrix.cons_val_three, Matrix.head_cons, Matrix.tail_cons, Fin.zero_eta, Fin.mk_one,
      Fin.isValue, Fin.reduceFinMk]
    norm_num [hI0, hI1, hI2, hJ0, hJ1, hJ2]
    simp only [← Finset.sum_sub_distrib, ← Finset.sum_add_distrib]
    refine Finset.sum_congr rfl fun m _ => ?_
    ring

/-! ### The virtual source ball and the soundness -/

/-- The source ball seen through the corner symmetry: `θ₀ ↦ L θ₀`, `M_θ ↦ L M_θ`, orientation `symO k o`. -/
def symBall (k : ℕ) (I J : List ℕ) (D : SeedD) : SeedD where
  B := { th0 := l4 fun c => (l4 fun m => symL k I J c m * gi D.B.th0 m).sum
         Mth := l16 fun e => (l4 fun m => symL k I J (e / 4) m * gi D.B.Mth (4 * m + e % 4)).sum
         P := D.B.P
         U := D.B.U
         n := D.B.n
         o := symO k D.B.o }
  r := D.r
  t := D.t
  lamF := D.lamF

lemma gi_l4 (f : ℕ → ℤ) {j : ℕ} (hj : j < 4) : gi (l4 f) j = f j := by interval_cases j <;> rfl
lemma gi_l16 (f : ℕ → ℤ) {j : ℕ} (hj : j < 16) : gi (l16 f) j = f j := by interval_cases j <;> rfl

lemma symBall_theta (k : ℕ) (I J : List ℕ) (D : SeedD) (w : Fin 4 → ℝ) :
    th0R (symBall k I J D).B + MthR (symBall k I J D).B *ᵥ w =
      fun c : Fin 4 => ∑ m : Fin 4, (symL k I J c m : ℝ) * (th0R D.B + MthR D.B *ᵥ w) m := by
  funext c
  have h1 : gi (symBall k I J D).B.th0 c = (l4 fun m => symL k I J c m * gi D.B.th0 m).sum := by
    dsimp only [symBall]; exact gi_l4 (fun c => (l4 fun m => symL k I J c m * gi D.B.th0 m).sum) c.2
  have h2 : ∀ a : Fin 4, gi (symBall k I J D).B.Mth (4 * c + a) =
      (l4 fun m => symL k I J c m * gi D.B.Mth (4 * m + a)).sum := by
    intro a
    have hq : 4 * (c : ℕ) + a < 16 := by omega
    dsimp only [symBall]
    rw [gi_l16 (fun e => (l4 fun m => symL k I J (e / 4) m * gi D.B.Mth (4 * m + e % 4)).sum) hq]
    have e1 : (4 * (c : ℕ) + a) / 4 = c := by omega
    have e2 : (4 * (c : ℕ) + a) % 4 = a := by omega
    rw [e1, e2]
  simp only [Pi.add_apply, th0R, MthR, rq, Matrix.mulVec, dotProduct, h1, h2, sum_l4Z, Fin.sum_univ_four,
    Fin.val_zero, Fin.val_one, Fin.val_two]
  rw [show ((3 : Fin 4) : ℕ) = 3 from rfl]
  push_cast; ring

/-- **T1 by corner symmetry**: the T0 test of the virtual source ball gives the corner claim of every matched
completion at the box's seeds. -/
theorem t1sym_sound {k : Fin 4} {p q : Equiv.Perm I3} {I J : List ℕ}
    (hI : ∀ a : I3, gn I a = p a) (hJ : ∀ b : I3, gn J b = q b)
    {Dj Dl : SeedD} {Il : InvD} {N : List ℤ} {b : Bx} (hinv : invOK Dl.B Il = true)
    (h : t0OK (symBall k I J Dj) Dl Il N b = true) {oj ol : ℤˣ} (hoj : Dj.B.o = oj) (hol : Dl.B.o = ol)
    {w : Fin 4 → ℝ} (hw : b.Mem (rn Dj.r) w) {K : Mat6} (hK : Hadamard6.IsHadamard K)
    (hm : MatchedO oj (seedOf (th0R Dj.B + MthR Dj.B *ᵥ w)) K)
    (hR : 0 < seedR (seedOf (th0R Dj.B + MthR Dj.B *ᵥ w))) :
    (∃ w' : Fin 4 → ℝ, wnorm w' < rn Dl.r ∧
      leadingBlock (cornerMat k (symPerm p) (symPerm q) K) = seedCorner (seedOf (th0R Dl.B + MthR Dl.B *ᵥ w'))) ∧
    0 < osgn ol * (psi (rightBlock (cornerMat k (symPerm p) (symPerm q) K))).im ∧
    0 < -osgn ol * (psi (lowerBlock (cornerMat k (symPerm p) (symPerm q) K))).im := by
  obtain ⟨ho, hT⟩ := t0_sound hinv h
  obtain ⟨hB, hC⟩ := signs_of_matchedO hR hm
  have ho' : (ol : ℤ) = symO k oj := by rw [← hol, ho, ← hoj]; rfl
  refine ⟨?_, signs_sym k p q hK ho' hB hC⟩
  obtain ⟨w', hw', he⟩ := hT w hw
  refine ⟨w', hw', ?_⟩
  rw [← phaseMat_phasesOf hK hm.2.1, leadingBlock_cornerMat_phaseMat, he, symBall_theta, seedOf_add_winding]
  congr 2
  funext c
  exact cornerTheta_sym k hI hJ _ _ c

/-- The same as `CornerIn` for a `SeedBallCert` built on the target's kernel data. -/
theorem t1sym_cornerIn {k : Fin 4} {p q : Equiv.Perm I3} {I J : List ℕ}
    (hI : ∀ a : I3, gn I a = p a) (hJ : ∀ b : I3, gn J b = q b)
    {Dj Dl : SeedD} {Il : InvD} {N : List ℤ} {b : Bx} (hinv : invOK Dl.B Il = true)
    (h : t0OK (symBall k I J Dj) Dl Il N b = true) {oj : ℤˣ} (hoj : Dj.B.o = oj) (S : SeedBallCert)
    (hS0 : S.theta0 = th0R Dl.B) (hSM : S.Mth = MthR Dl.B) (hSr : S.r = rn Dl.r) (hSo : Dl.B.o = S.o)
    {w : Fin 4 → ℝ} (hw : b.Mem (rn Dj.r) w) {K : Mat6} (hK : Hadamard6.IsHadamard K)
    (hm : MatchedO oj (seedOf (th0R Dj.B + MthR Dj.B *ᵥ w)) K)
    (hR : 0 < seedR (seedOf (th0R Dj.B + MthR Dj.B *ᵥ w))) :
    CornerIn S k (symPerm p) (symPerm q) K := by
  obtain ⟨⟨w', hw', he⟩, h2, h3⟩ := t1sym_sound hI hJ hinv h hoj hSo hw hK hm hR
  refine ⟨⟨w', hSr ▸ hw', ?_⟩, h2, h3⟩
  rw [he, SeedBallCert.θ, hS0, hSM]

/-- **The semantic claim `SeedTargetHolds .t1`** at a boundary point `w` of the box, with the source's C1 providing
the matched completion. -/
theorem t1sym_holds {k : Fin 4} {p q : Equiv.Perm I3} {I J : List ℕ}
    (hI : ∀ a : I3, gn I a = p a) (hJ : ∀ b : I3, gn J b = q b)
    {Dj Dl : SeedD} {Il : InvD} {N : List ℤ} {b : Bx} (hinv : invOK Dl.B Il = true)
    (h : t0OK (symBall k I J Dj) Dl Il N b = true) (Sj Sl : SeedBallCert)
    (hj0 : Sj.theta0 = th0R Dj.B) (hjM : Sj.Mth = MthR Dj.B) (hjo : Dj.B.o = Sj.o)
    (hl0 : Sl.theta0 = th0R Dl.B) (hlM : Sl.Mth = MthR Dl.B) (hlr : Sl.r = rn Dl.r) (hlo : Dl.B.o = Sl.o)
    {w : Fin 4 → ℝ} (hw : b.Mem (rn Dj.r) w) (hwr : wnorm w ≤ Sj.r) :
    ∃ K, Hadamard6.IsHadamard K ∧ MatchedO Sj.o (seedOf (Sj.θ w)) K ∧ CornerIn Sl k (symPerm p) (symPerm q) K := by
  obtain ⟨hR, Q, -, hQH, hQm, -⟩ := Sj.hC1 w hwr
  have eθ : Sj.θ w = th0R Dj.B + MthR Dj.B *ᵥ w := by rw [SeedBallCert.θ, hj0, hjM]
  have eθ' : Sj.theta0 + Sj.Mth *ᵥ w = th0R Dj.B + MthR Dj.B *ᵥ w := by rw [hj0, hjM]
  rw [eθ'] at hR hQm
  refine ⟨phaseMat Q, hQH, by rw [eθ]; exact hQm, ?_⟩
  exact t1sym_cornerIn hI hJ hinv h hjo Sl hl0 hlM hlr hlo hw hQH hQm hR

end NoFourMUBs.KernelAtlas.Seed
