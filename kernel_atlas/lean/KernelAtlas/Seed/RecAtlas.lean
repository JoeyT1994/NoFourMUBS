import KernelAtlas.Seed.RecF6.Anchor
import KernelAtlas.Seed.RecFields

/-!
# The record side of the kernel seed atlas

The records of the seed atlas, in the order of FORMAT §2: `records[0]` = F6's record (`fourier_record = 0`), then
Tao's record (FORMAT `tao`, last).  For `SeedA/Records.lean` (`seed_assembly.py`):

* `Nr`, `A : Fin Nr → RecordCert` (`RecF6.cert`, `RecTao.cert`), `ofR`;
* `tao`, `fourier`: the two fields, proved;
* `recBnd_of`: the `recBoundary` field for every record, from F6's record's boundary field (`hF6`).  Tao's is proved
  (empty shell).  F6's is `RecF6.boundary` of the generated `RecF6/BoundaryCover.lean` (`seed_records.py boundary`,
  the certificate's `boundary` groups), whose remaining hypothesis is the T1′ claim of each `T1prime` entry
  (`Seed/T1P*.lean`).
-/

open Hadamard6 NoFourMUBs NoFourMUBs.SeedAtlas NoFourMUBs.Step2

namespace NoFourMUBs.KernelAtlas.Seed.RecAtlas

def Nr : ℕ := 2

/-- The records: F6's record, then Tao's. -/
noncomputable def A (l : Fin Nr) : RecordCert := if l.val = 0 then RecF6.cert else RecTao.cert

def ofR (l : ℕ) : Fin Nr := ⟨l % Nr, Nat.mod_lt _ (by decide)⟩

def iF6 : Fin Nr := ⟨0, by decide⟩
def iTao : Fin Nr := ⟨1, by decide⟩

theorem A_F6 : A iF6 = RecF6.cert := if_pos rfl
theorem A_Tao : A iTao = RecTao.cert := if_neg (by decide)

/-- **The `tao` field.** -/
theorem tao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K :=
  taoField A iTao A_Tao

/-- **The `fourier` field.** -/
theorem fourier : FourierAnchorCertificate (InAtlas A) := RecF6.fourier_cert A iF6 A_F6

/-- **The `recBoundary` field** from F6's record's. -/
theorem recBnd_of {σs : Type} (S : σs → SeedBallCert) (hF6 : Nonempty (RecBoundaryCover S A iF6)) :
    ∀ l, Nonempty (RecBoundaryCover S A l) := by
  intro l
  rcases l with ⟨_ | _ | n, hn⟩
  · exact hF6
  · exact taoRecBoundary S A iTao A_Tao
  · exact absurd hn (by unfold Nr; omega)

end NoFourMUBs.KernelAtlas.Seed.RecAtlas
