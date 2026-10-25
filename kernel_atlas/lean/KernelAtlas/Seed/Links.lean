import KernelAtlas.Seed.Assemble
import NoFourMUBs.FinalSeed

/-!
# Links for the final assembly of the kernel seed atlas

* `recLinks_of_t1`: a ball whose transfer sub-boxes are all T1 has no record links to discharge;
* `seed_kernel_of`: the final step — a finite family of kernel seed balls and records with their boundary covers, Tao
  and the Fourier anchor give `¬ FourMUBs` (`FinalSeed.no_four_mubs_seed`).  The generated `SeedA/Final.lean`
  instantiates it.
-/

open NoFourMUBs.SeedAtlas Hadamard6 NoFourMUBs.Step2

namespace NoFourMUBs.KernelAtlas.Seed

/-- Every transfer sub-box of the entries is a T1 box. -/
def allT1 (cs : List CoreD) (E : List SEntry) : Bool :=
  E.all fun e => match e with
    | .sub c si _ _ => (getSub (getCore cs c) si).kind == 1
    | _ => true

lemma recLinks_of_t1 {ιr : Type} (A : ιr → RecordCert) (ofR : ℕ → ιr) {cs : List CoreD} {E : List SEntry}
    (h : allT1 cs E = true) : RecLinks A ofR cs E := by
  intro c si tl b hmem hk
  have := List.all_eq_true.1 h _ hmem
  simp only [beq_iff_eq] at this
  exact absurd this hk

/-- **The final step.** -/
theorem seed_kernel_of {Nb Nr : ℕ} (S : Fin Nb → SeedBallCert) (A : Fin Nr → RecordCert)
    (hb : ∀ j, Nonempty (SeedBoundaryCover S A j)) (hr : ∀ l, Nonempty (RecBoundaryCover S A l))
    (tao : ∀ ω, IsPrimitiveCubicPhase ω → ∃ K, InAtlas A K ∧ Equivalent (taoMatrix ω) K)
    (fourier : NoFourMUBs.Step2.FourierAnchorCertificate (InAtlas A)) : ¬ FourMUBs :=
  FinalSeed.no_four_mubs_seed
    { σs := Fin Nb, S := S, ιr := Fin Nr, A := A, seedBoundary := hb, recBoundary := hr, tao := tao,
      fourier := fourier }

end NoFourMUBs.KernelAtlas.Seed
