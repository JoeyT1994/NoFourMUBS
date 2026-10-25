import KernelAtlas.Edge.Source
import NoFourMUBs.SeedAtlas.EdgeXFinal

/-! The checked edge ball and its boundary join the existing seed and record certificates. -/

open Hadamard6 NoFourMUBs.SeedAtlas NoFourMUBs.Step2 NoFourMUBs.Step2Topology

noncomputable section

namespace NoFourMUBs.KernelAtlas.Edge

/-- A single generated edge ball replaces the Fourier record in the finite atlas. -/
def singleEdgeAtlas {σs ιr : Type} [Finite σs] [Finite ιr]
    (S : σs → SeedBallCert) (A : ιr → RecordCert) (E : EdgeX.EdgeBallCert)
    (hseed : ∀ j, Nonempty (EdgeX.SeedBoundaryCoverE S A (fun _ : Unit => E) j))
    (hrec : ∀ l, Nonempty (EdgeX.RecBoundaryCoverE S A (fun _ : Unit => E) l))
    (hedge : Nonempty (EdgeX.EdgeBoundaryCover S A (fun _ : Unit => E) ()))
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hfourier : CoveredMatrix E.Ball fourierHadamard.1) : EdgeX.EdgeAtlasCertificate where
  σs := σs
  S := S
  ιr := ιr
  A := A
  ιe := Unit
  E := fun _ => E
  seedBoundary := hseed
  recBoundary := hrec
  edgeBoundary := fun _ => hedge
  tao := htao
  fourier := ⟨(), hfourier⟩

/-- All atlas inputs remain explicit; the edge's local analytic obligations are already in `E`. -/
theorem no_four_mubs_of_edge {σs ιr : Type} [Finite σs] [Finite ιr]
    (S : σs → SeedBallCert) (A : ιr → RecordCert) (E : EdgeX.EdgeBallCert)
    (hseed : ∀ j, Nonempty (EdgeX.SeedBoundaryCoverE S A (fun _ : Unit => E) j))
    (hrec : ∀ l, Nonempty (EdgeX.RecBoundaryCoverE S A (fun _ : Unit => E) l))
    (hedge : Nonempty (EdgeX.EdgeBoundaryCover S A (fun _ : Unit => E) ()))
    (htao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (hfourier : CoveredMatrix E.Ball fourierHadamard.1) : ¬ FourMUBs :=
  EdgeXFinal.no_four_mubs_seed (singleEdgeAtlas S A E hseed hrec hedge htao hfourier)

end NoFourMUBs.KernelAtlas.Edge
