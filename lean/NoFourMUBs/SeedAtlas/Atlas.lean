import NoFourMUBs.SeedAtlas.Transfer
import NoFourMUBs.Step2.FourierAnchor

/-!
# The seed atlas certificate and its clopen covered set (`proof/seed_atlas/SPEC.md` §§3–5, §9)

`SeedAtlasCertificate` bundles:
* finitely many seed balls (`SeedBallCert`, with the enclosure C1 as a hypothesis field), each with a boundary cover
  of its sphere `‖w‖ = r` by boxes with targets T0, T1, T2 (`SeedBoundaryCover`, C2);
* finitely many full-matrix records (the existing `RecordCert`), each with a boundary cover of its shell whose targets
  are records (Lemma 4.1) or seed balls (T1′) (`RecBoundaryCover`);
* Tao's membership and the Fourier anchor `F6`, both in records, exactly as in `AtlasCertificate`.

The covered set is `W = ⋃_j ⋃_{g ∈ Γ} g · f_{o_j}(E_j) ∪ ⋃_l ⋃_{g ∈ Γ} g · [Rec_l]` (`SeedAtlasBall`).

**`W` is clopen** (`SeedAtlasCertificate.clopen`):
* *closed*: the seed ball images are compact, as projections of the closed matched relation over the compact
  `{‖w‖ ≤ r} × Had6` (`isCompact_seedBall`; no continuity of `f_o` is needed), the record images are compact, and
  saturating a compact set by equivalence and `Γ` gives a closed set of classes (`isClosed_covered_of_compact`);
* *open*: every covered matrix is an interior point (`covered_iff_interiorTarget`): an interior seed point is
  one, a boundary seed point transfers by C2 (T0, T1, T2), an interior record point is one and a boundary record point
  transfers by Lemma 4.1 or T1′.  Interior points form an open set: seed interiors by the open-map lemma
  (`isOpen_matchedImage`), record interiors by `isOpen_atlasInterior`.
-/

open Matrix Hadamard6 Set NoFourMUBs.Step2 NoFourMUBs.Step2Topology

noncomputable section

namespace NoFourMUBs.SeedAtlas

/-! ### Boundary covers -/

