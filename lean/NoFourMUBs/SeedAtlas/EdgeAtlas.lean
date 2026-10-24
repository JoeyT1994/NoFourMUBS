import NoFourMUBs.SeedAtlas.Edge

/-!
# The seed atlas with edge balls (`proof/seed_atlas/SPEC.md` §10)

`EdgeAtlasCertificate` is `SeedAtlasCertificate` with edge balls (`EdgeBallCert`) in place of `F6`'s full-matrix
record: `W = ⋃ g · f_o(E_j) ∪ ⋃ g · [Edge_e] ∪ ⋃ g · [Rec_l]`.  Tao's record stays a record.

**Transfers into an edge ball, kind T3** (`EdgeInQ`, `edgeInterior_of_edgeInQ`): for phases `Y` of the source
point, a signed permutation `A` and a winding `N`, `δ = h(A Y + 2πN − P_F)` has `‖δ‖ < R_G` (as T2 into `F6`'s
record) and frame coordinates `η(δ)` in the chart image `η(h(Q(B_r) − P_F))` of the open ball; then (G) gives
`g · e^{iY} ≅ e^{iQ(w')}` (`EdgeBallCert.equivalent_of_eta`).  The certifier shows the `η`-image of a source box
inside the chart image by a Krawczyk solve of `η(h(Q(w) − P_F)) = η` over a `w`-box (the derivative enclosures of
(D)).  T3 is available from seed balls (`SeedTargetE.t3`), from records (`RecTargetE.t3'`) and from edge balls.
Positional tubes of the augmented systems would not do: near `y = 0` they cannot tell the source's vertical side
from the nonmatched branch, which only the converse excludes.

**Transfers out of an edge ball** (`EdgeTarget`, at the sphere `‖w‖ = r`): T1 into a seed ball (the corner condition
on `e^{iQ(w)}`), T2 into a record (`‖h(A Q(w) + 2πN − P_l)‖ < R_l`), T3 into an edge ball.

**`W` is clopen** (`EdgeAtlasCertificate.clopen`): compact images (`EdgeBallCert.isCompact_ball`), every covered matrix
is an interior point by the transfers (`covered_iff_interiorTargetE`), and the edge interiors are open
(`isOpen_edgeInterior`: the inverse function theorem and the graph property (G)).
-/

open Matrix Hadamard6 Set NoFourMUBs.Step2 NoFourMUBs.Step2Topology

noncomputable section

namespace NoFourMUBs.SeedAtlas

/-! ### T3: into an edge ball -/

/-- The certified T3 claim on phases `Y`: `δ = h(A Y + 2πN − P_F)` has `‖δ‖ < R_G` and frame coordinates in the
chart image of the open ball. -/
def EdgeInQ (E : EdgeBallCert) (B : SignedPerm) (N : Matrix I6 I6 ℤ) (Y : RMat6) : Prop :=
  frob (hor (B.act Y + wind N - E.PF)) < E.RG ∧
    E.eta (hor (B.act Y + wind N - E.PF)) ∈ E.chart '' {w | wnorm w < E.r}

/-- `A · e^{iY} ≅ e^{i(P + h(A Y + 2πN − P))}` (the equivalence of Lemma 4.1). -/
lemma equivalent_gam_hor (B : SignedPerm) (N : Matrix I6 I6 ℤ) (Y P : RMat6) :
    Equivalent (B.gam (phaseMat Y)) (phaseMat (P + hor (B.act Y + wind N - P))) := by
  have h1 := B.equivalent_act Y
  have h2 : phaseMat (B.act Y) = phaseMat (B.act Y + wind N) := (phaseMat_add_winding _ N).symm
  have h3 := phaseMat_equivalent_add_hor P (B.act Y + wind N - P)
  rw [add_sub_cancel] at h3
  rw [h2] at h1
  exact equivalent_equivalence.trans h1 (equivalent_equivalence.symm h3)

