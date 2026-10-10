import NoFourMUBs.Record
import NoFourMUBs.Main

/-!
# The atlas discharges the exclusion inputs

An atlas is a family `A : ι → RecordCert` of certified Records.  `InAtlas A K` says `K = e^{i(P_l + δ)}` for some Record
`l` and horizontal `δ` with `‖δ‖ ≤ R_l`.

* `atlas_excluded`: no Hadamard in the atlas is a quartet edge (Lemmas 3.1 and 3.2, `RecordCert.excludes`).
* `atlas_taoExcluded`: if every Tao matrix `taoMatrix ω` (`ω` a primitive cube root of unity) is equivalent to a point
  of some Record, no Hadamard in Tao's orbit is a quartet edge (Remark 3.3).
* `no_four_mubs_of_atlas`: an atlas, the Tao membership and the coverage statement (Steps 1, 2 and 4) give
  **no four MUBs in ℂ⁶**.
-/

open Matrix Hadamard6

namespace NoFourMUBs

/-- `K` is a point of some Record ball of the atlas. -/
def InAtlas {ι : Type*} (A : ι → RecordCert) (K : Mat6) : Prop :=
  ∃ l δ, IsHorizontal δ ∧ frob δ ≤ (A l).R ∧ K = phaseMat ((A l).P + δ)

theorem atlas_excluded {ι : Type*} (A : ι → RecordCert) :
    ∀ K, InAtlas A K → Hadamard6.IsHadamard K → ¬ QuartetEdge K := by
  rintro K ⟨l, δ, hδ, hR, rfl⟩ hH
  exact (A l).excludes hδ hR hH

theorem atlas_taoExcluded {ι : Type*} (A : ι → RecordCert)
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K) :
    ∀ H, Hadamard6.IsHadamard H → IsTaoOrbit H → ¬ QuartetEdge H := by
  rintro H hH ⟨ω, hω, hHT⟩ hq
  obtain ⟨K, hK, hTK⟩ := htao ω hω
  have hHK : Equivalent H K := equivalent_equivalence.trans hHT hTK
  exact atlas_excluded A K hK (isHadamard_of_equivalent hHK hH) (quartetEdge_of_equivalent hHK hq)

/-- **No four MUBs in ℂ⁶**, from a certified atlas, Tao's membership and coverage. -/
theorem no_four_mubs_of_atlas {ι : Type*} (A : ι → RecordCert)
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hcov : ∀ H, Hadamard6.IsHadamard H → ¬ IsTaoOrbit H → ∃ G K, InGamma H G ∧ InAtlas A K ∧ Equivalent G K) :
    ¬ FourMUBs :=
  no_four_mubs ⟨atlas_taoExcluded A htao, hcov, atlas_excluded A⟩

end NoFourMUBs