/-- **C2 for a seed ball** (SPEC §4): the sphere `‖w‖ = r_j` is covered by boxes, each with one target whose claim
holds on the box. -/
structure SeedBoundaryCover {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (j : σs) where
  β : Type
  box : β → Set (Fin 4 → ℝ)
  tgt : β → SeedTarget σs ιr
  hcover : ∀ w, wnorm w = (S j).r → ∃ b, w ∈ box b
  htransfer : ∀ b, ∀ w ∈ box b, wnorm w = (S j).r → SeedTargetHolds S A j (tgt b) w

/-- **C2 for a record** (SPEC §4, FORMAT §6): `η`-boxes covering the shell
`{‖η‖ ≤ r_H, R² − n² ≤ ‖Tη‖² ≤ R²}`, with targets that may also be seed balls (T1′). -/
structure RecBoundaryCover {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (l : ιr) where
  β : Type
  box : β → Set (Fin 4 → ℝ)
  tgt : β → RecTarget σs ιr
  hcover : ∀ η : Fin 4 → ℝ, Real.sqrt (∑ k, η k ^ 2) ≤ (A l).rH →
    (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (tang (A l).T η) → sumsq (tang (A l).T η) ≤ (A l).R ^ 2 → ∃ b, η ∈ box b
  htransfer : ∀ b, ∀ η ∈ box b, Real.sqrt (∑ k, η k ^ 2) ≤ (A l).rH →
    (A l).R ^ 2 - (A l).n ^ 2 ≤ sumsq (tang (A l).T η) → sumsq (tang (A l).T η) ≤ (A l).R ^ 2 →
    RecTargetHolds S A l (tgt b) η

/-- A boundary cover of the current atlas (record targets only) is a record boundary cover. -/
def RecBoundaryCover.ofBoundaryCover {σs ιr : Type} {S : σs → SeedBallCert} {A : ιr → RecordCert} {l : ιr}
    (B : BoundaryCover A l) : RecBoundaryCover S A l where
  β := B.β
  box := B.box
  tgt b := .record (B.tgt b) (B.perm b) (B.wind b)
  hcover η h1 h2 _ := B.hcover η h1 h2
  htransfer b η hη _ _ _ := B.htransfer b η hη

/-! ### The certificate -/

/-- **The seed atlas certificate** (SPEC §9). -/
structure SeedAtlasCertificate where
  σs : Type
  [finS : Finite σs]
  S : σs → SeedBallCert
  ιr : Type
  [finR : Finite ιr]
  A : ιr → RecordCert
  seedBoundary : ∀ j, Nonempty (SeedBoundaryCover S A j)
  recBoundary : ∀ l, Nonempty (RecBoundaryCover S A l)
  tao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K
  fourier : FourierAnchorCertificate (InAtlas A)

/-- The points of the seed atlas: the seed ball images and the record balls. -/
def SeedAtlasBall {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (K : Mat6) : Prop :=
  (∃ j, (S j).Ball K) ∨ InAtlas A K

/-- **Exclusion:** no point of the seed atlas is a quartet edge (Stage C on seed balls and on records). -/
theorem seedAtlas_excluded {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) :
    ∀ K, SeedAtlasBall S A K → Hadamard6.IsHadamard K → ¬ QuartetEdge K := by
  rintro K (⟨j, hK⟩ | hK) hH
  · exact (S j).excludes hK
  · exact atlas_excluded A K hK hH

/-! ### Closed -/

/-- Saturating a compact set of matrices by equivalence and `Γ` gives a closed set of Hadamard matrices. -/
theorem isClosed_covered_of_compact (Ball : Set Mat6) (hBall : IsCompact Ball) :
    IsClosed {M : Had6 | CoveredMatrix (· ∈ Ball) M.1} := by
  set f : Equiv.Perm I6 × Equiv.Perm I6 → ((I6 → ℂ) × (I6 → ℂ)) × Mat6 → Mat6 :=
    fun στ x => Matrix.of fun i j => x.1.1 i * x.2 (στ.1 i) (στ.2 j) * x.1.2 j
  set Sat : Set Mat6 := ⋃ στ, f στ '' ((({r | ∀ i, Complex.normSq (r i) = 1} : Set (I6 → ℂ)) ×ˢ
    ({c | ∀ i, Complex.normSq (c i) = 1} : Set (I6 → ℂ))) ×ˢ Ball)
  have hSat : IsCompact Sat := isCompact_iUnion fun στ => by
    refine ((isCompact_unitVec.prod isCompact_unitVec).prod hBall).image ?_
    refine continuous_pi fun i => continuous_pi fun j => ?_
    exact (((continuous_apply i).comp (continuous_fst.comp continuous_fst)).mul
      ((continuous_apply (στ.2 j)).comp ((continuous_apply (στ.1 i)).comp continuous_snd))).mul
      ((continuous_apply j).comp (continuous_snd.comp continuous_fst))
  have hC : IsClosed (⋃ k, gfun k ⁻¹' Sat) :=
    isClosed_iUnion_of_finite fun k => hSat.isClosed.preimage (continuous_gfun k)
  have heq : {M : Had6 | CoveredMatrix (· ∈ Ball) M.1} = Subtype.val ⁻¹' (⋃ k, gfun k ⁻¹' Sat) := by
    ext M
    simp only [Set.mem_ofPred_eq, Set.mem_preimage]
    constructor
    · rintro ⟨G, K, hG, hK, hGK⟩
      obtain ⟨k, rfl⟩ := inGamma_iff.mp hG
      obtain ⟨σ, τ, r, c, hr, hc, h⟩ := equivalent_equivalence.symm hGK
      refine Set.mem_iUnion.mpr ⟨k, Set.mem_iUnion.mpr ⟨(σ, τ), ((r, c), K), ⟨⟨hr, hc⟩, hK⟩, ?_⟩⟩
      ext i j; exact (h i j).symm
    · intro hM
      obtain ⟨k, hk⟩ := Set.mem_iUnion.mp hM
      obtain ⟨στ, hστ⟩ := Set.mem_iUnion.mp hk
      obtain ⟨⟨⟨r, c⟩, K⟩, ⟨⟨hr, hc⟩, hK⟩, hfx⟩ := hστ
      refine ⟨gfun k M.1, K, inGamma_iff.mpr ⟨k, rfl⟩, hK, ?_⟩
      refine equivalent_equivalence.symm ⟨στ.1, στ.2, r, c, hr, hc, fun i j => ?_⟩
      rw [← hfx]; rfl
  rw [heq]
  exact hC.preimage continuous_subtype_val

lemma isCompact_wball (r : ℝ) : IsCompact {w : Fin 4 → ℝ | wnorm w ≤ r} := by
  refine (isCompact_univ_pi fun _ : Fin 4 => isCompact_Icc (a := -r) (b := r)).of_isClosed_subset
    (isClosed_le continuous_wnorm continuous_const) ?_
  intro w hw k _
  exact abs_le.mp ((abs_le_wnorm w k).trans hw)

/-- **A seed ball image is compact**: the projection of the closed matched relation over `{‖w‖ ≤ r} × Had6`. -/
theorem isCompact_seedBall (S : SeedBallCert) : IsCompact {K : Mat6 | S.Ball K} := by
  have hrel : IsClosed {x : (Fin 4 → ℝ) × Mat6 | MatchedO S.o (seedOf (S.θ x.1)) x.2} :=
    (isClosed_matchedO S.o).preimage
      ((continuous_seedOf.comp (S.continuous_θ.comp continuous_fst)).prodMk continuous_snd)
  have hK : IsCompact (({w : Fin 4 → ℝ | wnorm w ≤ S.r} ×ˢ {K : Mat6 | Hadamard6.IsHadamard K}) ∩
      {x : (Fin 4 → ℝ) × Mat6 | MatchedO S.o (seedOf (S.θ x.1)) x.2}) :=
    ((isCompact_wball S.r).prod isCompact_isHadamard).inter_right hrel
  convert hK.image continuous_snd using 1
  ext K
  simp only [Set.mem_ofPred_eq, Set.mem_image, Set.mem_inter_iff, Set.mem_prod, Prod.exists,
    exists_eq_right, SeedBallCert.Ball]
  constructor
  · rintro ⟨hKH, w, hw, hm⟩; exact ⟨w, ⟨hw, hKH⟩, hm⟩
  · rintro ⟨w, ⟨hw, hKH⟩, hm⟩; exact ⟨hKH, w, hw, hm⟩

theorem isCompact_seedAtlasBall {σs ιr : Type} [Finite σs] [Finite ιr] (S : σs → SeedBallCert)
    (A : ιr → RecordCert) : IsCompact {K : Mat6 | SeedAtlasBall S A K} := by
  have e : {K : Mat6 | SeedAtlasBall S A K} = (⋃ j, {K | (S j).Ball K}) ∪
      ⋃ l, (fun δ => phaseMat ((A l).P + δ)) '' {δ | IsHorizontal δ ∧ frob δ ≤ (A l).R} := by
    ext K
    simp only [SeedAtlasBall, InAtlas, Set.mem_ofPred_eq, Set.mem_union, Set.mem_iUnion, Set.mem_image]
    constructor
    · rintro (h | ⟨l, δ, hδ, hR, rfl⟩)
      · exact Or.inl h
      · exact Or.inr ⟨l, δ, ⟨hδ, hR⟩, rfl⟩
    · rintro (h | ⟨l, δ, ⟨hδ, hR⟩, rfl⟩)
      · exact Or.inl h
      · exact Or.inr ⟨l, δ, hδ, hR, rfl⟩
  rw [e]
  exact (isCompact_iUnion fun j => isCompact_seedBall (S j)).union (isCompact_iUnion fun l =>
    (isCompact_recordBall _).image (continuous_phaseMat.comp (continuous_const.add continuous_id)))

/-! ### Open -/

section Open

variable {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert)

/-- **Every covered matrix is an interior point**, by the boundary transfers. -/
theorem covered_iff_interiorTarget (hs : ∀ j, Nonempty (SeedBoundaryCover S A j))
    (hr : ∀ l, Nonempty (RecBoundaryCover S A l)) {M : Mat6} (hM : Hadamard6.IsHadamard M) :
    CoveredMatrix (SeedAtlasBall S A) M ↔ InteriorTarget S A M := by
  constructor
  · rintro ⟨G, K, hG, hK, hGK⟩
    obtain ⟨k, rfl⟩ := inGamma_iff.mp hG
    have hKH : Hadamard6.IsHadamard K := isHadamard_of_equivalent hGK (isHadamard_gfun hM k)
    refine InteriorTarget.of_gfun (k := k) (InteriorTarget.of_equivalent ?_ hGK)
    rcases hK with ⟨j, -, w, hw, hm⟩ | ⟨l, δ, hδ, hR, rfl⟩
    · rcases hw.lt_or_eq with hlt | heq
      · exact ⟨0, Or.inl ⟨j, (S j).θ w, ⟨w, hlt, rfl⟩, (S j).strict hw, K, hKH, hm, equivalent_refl K⟩⟩
      · obtain ⟨B⟩ := hs j
        obtain ⟨b, hb⟩ := B.hcover w heq
        exact (B.htransfer b w hb heq).interior hw hKH hm
    · rcases hR.lt_or_eq with hlt | heq
      · exact ⟨0, Or.inr ⟨l, δ, hδ, hlt, equivalent_refl _⟩⟩
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
  · rintro ⟨k, ⟨l, hl⟩ | ⟨l, δ, hδ, hlt, he⟩⟩
    · obtain ⟨K, hK, hMK⟩ := hl.ball
      exact ⟨gfun k M, K, inGamma_iff.mpr ⟨k, rfl⟩, Or.inl ⟨l, hK⟩, hMK⟩
    · exact ⟨gfun k M, _, inGamma_iff.mpr ⟨k, rfl⟩, Or.inr ⟨l, δ, hδ, hlt.le, rfl⟩, he⟩

/-- `g` on Hadamard matrices. -/
def gHad (k : Fin 4) (M : Had6) : Had6 := ⟨gfun k M.1, isHadamard_gfun M.2 k⟩

lemma continuous_gHad (k : Fin 4) : Continuous (gHad k) :=
  ((continuous_gfun k).comp continuous_subtype_val).subtype_mk _

/-- **Interior points form an open set:** seed interiors by the open-map lemma, record interiors as before. -/
theorem isOpen_interiorTarget : IsOpen {M : Had6 | InteriorTarget S A M.1} := by
  have e : {M : Had6 | InteriorTarget S A M.1} =
      (⋃ k, ⋃ l, gHad k ⁻¹' {M : Had6 | M.1 ∈ MatchedImage (S l).o (S l).interiorθ}) ∪
        {M : Had6 | M.1 ∈ AtlasInterior A} := by
    ext M
    simp only [InteriorTarget, AtlasInterior, InRecord, Set.mem_ofPred_eq, Set.mem_union, Set.mem_iUnion,
      Set.mem_preimage, gHad, SeedInterior]
    constructor
    · rintro ⟨k, ⟨l, h⟩ | ⟨l, h⟩⟩
      · exact Or.inl ⟨k, l, h⟩
      · obtain ⟨δ, hδ, hlt, he⟩ := h; exact Or.inr ⟨k, l, δ, hδ, hlt, he⟩
    · rintro (⟨k, l, h⟩ | ⟨k, l, δ, hδ, hlt, he⟩)
      · exact ⟨k, Or.inl ⟨l, h⟩⟩
      · exact ⟨k, Or.inr ⟨l, δ, hδ, hlt, he⟩⟩
  rw [e]
  refine (isOpen_iUnion fun k => isOpen_iUnion fun l => ?_).union (isOpen_atlasInterior A)
  exact (isOpen_matchedImage (S l).o (S l).isOpen_interiorθ).preimage (continuous_gHad k)

end Open

/-! ### Clopen -/

namespace SeedAtlasCertificate

variable (C : SeedAtlasCertificate)

/-- The points of the certificate's atlas. -/
def Ball : Mat6 → Prop := SeedAtlasBall C.S C.A

/-- **The covered classes `W` are clopen** (SPEC §5). -/
theorem clopen : RecordClopen C.Ball := by
  have := C.finS
  have := C.finR
  have hpre : hadamardQuotient ⁻¹' CoveredClasses C.Ball = {M : Had6 | CoveredMatrix C.Ball M.1} := rfl
  constructor
  · rw [← isQuotientMap_hadamardQuotient.isClosed_preimage, hpre]
    exact isClosed_covered_of_compact {K | C.Ball K} (isCompact_seedAtlasBall C.S C.A)
  · rw [← isQuotientMap_hadamardQuotient.isOpen_preimage, hpre]
    convert isOpen_interiorTarget C.S C.A using 1
    ext M
    exact covered_iff_interiorTarget C.S C.A C.seedBoundary C.recBoundary M.2

/-- `F6` is covered (its record). -/
theorem fourierAnchor : FourierAnchorCertificate C.Ball := by
  obtain ⟨G, K, hG, hK, hGK⟩ := C.fourier
  exact ⟨G, K, hG, Or.inr hK, hGK⟩

/-- No point of the atlas is a quartet edge. -/
theorem excluded : ∀ K, C.Ball K → Hadamard6.IsHadamard K → ¬ QuartetEdge K :=
  seedAtlas_excluded C.S C.A

/-- Tao's orbit contains no quartet edge (Remark 3.3, Tao's record). -/
theorem taoExcluded (C : SeedAtlasCertificate) : ∀ H, Hadamard6.IsHadamard H → IsTaoOrbit H → ¬ QuartetEdge H :=
  atlas_taoExcluded C.A C.tao

end SeedAtlasCertificate

end NoFourMUBs.SeedAtlas
