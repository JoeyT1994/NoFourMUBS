import KernelAtlas.RecTao.Record
import NoFourMUBs.SeedAtlas.Atlas

/-!
# Tao's record in the seed atlas (FORMAT §2 `tao`)

The seed atlas keeps Tao's zero-dimensional record of `proof/atlas/tao.py` unchanged (centre fl(2πK/3), `R = 0.08`,
label radius 0.03; FORMAT §2 `tao`, SPEC §3), so the kernel record is the old atlas's `RecTao.cert` as is.  For a family
`A` of records with `A l = RecTao.cert`:

* `taoField`: the `tao` field of `SeedAtlasCertificate` (`RecTao.tao`, the exact memberships of `ExactK`);
* `taoRecBoundary`: Tao's record's `recBoundary` field.  Its frame is zero and `n < R`, so its shell is empty
  (`RecTao.boundary`, `Assembly.boundary_zero`); a `BoundaryCover` is a `RecBoundaryCover`
  (`RecBoundaryCover.ofBoundaryCover`).
-/

open Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas

namespace NoFourMUBs.KernelAtlas.Seed

/-- **The `tao` field** for any family containing Tao's record. -/
theorem taoField {ιr : Type} (A : ιr → RecordCert) (l : ιr) (hl : A l = RecTao.cert) :
    ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K :=
  RecTao.tao A l hl

/-- **Tao's record's boundary field** (empty shell). -/
theorem taoRecBoundary {σs ιr : Type} (S : σs → SeedBallCert) (A : ιr → RecordCert) (l : ιr)
    (hl : A l = RecTao.cert) : Nonempty (RecBoundaryCover S A l) := by
  obtain ⟨B⟩ := RecTao.boundary A l hl
  exact ⟨RecBoundaryCover.ofBoundaryCover B⟩

end NoFourMUBs.KernelAtlas.Seed
