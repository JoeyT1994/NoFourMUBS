import NoFourMUBs.SeedAtlas.OpenMap
import NoFourMUBs.SeedAtlas.Cert
import NoFourMUBs.Boundary

/-!
# Boundary transfers of the seed atlas (`proof/seed_atlas/SPEC.md` §4, C2)

A point of the boundary sphere `‖w‖ = r_j` of a seed ball `j` lies in a box with one target; a point of the boundary of
a full-matrix record lies in an `η`-box with one target.  Each target's certified claim is stated semantically
(`SeedTargetHolds`, `RecTargetHolds`), and each transfer lemma turns it into membership of an interior:

* `SeedInterior S M`: `M` is equivalent to a matched completion with orientation `o` at `θ(w)`, `‖w‖ < r`
  (`MatchedImage o (θ '' {‖w‖ < r})`, open by the open-map lemma);
* `InRecord P R M` (`Transfer.lean`): `M` is equivalent to `e^{i(P + δ)}`, `δ` horizontal, `‖δ‖ < R`.

The four transfers:
* **(T0)** `transfer_t0`: same corner, `θ_j(w) + 2πN = θ_l(w')` with `‖w'‖ < r_l` and `o_l = o_j`: the class is
  `f_{o_l}(θ_l(w'))` (`seedOf_add_winding`).  Pure seed-space geometry.
* **(T1)** `transfer_t1`: change of corner.  For the representative `K` at `θ_j(w)`, `g · K` dephased at the ordered
  corner `(σ(0,1,2), τ(0,1,2))` (`cornerMat`) has seed `θ_l(w')`, `‖w'‖ < r_l` (`CornerIn`), with
  `sign Im Ψ(B) = o_l` and `sign Im Ψ(C) = −o_l`; then `g · [K] ∈ f_{o_l}(int E_l)` (`matchedO_of_corner` and
  matched uniqueness).  The corner seed is linear in the phases (`leadingBlock_cornerMat_phaseMat`).  The nonmatched
  converse is not needed.
* **(T2)** `transfer_t2`: into a record, `‖h(A Q + 2πN − P_l)‖ < R_l` for the representative's phases `Q` (Lemma 4.1
  with no tangent part, `NoFourMUBs.transfer`).
* **(T1′)** `transfer_t1'`: from a record's boundary into a seed ball, the corner condition for every boundary point
  `K = e^{i(P + Tη + ν)}` of the record: `ν` in the complement `N` of the frame, `‖ν‖ ≤ n`, `‖Tη + ν‖ = R`, `K`
  Hadamard (`RecordCert.decompN`).  How the certifier encloses these `ν` (FORMAT: a Krawczyk refinement over the
  `η`-box) is its business.

The record-to-record target is the existing Lemma 4.1 (`NoFourMUBs.transfer`).
-/

open Matrix Hadamard6 NoFourMUBs.Step2

noncomputable section

namespace NoFourMUBs.SeedAtlas

/-! ### Interiors -/

/-- The interior seed phases `θ(w)`, `‖w‖ < r`, of a seed ball. -/
def SeedBallCert.interiorθ (S : SeedBallCert) : Set (Fin 4 → ℝ) := S.θ '' {w | wnorm w < S.r}

/-- `M` is equivalent to a point of the interior of the seed ball image. -/
def SeedInterior (S : SeedBallCert) (M : Mat6) : Prop := M ∈ MatchedImage S.o S.interiorθ

/-- The interior seed phases form an open set (`M_θ` is invertible). -/
theorem SeedBallCert.isOpen_interiorθ (S : SeedBallCert) : IsOpen S.interiorθ := by
  set Minv := S.Mth⁻¹
  have h1 : Minv * S.Mth = 1 := Matrix.nonsing_inv_mul _ S.hMth
  have h2 : S.Mth * Minv = 1 := Matrix.mul_nonsing_inv _ S.hMth
  have e : S.interiorθ = (fun x => Minv *ᵥ (x - S.theta0)) ⁻¹' {w | wnorm w < S.r} := by
    ext x
    simp only [SeedBallCert.interiorθ, Set.mem_image, Set.mem_preimage, Set.mem_ofPred_eq]
    constructor
    · rintro ⟨w, hw, rfl⟩
      simp only [SeedBallCert.θ, add_sub_cancel_left, Matrix.mulVec_mulVec, h1, Matrix.one_mulVec]
      exact hw
    · intro hx
      refine ⟨_, hx, ?_⟩
      simp only [SeedBallCert.θ, Matrix.mulVec_mulVec, h2, Matrix.one_mulVec, add_sub_cancel]
  rw [e]
  exact (isOpen_lt continuous_wnorm continuous_const).preimage
    (continuous_const.matrix_mulVec (continuous_id.sub continuous_const))

