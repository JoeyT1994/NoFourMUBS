import NoFourMUBs.Step2.SOS.FrameSignatures
import NoFourMUBs.Step2.FourierModelBridge
import Mathlib.Data.Fintype.EquivFin

/-! Express the existing complementary-block equality in the index type of
the moment certificate. Self-embeddings are permutations by Mathlib's
existing equivalence. -/

noncomputable section
open scoped BigOperators
open Hadamard6
open OAI.MUB6
namespace NoFourMUBs.Step2.SOS

def firstHalf (i : Fin 3) : Coord := FourierBridge.coordinates (.inl i)
def secondHalf (i : Fin 3) : Coord := FourierBridge.coordinates (.inr i)

def sampledBlock (H : CMatrix) (ρ κ : Coord ↪ Coord) (b : Bool) : Mat3 :=
  fun i j => H (ρ (if b then secondHalf i else firstHalf i))
    (κ (if b then secondHalf j else firstHalf j))

def ComplementarySignatures (H : CMatrix) : Prop :=
  ∀ ρ κ : Coord ↪ Coord,
    sideSignature (sampledBlock H ρ κ false) = sideSignature (sampledBlock H ρ κ true)

theorem sameLabels_complementarySignatures {H : Had6} (h : SameLabels H) :
    ComplementarySignatures (FourierBridge.toOAI H.1) := by
  intro ρ κ
  let p : Equiv.Perm I6 := FourierBridge.coordinates.trans
    ((Equiv.embeddingEquivOfFinite Coord ρ).trans FourierBridge.coordinates.symm)
  let q : Equiv.Perm I6 := FourierBridge.coordinates.trans
    ((Equiv.embeddingEquivOfFinite Coord κ).trans FourierBridge.coordinates.symm)
  exact sameLabels_complementary h p q

theorem sideSignature_transpose (B : Mat3) : sideSignature B.transpose = sideSignature B := by
  have hp : permanent3 B.transpose = permanent3 B := by
    rw [permanent3_expand, permanent3_expand]
    simp only [Matrix.transpose_apply]
    ring
  simp only [sideSignature, hp, Matrix.det_transpose, Matrix.transpose_apply]
  rw [Finset.prod_comm]

theorem ComplementarySignatures.transpose {H : CMatrix}
    (h : ComplementarySignatures H) : ComplementarySignatures H.transpose := by
  intro ρ κ
  change sideSignature (sampledBlock H κ ρ false).transpose =
    sideSignature (sampledBlock H κ ρ true).transpose
  simpa only [sideSignature_transpose] using h κ ρ

end NoFourMUBs.Step2.SOS