/-- **(T3)** The claim puts `g · e^{iY}` in the interior of the edge ball. -/
theorem edgeInterior_of_edgeInQ {E : EdgeBallCert} {B : SignedPerm} {N : Matrix I6 I6 ℤ} {Y : RMat6}
    (hY : Hadamard6.IsHadamard (phaseMat Y)) (h : EdgeInQ E B N Y) : ∃ k, EdgeInterior E (gfun k (phaseMat Y)) := by
  obtain ⟨k, hk⟩ := inGamma_iff.mp (B.inGamma_gam (phaseMat Y))
  obtain ⟨hR, w', hw', hη⟩ := h
  have he := equivalent_gam_hor B N Y E.PF
  have hH := isHadamard_of_equivalent he (by rw [hk]; exact isHadamard_gfun hY k)
  refine ⟨k, w', hw', ?_⟩
  rw [← hk]
  exact equivalent_trans he (E.equivalent_of_eta (hor_isHorizontal _) hR.le hH hw'.le hη)

/-- T2 for an explicit phase matrix: `‖h(A Q + 2πN − P_l)‖ < R_l` puts `g · e^{iQ}` in the record. -/
theorem inRecord_of_t2 {Al : RecordCert} {B : SignedPerm} {N : Matrix I6 I6 ℤ} {Q : RMat6}
    (h : frob (hor (B.act Q + wind N - Al.P)) < Al.R) : ∃ k, InRecord Al.P Al.R (gfun k (phaseMat Q)) := by
  have h' : frob (hor (B.act Q + (2 * Real.pi) • N.map (Int.cast : ℤ → ℝ) - Al.P) + hor (B.act 0)) + 0 < Al.R := by
    rw [SignedPerm.act_zero, hor_zero, add_zero, add_zero]; exact h
  obtain ⟨G, hG, hGR⟩ := NoFourMUBs.transfer B N (u := 0) (ν := 0) (by simp [frob_eq_sqrt, sumsq]) h'
  rw [add_zero, add_zero] at hG
  obtain ⟨k, rfl⟩ := inGamma_iff.mp hG
  exact ⟨k, hGR⟩

/-! ### Targets -/

/-- A boundary target of a seed ball: one of the seed atlas (T0, T1, T2) or an edge ball (T3). -/
inductive SeedTargetE (σs ιr ιe : Type)
  | seed (tg : SeedTarget σs ιr)
  | t3 (e : ιe) (B : SignedPerm) (N : Matrix I6 I6 ℤ)

def SeedTargetEHolds {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (E : ιe → EdgeBallCert)
    (j : σs) : SeedTargetE σs ιr ιe → (Fin 4 → ℝ) → Prop
  | .seed tg, w => SeedTargetHolds S A j tg w
  | .t3 e B N, w => ∃ Q, Hadamard6.IsHadamard (phaseMat Q) ∧ MatchedO (S j).o (seedOf ((S j).θ w)) (phaseMat Q) ∧
      EdgeInQ (E e) B N Q

/-- A boundary target of a full-matrix record: one of the seed atlas (Lemma 4.1, T1′) or an edge ball (T3). -/
inductive RecTargetE (σs ιr ιe : Type)
  | old (tg : RecTarget σs ιr)
  | t3' (e : ιe) (B : SignedPerm) (N : Matrix I6 I6 ℤ)

def RecTargetEHolds {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (E : ιe → EdgeBallCert)
    (l : ιr) : RecTargetE σs ιr ιe → (Fin 4 → ℝ) → Prop
  | .old tg, η => RecTargetHolds S A l tg η
  | .t3' e B N, η => ∀ ν : RMat6, IsHorizontal ν → (∀ k', ∑ a, ∑ c, (A l).T k' a c * ν a c = 0) →
      frob ν ≤ (A l).n → frob (tang (A l).T η + ν) = (A l).R →
      Hadamard6.IsHadamard (phaseMat ((A l).P + tang (A l).T η + ν)) →
      EdgeInQ (E e) B N ((A l).P + tang (A l).T η + ν)

/-- A boundary target of an edge ball: a seed ball (T1), a record (T2) or an edge ball (T3). -/
inductive EdgeTarget (σs ιr ιe : Type)
  | t1 (l : σs) (k : Fin 4) (σ τ : Equiv.Perm I6)
  | t2 (l : ιr) (B : SignedPerm) (N : Matrix I6 I6 ℤ)
  | t3 (e : ιe) (B : SignedPerm) (N : Matrix I6 I6 ℤ)

/-- The certified claim of an edge ball target at the boundary point `w` of edge ball `e₀`. -/
def EdgeTargetHolds {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (E : ιe → EdgeBallCert)
    (e₀ : ιe) : EdgeTarget σs ιr ιe → (Fin 4 → ℝ) → Prop
  | .t1 l k σ τ, w => CornerIn (S l) k σ τ (phaseMat ((E e₀).Q w))
  | .t2 l B N, w => frob (hor (B.act ((E e₀).Q w) + wind N - (A l).P)) < (A l).R
  | .t3 e B N, w => EdgeInQ (E e) B N ((E e₀).Q w)

/-! ### Interiors -/

/-- After an operation of `Γ`, an interior point of a seed ball, a record or an edge ball. -/
def InteriorTargetE {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (E : ιe → EdgeBallCert)
    (M : Mat6) : Prop :=
  ∃ k, (∃ l, SeedInterior (S l) (gfun k M)) ∨ (∃ l, InRecord (A l).P (A l).R (gfun k M)) ∨
    (∃ e, EdgeInterior (E e) (gfun k M))

section Interior

variable {σs ιr ιe : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {E : ιe → EdgeBallCert}

lemma InteriorTargetE.of_gfun {M : Mat6} {k : Fin 4} (h : InteriorTargetE S A E (gfun k M)) :
    InteriorTargetE S A E M := by
  obtain ⟨k', h⟩ := h
  obtain ⟨k'', hk⟩ := gfun_comp k k'
  refine ⟨k'', ?_⟩
  rw [← hk]; exact h

lemma InteriorTargetE.of_equivalent {M M' : Mat6} (h : InteriorTargetE S A E M') (hM : Equivalent M M') :
    InteriorTargetE S A E M := by
  obtain ⟨k, ⟨l, h⟩ | ⟨l, h⟩ | ⟨e, h⟩⟩ := h
  · exact ⟨k, Or.inl ⟨l, h.of_equivalent (equivalent_gfun hM k)⟩⟩
  · exact ⟨k, Or.inr (Or.inl ⟨l, inRecord_of_equivalent h (equivalent_gfun hM k)⟩)⟩
  · exact ⟨k, Or.inr (Or.inr ⟨e, h.of_equivalent (equivalent_gfun hM k)⟩)⟩

lemma InteriorTargetE.of_interiorTarget {M : Mat6} (h : InteriorTarget S A M) : InteriorTargetE S A E M := by
  obtain ⟨k, h | h⟩ := h
  · exact ⟨k, Or.inl h⟩
  · exact ⟨k, Or.inr (Or.inl h)⟩

lemma InteriorTargetE.of_edge {M : Mat6} {e : ιe} (h : EdgeInterior (E e) M) : InteriorTargetE S A E M :=
  ⟨0, Or.inr (Or.inr ⟨e, h⟩)⟩

/-- A seed ball's boundary target (T0–T3) puts every boundary point of its box in an interior. -/
theorem SeedTargetEHolds.interior {j : σs} {tg : SeedTargetE σs ιr ιe} {w : Fin 4 → ℝ} (hw : wnorm w ≤ (S j).r)
    (h : SeedTargetEHolds S A E j tg w) {K : Mat6} (hK : Hadamard6.IsHadamard K)
    (hm : MatchedO (S j).o (seedOf ((S j).θ w)) K) : InteriorTargetE S A E K := by
  cases tg with
  | seed tg => exact InteriorTargetE.of_interiorTarget (SeedTargetHolds.interior hw h hK hm)
  | t3 e B N =>
    obtain ⟨Q, hQH, hQm, hin⟩ := h
    have he : Equivalent K (phaseMat Q) := matchedO_unique ((S j).strict hw) hK hQH hm hQm
    obtain ⟨k, hk⟩ := edgeInterior_of_edgeInQ hQH hin
    exact InteriorTargetE.of_gfun (k := k) (InteriorTargetE.of_edge (hk.of_equivalent (equivalent_gfun he k)))

/-- A record's boundary target puts the boundary point in an interior. -/
theorem RecTargetEHolds.interior {l : ιr} {tg : RecTargetE σs ιr ιe} {η : Fin 4 → ℝ}
    (h : RecTargetEHolds S A E l tg η) {ν : RMat6} (hνh : IsHorizontal ν)
    (hνT : ∀ k', ∑ a, ∑ c, (A l).T k' a c * ν a c = 0) (hν : frob ν ≤ (A l).n)
    (hRb : frob (tang (A l).T η + ν) = (A l).R)
    (hH : Hadamard6.IsHadamard (phaseMat ((A l).P + tang (A l).T η + ν))) :
    InteriorTargetE S A E (phaseMat ((A l).P + tang (A l).T η + ν)) := by
  cases tg with
  | old tg => exact InteriorTargetE.of_interiorTarget (RecTargetHolds.interior h hνh hνT hν hRb hH)
  | t3' e B N =>
    obtain ⟨k, hk⟩ := edgeInterior_of_edgeInQ hH (h ν hνh hνT hν hRb hH)
    exact InteriorTargetE.of_gfun (k := k) (InteriorTargetE.of_edge hk)

/-- An edge ball's boundary target puts the boundary point `e^{iQ(w)}` in an interior. -/
theorem EdgeTargetHolds.interior {e₀ : ιe} {tg : EdgeTarget σs ιr ιe} {w : Fin 4 → ℝ} (hw : wnorm w ≤ (E e₀).r)
    (h : EdgeTargetHolds S A E e₀ tg w) : InteriorTargetE S A E (phaseMat ((E e₀).Q w)) := by
  have hK := (E e₀).isHadamard hw
  cases tg with
  | t1 l k σ τ =>
    have hs := seedInterior_of_cornerIn hK h
    exact InteriorTargetE.of_gfun (k := k) ⟨0, Or.inl ⟨l, hs⟩⟩
  | t2 l B N =>
    obtain ⟨k, hk⟩ := inRecord_of_t2 h
    exact ⟨k, Or.inr (Or.inl ⟨l, hk⟩)⟩
  | t3 e B N =>
    obtain ⟨k, hk⟩ := edgeInterior_of_edgeInQ hK h
    exact InteriorTargetE.of_gfun (k := k) (InteriorTargetE.of_edge hk)

end Interior

/-! ### Boundary covers -/

/-- C2 for a seed ball, with T3 targets. -/
structure SeedBoundaryCoverE {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert)
    (E : ιe → EdgeBallCert) (j : σs) where
  β : Type
  box : β → Set (Fin 4 → ℝ)
  tgt : β → SeedTargetE σs ιr ιe
  hcover : ∀ w, wnorm w = (S j).r → ∃ b, w ∈ box b
  htransfer : ∀ b, ∀ w ∈ box b, wnorm w = (S j).r → SeedTargetEHolds S A E j (tgt b) w

/-- C2 for a record, with T3 targets. -/
structure RecBoundaryCoverE {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert)
    (E : ιe → EdgeBallCert) (l : ιr) where
  β : Type
  box : β → Set (Fin 4 → ℝ)
  tgt : β → RecTargetE σs ιr ιe
  hcover : ∀ η : Fin 4 → ℝ, Real.sqrt (∑ k, η k ^ 2) ≤ (A l).rH →
    (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (tang (A l).T η) → sumsq (tang (A l).T η) ≤ (A l).R ^ 2 → ∃ b, η ∈ box b
  htransfer : ∀ b, ∀ η ∈ box b, Real.sqrt (∑ k, η k ^ 2) ≤ (A l).rH →
    (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (tang (A l).T η) → sumsq (tang (A l).T η) ≤ (A l).R ^ 2 →
    RecTargetEHolds S A E l (tgt b) η

/-- C2 for an edge ball: the sphere `‖w‖ = r` covered by boxes with targets T1, T2, T3. -/
structure EdgeBoundaryCover {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert)
    (E : ιe → EdgeBallCert) (e : ιe) where
  β : Type
  box : β → Set (Fin 4 → ℝ)
  tgt : β → EdgeTarget σs ιr ιe
  hcover : ∀ w, wnorm w = (E e).r → ∃ b, w ∈ box b
  htransfer : ∀ b, ∀ w ∈ box b, wnorm w = (E e).r → EdgeTargetHolds S A E e (tgt b) w

/-- A seed atlas cover is a cover of the atlas with edge balls. -/
def SeedBoundaryCoverE.ofCover {σs ιr ιe : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert}
    {E : ιe → EdgeBallCert} {j : σs} (B : SeedBoundaryCover S A j) : SeedBoundaryCoverE S A E j where
  β := B.β
  box := B.box
  tgt b := .seed (B.tgt b)
  hcover := B.hcover
  htransfer := B.htransfer

def RecBoundaryCoverE.ofCover {σs ιr ιe : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert}
    {E : ιe → EdgeBallCert} {l : ιr} (B : RecBoundaryCover S A l) : RecBoundaryCoverE S A E l where
  β := B.β
  box := B.box
  tgt b := .old (B.tgt b)
  hcover := B.hcover
  htransfer := B.htransfer

/-! ### The certificate -/

/-- **The seed atlas certificate with edge balls** (SPEC §10). -/
structure EdgeAtlasCertificate where
  σs : Type
  [finS : Finite σs]
  S : σs → SeedBallCert
  ιr : Type
  [finR : Finite ιr]
  A : ιr → RecordCert
  ιe : Type
  [finE : Finite ιe]
  E : ιe → EdgeBallCert
  seedBoundary : ∀ j, Nonempty (SeedBoundaryCoverE S A E j)
  recBoundary : ∀ l, Nonempty (RecBoundaryCoverE S A E l)
  edgeBoundary : ∀ e, Nonempty (EdgeBoundaryCover S A E e)
  tao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K
  fourier : ∃ e, CoveredMatrix (E e).Ball fourierHadamard.1

/-- The points of the atlas: seed ball images, record balls and edge ball images. -/
def EdgeAtlasBall {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (E : ιe → EdgeBallCert)
    (K : Mat6) : Prop :=
  (∃ j, (S j).Ball K) ∨ InAtlas A K ∨ ∃ e, (E e).Ball K

theorem edgeAtlas_excluded {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert)
    (E : ιe → EdgeBallCert) : ∀ K, EdgeAtlasBall S A E K → Hadamard6.IsHadamard K → ¬ QuartetEdge K := by
  rintro K (⟨j, hK⟩ | hK | ⟨e, hK⟩) hH
  · exact (S j).excludes hK
  · exact atlas_excluded A K hK hH
  · exact (E e).excludes hK

theorem isCompact_edgeAtlasBall {σs ιr ιe : Type} [Finite σs] [Finite ιr] [Finite ιe] (S : σs → SeedBallCert)
    (A : ιr → RecordCert) (E : ιe → EdgeBallCert) : IsCompact {K : Mat6 | EdgeAtlasBall S A E K} := by
  have e : {K : Mat6 | EdgeAtlasBall S A E K} = {K | SeedAtlasBall S A K} ∪ ⋃ e, {K | (E e).Ball K} := by
    ext K
    simp only [EdgeAtlasBall, SeedAtlasBall, Set.mem_ofPred_eq, Set.mem_union, Set.mem_iUnion]
    tauto
  rw [e]
  exact (isCompact_seedAtlasBall S A).union (isCompact_iUnion fun e => (E e).isCompact_ball)

section Open

variable {σs ιr ιe : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (E : ιe → EdgeBallCert)

/-- **Every covered matrix is an interior point**, by the boundary transfers. -/
theorem covered_iff_interiorTargetE (hs : ∀ j, Nonempty (SeedBoundaryCoverE S A E j))
    (hr : ∀ l, Nonempty (RecBoundaryCoverE S A E l)) (he : ∀ e, Nonempty (EdgeBoundaryCover S A E e)) {M : Mat6}
    (hM : Hadamard6.IsHadamard M) : CoveredMatrix (EdgeAtlasBall S A E) M ↔ InteriorTargetE S A E M := by
  constructor
  · rintro ⟨G, K, hG, hK, hGK⟩
    obtain ⟨k, rfl⟩ := inGamma_iff.mp hG
    have hKH : Hadamard6.IsHadamard K := isHadamard_of_equivalent hGK (isHadamard_gfun hM k)
    refine InteriorTargetE.of_gfun (k := k) (InteriorTargetE.of_equivalent ?_ hGK)
    rcases hK with ⟨j, -, w, hw, hm⟩ | ⟨l, δ, hδ, hR, rfl⟩ | ⟨e, w, hw, rfl⟩
    · rcases hw.lt_or_eq with hlt | heq
      · exact ⟨0, Or.inl ⟨j, (S j).θ w, ⟨w, hlt, rfl⟩, (S j).strict hw, K, hKH, hm, equivalent_refl K⟩⟩
      · obtain ⟨B⟩ := hs j
        obtain ⟨b, hb⟩ := B.hcover w heq
        exact (B.htransfer b w hb heq).interior hw hKH hm
    · rcases hR.lt_or_eq with hlt | heq
      · exact ⟨0, Or.inr (Or.inl ⟨l, δ, hδ, hlt, equivalent_refl _⟩)⟩
      · obtain ⟨η, ν, hδe, hνh, hνT, hη, hν', hsplit⟩ := RecordCert.decompN (A l) hδ hR hKH
        have h1 : sumsq δ = (A l).R ^ 2 := by rw [← heq, frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg δ)]
        have hshell : (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (tang (A l).T η) := by
          have h2 : sumsq ν ≤ (A l).n ^ 2 := by
            have := pow_le_pow_left₀ (frob_nonneg ν) hν' 2
            rwa [frob_eq_sqrt, Real.sq_sqrt (sumsq_nonneg ν)] at this
          linarith
        have hshell' : sumsq (tang (A l).T η) ≤ (A l).R ^ 2 := by linarith [sumsq_nonneg ν]
        have hRb : frob (tang (A l).T η + ν) = (A l).R := by rw [← hδe]; exact heq
        obtain ⟨B⟩ := hr l
        obtain ⟨b, hb⟩ := B.hcover η hη hshell hshell'
        have e : (A l).P + δ = (A l).P + tang (A l).T η + ν := by rw [hδe, ← add_assoc]
        rw [e] at hKH ⊢
        exact (B.htransfer b η hb hη hshell hshell').interior hνh hνT hν' hRb hKH
    · rcases hw.lt_or_eq with hlt | heq
      · exact InteriorTargetE.of_edge ⟨w, hlt, equivalent_refl _⟩
      · obtain ⟨B⟩ := he e
        obtain ⟨b, hb⟩ := B.hcover w heq
        exact (B.htransfer b w hb heq).interior hw
  · rintro ⟨k, ⟨l, hl⟩ | ⟨l, δ, hδ, hlt, he⟩ | ⟨e, hl⟩⟩
    · obtain ⟨K, hK, hMK⟩ := hl.ball
      exact ⟨gfun k M, K, inGamma_iff.mpr ⟨k, rfl⟩, Or.inl ⟨l, hK⟩, hMK⟩
    · exact ⟨gfun k M, _, inGamma_iff.mpr ⟨k, rfl⟩, Or.inr (Or.inl ⟨l, δ, hδ, hlt.le, rfl⟩), he⟩
    · obtain ⟨K, hK, hMK⟩ := hl.ball
      exact ⟨gfun k M, K, inGamma_iff.mpr ⟨k, rfl⟩, Or.inr (Or.inr ⟨e, hK⟩), hMK⟩

/-- **Interior points form an open set:** seed interiors by the open-map lemma, record interiors as before, edge
interiors by the inverse function theorem and (G). -/
theorem isOpen_interiorTargetE : IsOpen {M : Had6 | InteriorTargetE S A E M.1} := by
  have e : {M : Had6 | InteriorTargetE S A E M.1} = {M : Had6 | InteriorTarget S A M.1} ∪
      ⋃ k, ⋃ e, gHad k ⁻¹' {M : Had6 | EdgeInterior (E e) M.1} := by
    ext M
    simp only [InteriorTargetE, InteriorTarget, Set.mem_ofPred_eq, Set.mem_union, Set.mem_iUnion,
      Set.mem_preimage, gHad]
    constructor
    · rintro ⟨k, h | h | h⟩
      · exact Or.inl ⟨k, Or.inl h⟩
      · exact Or.inl ⟨k, Or.inr h⟩
      · obtain ⟨e, h⟩ := h; exact Or.inr ⟨k, e, h⟩
    · rintro (⟨k, h | h⟩ | ⟨k, e, h⟩)
      · exact ⟨k, Or.inl h⟩
      · exact ⟨k, Or.inr (Or.inl h)⟩
      · exact ⟨k, Or.inr (Or.inr ⟨e, h⟩)⟩
  rw [e]
  exact (isOpen_interiorTarget S A).union (isOpen_iUnion fun k => isOpen_iUnion fun e =>
    (isOpen_edgeInterior (E e)).preimage (continuous_gHad k))

end Open

namespace EdgeAtlasCertificate

variable (C : EdgeAtlasCertificate)

/-- The points of the certificate's atlas. -/
def Ball : Mat6 → Prop := EdgeAtlasBall C.S C.A C.E

/-- **The covered classes `W` are clopen.** -/
theorem clopen : RecordClopen C.Ball := by
  have := C.finS
  have := C.finR
  have := C.finE
  have hpre : hadamardQuotient ⁻¹' CoveredClasses C.Ball = {M : Had6 | CoveredMatrix C.Ball M.1} := rfl
  constructor
  · rw [← isQuotientMap_hadamardQuotient.isClosed_preimage, hpre]
    exact isClosed_covered_of_compact {K | C.Ball K} (isCompact_edgeAtlasBall C.S C.A C.E)
  · rw [← isQuotientMap_hadamardQuotient.isOpen_preimage, hpre]
    convert isOpen_interiorTargetE C.S C.A C.E using 1
    ext M
    exact covered_iff_interiorTargetE C.S C.A C.E C.seedBoundary C.recBoundary C.edgeBoundary M.2

/-- `F6` is covered (an edge ball). -/
theorem fourierAnchor : FourierAnchorCertificate C.Ball := by
  obtain ⟨e, G, K, hG, hK, hGK⟩ := C.fourier
  exact ⟨G, K, hG, Or.inr (Or.inr ⟨e, hK⟩), hGK⟩

theorem excluded : ∀ K, C.Ball K → Hadamard6.IsHadamard K → ¬ QuartetEdge K :=
  edgeAtlas_excluded C.S C.A C.E

theorem taoExcluded (C : EdgeAtlasCertificate) : ∀ H, Hadamard6.IsHadamard H → IsTaoOrbit H → ¬ QuartetEdge H :=
  atlas_taoExcluded C.A C.tao

end EdgeAtlasCertificate

/-- `F6` from an edge ball whose chart passes through it: `F6 ≅ e^{iQ(w)}` for some `‖w‖ ≤ r`. -/
theorem fourier_of_edge {E : EdgeBallCert} {w : Fin 4 → ℝ} (hw : wnorm w ≤ E.r)
    (h : Equivalent fourierHadamard.1 (phaseMat (E.Q w))) : CoveredMatrix E.Ball fourierHadamard.1 :=
  ⟨fourierHadamard.1, _, Or.inl rfl, ⟨w, hw, rfl⟩, h⟩

end NoFourMUBs.SeedAtlas