/-- Interior points are points of the seed ball image. -/
lemma SeedInterior.ball {S : SeedBallCert} {M : Mat6} (h : SeedInterior S M) :
    ∃ K, S.Ball K ∧ Equivalent M K := by
  obtain ⟨_, ⟨w, hw, rfl⟩, -, K, hKH, hm, hMK⟩ := h
  exact ⟨K, ⟨hKH, w, hw.le, hm⟩, hMK⟩

lemma SeedInterior.of_equivalent {S : SeedBallCert} {M M' : Mat6} (h : SeedInterior S M') (hM : Equivalent M M') :
    SeedInterior S M := by
  obtain ⟨θ, hθ, hR, K, hKH, hm, hMK⟩ := h
  exact ⟨θ, hθ, hR, K, hKH, hm, equivalent_trans hM hMK⟩

lemma inRecord_of_equivalent {P : RMat6} {R : ℝ} {M M' : Mat6} (h : InRecord P R M') (hM : Equivalent M M') :
    InRecord P R M := by
  obtain ⟨δ, hδ, hR, hMK⟩ := h
  exact ⟨δ, hδ, hR, equivalent_trans hM hMK⟩

/-! ### The corner condition (T1, T1′) -/

/-- The certified corner claim: `g · K` dephased at the ordered corner `(σ, τ)` has seed `θ_l(w')` with
`‖w'‖ < r_l`, `sign Im Ψ(B) = o_l` and `sign Im Ψ(Cᵀ) = −o_l`. -/
def CornerIn (S : SeedBallCert) (k : Fin 4) (σ τ : Equiv.Perm I6) (K : Mat6) : Prop :=
  (∃ w', wnorm w' < S.r ∧ leadingBlock (cornerMat k σ τ K) = seedCorner (seedOf (S.θ w'))) ∧
    0 < osgn S.o * (psi (rightBlock (cornerMat k σ τ K))).im ∧
    0 < -osgn S.o * (psi (lowerBlock (cornerMat k σ τ K))).im

/-- **The corner transfer:** the corner condition puts `g · K` in the interior of the target seed ball. -/
theorem seedInterior_of_cornerIn {S : SeedBallCert} {k : Fin 4} {σ τ : Equiv.Perm I6} {K : Mat6}
    (hK : Hadamard6.IsHadamard K) (h : CornerIn S k σ τ K) : SeedInterior S (gfun k K) := by
  obtain ⟨⟨w', hw', hE⟩, hB, hC⟩ := h
  obtain ⟨hR, K', hK'H, hm, he⟩ := matchedO_of_corner k σ τ hK hE hB hC
  exact ⟨S.θ w', ⟨w', hw', rfl⟩, hR, K', hK'H, hm, he⟩

/-! ### Seed ball targets -/

/-- A boundary target of a seed ball (SPEC §4): another seed ball with a winding (T0), another seed ball with an
operation of `Γ` and an ordered corner (T1), or a record with a signed permutation and a winding (T2). -/
inductive SeedTarget (σs ιr : Type)
  | t0 (l : σs) (N : Fin 4 → ℤ)
  | t1 (l : σs) (k : Fin 4) (σ τ : Equiv.Perm I6)
  | t2 (l : ιr) (A : SignedPerm) (N : Matrix I6 I6 ℤ)

/-- The certified claim of a seed ball target at the boundary point `w` of seed ball `j` (stated semantically). -/
def SeedTargetHolds {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (j : σs) :
    SeedTarget σs ιr → (Fin 4 → ℝ) → Prop
  | .t0 l N, w => (S l).o = (S j).o ∧
      ∃ w', wnorm w' < (S l).r ∧ (S l).θ w' = (S j).θ w + (2 * Real.pi) • fun i => (N i : ℝ)
  | .t1 l k σ τ, w => ∃ K, Hadamard6.IsHadamard K ∧ MatchedO (S j).o (seedOf ((S j).θ w)) K ∧
      CornerIn (S l) k σ τ K
  | .t2 l B N, w => ∃ Q, Hadamard6.IsHadamard (phaseMat Q) ∧ MatchedO (S j).o (seedOf ((S j).θ w)) (phaseMat Q) ∧
      frob (hor (B.act Q + wind N - (A l).P)) < (A l).R

lemma SignedPerm.act_zero (B : SignedPerm) : B.act 0 = 0 := by
  ext i j; cases h : B.tr <;> simp [SignedPerm.act, h]

lemma hor_zero : hor (0 : RMat6) = 0 := by ext i j; simp [hor, rowMean, colMean, allMean]

/-- The conclusion of a seed ball transfer: after an operation of `Γ`, an interior point of a seed ball or of a
record. -/
def InteriorTarget {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (M : Mat6) : Prop :=
  ∃ k, (∃ l, SeedInterior (S l) (gfun k M)) ∨ (∃ l, InRecord (A l).P (A l).R (gfun k M))

lemma InteriorTarget.of_gfun {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {M : Mat6} {k : Fin 4}
    (h : InteriorTarget S A (gfun k M)) : InteriorTarget S A M := by
  obtain ⟨k', h⟩ := h
  obtain ⟨k'', hk⟩ := gfun_comp k k'
  refine ⟨k'', ?_⟩
  rw [← hk]; exact h

lemma InteriorTarget.of_equivalent {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {M M' : Mat6}
    (h : InteriorTarget S A M') (hM : Equivalent M M') : InteriorTarget S A M := by
  obtain ⟨k, h | h⟩ := h
  · obtain ⟨l, h⟩ := h; exact ⟨k, Or.inl ⟨l, h.of_equivalent (equivalent_gfun hM k)⟩⟩
  · obtain ⟨l, h⟩ := h; exact ⟨k, Or.inr ⟨l, inRecord_of_equivalent h (equivalent_gfun hM k)⟩⟩

/-- **(T0)** Same corner. -/
theorem transfer_t0 {S Sl : SeedBallCert} {N : Fin 4 → ℤ} {w : Fin 4 → ℝ} (hw : wnorm w ≤ S.r)
    (h : Sl.o = S.o ∧ ∃ w', wnorm w' < Sl.r ∧ Sl.θ w' = S.θ w + (2 * Real.pi) • fun i => (N i : ℝ))
    {K : Mat6} (hK : Hadamard6.IsHadamard K) (hm : MatchedO S.o (seedOf (S.θ w)) K) : SeedInterior Sl K := by
  obtain ⟨ho, w', hw', he⟩ := h
  have hs : seedOf (Sl.θ w') = seedOf (S.θ w) := by rw [he, seedOf_add_winding]
  refine ⟨Sl.θ w', ⟨w', hw', rfl⟩, ?_, K, hK, ?_, equivalent_refl K⟩
  · rw [hs]; exact S.strict hw
  · rw [hs, ho]; exact hm

/-- **(T1)** Change of corner. -/
theorem transfer_t1 {S Sl : SeedBallCert} {k : Fin 4} {σ τ : Equiv.Perm I6} {w : Fin 4 → ℝ} (hw : wnorm w ≤ S.r)
    (h : ∃ K₁, Hadamard6.IsHadamard K₁ ∧ MatchedO S.o (seedOf (S.θ w)) K₁ ∧ CornerIn Sl k σ τ K₁)
    {K : Mat6} (hK : Hadamard6.IsHadamard K) (hm : MatchedO S.o (seedOf (S.θ w)) K) :
    SeedInterior Sl (gfun k K) := by
  obtain ⟨K₁, hK₁, hm₁, hc⟩ := h
  have he : Equivalent K K₁ := matchedO_unique (S.strict hw) hK hK₁ hm hm₁
  exact (seedInterior_of_cornerIn hK₁ hc).of_equivalent (equivalent_gfun he k)

/-- **(T2)** Into a record. -/
theorem transfer_t2 {S : SeedBallCert} {Al : RecordCert} {B : SignedPerm} {N : Matrix I6 I6 ℤ}
    {w : Fin 4 → ℝ} (hw : wnorm w ≤ S.r)
    (h : ∃ Q, Hadamard6.IsHadamard (phaseMat Q) ∧ MatchedO S.o (seedOf (S.θ w)) (phaseMat Q) ∧
      frob (hor (B.act Q + wind N - Al.P)) < Al.R)
    {K : Mat6} (hK : Hadamard6.IsHadamard K) (hm : MatchedO S.o (seedOf (S.θ w)) K) :
    ∃ k, InRecord Al.P Al.R (gfun k K) := by
  obtain ⟨Q, hQH, hQm, hlt⟩ := h
  have he : Equivalent K (phaseMat Q) := matchedO_unique (S.strict hw) hK hQH hm hQm
  have h' : frob (hor (B.act Q + (2 * Real.pi) • N.map (Int.cast : ℤ → ℝ) - Al.P) + hor (B.act 0)) + 0 < Al.R := by
    rw [SignedPerm.act_zero, hor_zero, add_zero, add_zero]; exact hlt
  obtain ⟨G, hG, hGR⟩ := NoFourMUBs.transfer B N (u := 0) (ν := 0) (by simp [frob_eq_sqrt, sumsq]) h'
  rw [add_zero, add_zero] at hG
  obtain ⟨k, rfl⟩ := inGamma_iff.mp hG
  exact ⟨k, inRecord_of_equivalent hGR (equivalent_gfun he k)⟩

/-- A seed ball's boundary target puts every boundary point of its box in an interior. -/
theorem SeedTargetHolds.interior {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {j : σs}
    {tg : SeedTarget σs ιr} {w : Fin 4 → ℝ} (hw : wnorm w ≤ (S j).r) (h : SeedTargetHolds S A j tg w)
    {K : Mat6} (hK : Hadamard6.IsHadamard K) (hm : MatchedO (S j).o (seedOf ((S j).θ w)) K) :
    InteriorTarget S A K := by
  cases tg with
  | t0 l N =>
    refine ⟨0, Or.inl ⟨l, ?_⟩⟩
    exact transfer_t0 hw h hK hm
  | t1 l k σ τ =>
    exact InteriorTarget.of_gfun (k := k) ⟨0, Or.inl ⟨l, transfer_t1 hw h hK hm⟩⟩
  | t2 l B N =>
    obtain ⟨k, hk⟩ := transfer_t2 hw h hK hm
    exact ⟨k, Or.inr ⟨l, hk⟩⟩

/-! ### The record decomposition with the normal component -/

/-- Lemma 3.1 inside a certified Record (`RecordCert.decomp`), also recording that the normal component `ν` lies in
the complement `N` of the frame: horizontal and orthogonal to every `T_k`. -/
theorem RecordCert.decompN (C : RecordCert) {δ : RMat6} (hδh : IsHorizontal δ) (hR : frob δ ≤ C.R)
    (hH : Hadamard6.IsHadamard (phaseMat (C.P + δ))) :
    ∃ η : Fin 4 → ℝ, ∃ ν : RMat6, δ = tang C.T η + ν ∧ IsHorizontal ν ∧
      (∀ k, ∑ a, ∑ c, C.T k a c * ν a c = 0) ∧ Real.sqrt (∑ k, η k ^ 2) ≤ C.rH ∧ frob ν ≤ C.n ∧
      sumsq δ = sumsq (tang C.T η) + sumsq ν := by
  obtain ⟨η, ν, hδ, hνh, horthk, hηb⟩ := C.hproj δ hδh
  set u := ∑ k, η k • C.T k
  set s := Real.sqrt (∑ k, η k ^ 2)
  set rH := C.g * C.R
  have hs0 : 0 ≤ s := Real.sqrt_nonneg _
  have hsr : s ≤ rH := hηb.trans (mul_le_mul_of_nonneg_left hR C.hg0)
  have horth : ∑ a, ∑ c, u a c * ν a c = 0 := by
    have : ∑ a, ∑ c, u a c * ν a c = ∑ k, η k * ∑ a, ∑ c, C.T k a c * ν a c := by
      simp only [u, Matrix.sum_apply, Matrix.smul_apply, smul_eq_mul, Finset.sum_mul, Finset.mul_sum]
      symm; rw [Finset.sum_comm]
      refine Finset.sum_congr rfl fun a _ => ?_
      rw [Finset.sum_comm]
      exact Finset.sum_congr rfl fun c _ => Finset.sum_congr rfl fun k _ => by ring
    rw [this]; simp only [horthk, mul_zero, Finset.sum_const_zero]
  have hsplit : sumsq δ = sumsq u + sumsq ν := by rw [hδ]; exact sumsq_add_of_orth horth
  have hνδ : frob ν ≤ frob δ := frob_le_of_sumsq_le (by rw [hsplit]; linarith [sumsq_nonneg u])
  have hH' : Hadamard6.IsHadamard (phaseMat (C.P + (u + ν))) := by rwa [← hδ]
  have hn0 := normal_bound_root (j1 := C.j1) (s := s) (lam := C.lam) (R := C.R) hH' horth (C.hσ ν hνh horthk) C.he
    (C.hj η) (C.hlam η) (hνδ.trans hR) C.hLR
  refine ⟨η, ν, hδ, hνh, horthk, hsr, hn0.trans (nroot_mono ?_), hsplit⟩
  have h1 : C.j1 * s ≤ C.j1 * rH := mul_le_mul_of_nonneg_left hsr C.hj0
  have h2 : s ^ 2 ≤ rH ^ 2 := pow_le_pow_left₀ hs0 hsr 2
  have h3 : Real.sqrt 3 * C.lam * s ^ 2 ≤ Real.sqrt 3 * C.lam * rH ^ 2 :=
    mul_le_mul_of_nonneg_left h2 (by have := C.hlam0; positivity)
  linarith

/-! ### `Ψ` of a corner's sides, read off `g · K` directly -/

lemma psi_scale (B : Mat3) (r c : Fin 3 → ℂ) (hr : ∀ i, Complex.normSq (r i) = 1)
    (hc : ∀ j, Complex.normSq (c j) = 1) : psi (Matrix.of fun i j => r i * B i j * c j) = psi B := by
  rw [psi_eq, psi_eq, sideSignature_scale]
  · intro i; rw [Complex.mul_conj, hr i, Complex.ofReal_one]
  · intro j; rw [Complex.mul_conj, hc j, Complex.ofReal_one]

/-- `Ψ(B)` of the corner is `Ψ(K[I, Jᶜ])` for `K = g · K₀`, `I = σ(0,1,2)`, `Jᶜ = τ(3,4,5)` (FORMAT §4: the
dephasing does not change `Ψ`). -/
theorem psi_rightBlock_cornerMat (k : Fin 4) (σ τ : Equiv.Perm I6) {K : Mat6} (hK : Hadamard6.IsHadamard K) :
    psi (rightBlock (cornerMat k σ τ K)) = psi (Matrix.of fun i j => gfun k K (σ (.inl i)) (τ (.inr j))) := by
  set M := (gfun k K).submatrix σ τ
  have hM : EntrywiseUnit M := fun i j => (isHadamard_gfun hK k).1 _ _
  have e : rightBlock (cornerMat k σ τ K) = Matrix.of fun i j =>
      dephaseRowFactor M (.inl i) * (Matrix.of fun i j => gfun k K (σ (.inl i)) (τ (.inr j))) i j *
        dephaseColumnFactor M (.inr j) := rfl
  rw [e, psi_scale]
  · exact fun i => dephaseRowFactor_unit hM _
  · exact fun j => dephaseColumnFactor_unit hM _

/-- `Ψ(C)` of the corner is `Ψ(K[Iᶜ, J])` (`= Ψ(K[Iᶜ, J]ᵀ)`). -/
theorem psi_lowerBlock_cornerMat (k : Fin 4) (σ τ : Equiv.Perm I6) {K : Mat6} (hK : Hadamard6.IsHadamard K) :
    psi (lowerBlock (cornerMat k σ τ K)) = psi (Matrix.of fun i j => gfun k K (σ (.inr i)) (τ (.inl j))) := by
  set M := (gfun k K).submatrix σ τ
  have hM : EntrywiseUnit M := fun i j => (isHadamard_gfun hK k).1 _ _
  have e : lowerBlock (cornerMat k σ τ K) = Matrix.of fun i j =>
      dephaseRowFactor M (.inr i) * (Matrix.of fun i j => gfun k K (σ (.inr i)) (τ (.inl j))) i j *
        dephaseColumnFactor M (.inl j) := rfl
  rw [e, psi_scale]
  · exact fun i => dephaseRowFactor_unit hM _
  · exact fun j => dephaseColumnFactor_unit hM _

/-! ### Record targets -/

/-- A boundary target of a full-matrix record: another record (Lemma 4.1, the current format) or a seed ball (T1′). -/
inductive RecTarget (σs ιr : Type)
  | record (l : ιr) (A : SignedPerm) (N : Matrix I6 I6 ℤ)
  | t1' (l : σs) (k : Fin 4) (σ τ : Equiv.Perm I6)

/-- The certified claim of a record target on the `η`-box point `η` of record `l` (stated semantically). -/
def RecTargetHolds {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (l : ιr) :
    RecTarget σs ιr → (Fin 4 → ℝ) → Prop
  | .record l' B N, η => frob (hor (B.act (A l).P + wind N - (A l').P) + hor (B.act (tang (A l).T η))) + (A l).n <
      (A l').R
  | .t1' j k σ τ, η => ∀ ν : RMat6, IsHorizontal ν → (∀ k', ∑ a, ∑ c, (A l).T k' a c * ν a c = 0) →
      frob ν ≤ (A l).n → frob (tang (A l).T η + ν) = (A l).R →
      Hadamard6.IsHadamard (phaseMat ((A l).P + tang (A l).T η + ν)) →
      CornerIn (S j) k σ τ (phaseMat ((A l).P + tang (A l).T η + ν))

/-- **(T1′)** From a record's boundary into a seed ball: the claim is needed only for the record's actual boundary
points, `ν` in the complement `N` of the frame (horizontal, orthogonal to every `T_k`), `‖ν‖ ≤ n`,
`‖Tη + ν‖ = R`, `e^{i(P + Tη + ν)}` Hadamard. -/
theorem transfer_t1' {Al : RecordCert} {S : SeedBallCert} {k : Fin 4} {σ τ : Equiv.Perm I6} {η : Fin 4 → ℝ}
    (h : ∀ ν : RMat6, IsHorizontal ν → (∀ k', ∑ a, ∑ c, Al.T k' a c * ν a c = 0) → frob ν ≤ Al.n →
      frob (tang Al.T η + ν) = Al.R → Hadamard6.IsHadamard (phaseMat (Al.P + tang Al.T η + ν)) →
      CornerIn S k σ τ (phaseMat (Al.P + tang Al.T η + ν)))
    {ν : RMat6} (hνh : IsHorizontal ν) (hνT : ∀ k', ∑ a, ∑ c, Al.T k' a c * ν a c = 0) (hν : frob ν ≤ Al.n)
    (hRb : frob (tang Al.T η + ν) = Al.R) (hH : Hadamard6.IsHadamard (phaseMat (Al.P + tang Al.T η + ν))) :
    SeedInterior S (gfun k (phaseMat (Al.P + tang Al.T η + ν))) :=
  seedInterior_of_cornerIn hH (h ν hνh hνT hν hRb hH)

/-- A record's boundary target puts the boundary point in an interior. -/
theorem RecTargetHolds.interior {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {l : ιr}
    {tg : RecTarget σs ιr} {η : Fin 4 → ℝ} (h : RecTargetHolds S A l tg η) {ν : RMat6} (hνh : IsHorizontal ν)
    (hνT : ∀ k', ∑ a, ∑ c, (A l).T k' a c * ν a c = 0) (hν : frob ν ≤ (A l).n)
    (hRb : frob (tang (A l).T η + ν) = (A l).R)
    (hH : Hadamard6.IsHadamard (phaseMat ((A l).P + tang (A l).T η + ν))) :
    InteriorTarget S A (phaseMat ((A l).P + tang (A l).T η + ν)) := by
  cases tg with
  | record l' B N =>
    obtain ⟨G, hG, hGR⟩ := NoFourMUBs.transfer B N hν h
    obtain ⟨k, rfl⟩ := inGamma_iff.mp hG
    exact ⟨k, Or.inr ⟨l', hGR⟩⟩
  | t1' j k σ τ =>
    exact InteriorTarget.of_gfun (k := k) ⟨0, Or.inl ⟨j, transfer_t1' h hνh hνT hν hRb hH⟩⟩

end NoFourMUBs.SeedAtlas
