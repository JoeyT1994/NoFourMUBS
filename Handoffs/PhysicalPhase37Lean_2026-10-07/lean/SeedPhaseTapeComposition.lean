import SeedPhaseTape

/-! Pure structural composition. Arithmetic is accepted in separate bounded
proofs; these lemmas join already proved Booleans without rechecking the leaves.
This is distinct from the analytic tape-refinement theorem. -/
namespace Seed0024PhaseCore20261007

theorem checkWitnessTape_append (p q : List CellCode) (a b : List WitnessTag)
    (ha : checkWitnessTape p a = true) (hb : checkWitnessTape q b = true) :
    checkWitnessTape (p++q) (a++b) = true := by
  induction a generalizing p with
  | nil =>
      cases p with
      | nil => simpa using hb
      | cons s p => simp [checkWitnessTape] at ha
  | cons tag tags ih =>
      cases p with
      | nil => simp [checkWitnessTape] at ha
      | cons s p =>
          cases tag with
          | midpoint k =>
              simp only [List.cons_append,checkWitnessTape,Bool.and_eq_true] at ha ⊢
              exact ⟨ha.1,ih p ha.2⟩
          | endpoint k r =>
              simp only [List.cons_append,checkWitnessTape,Bool.and_eq_true] at ha ⊢
              exact ⟨ha.1,ih p ha.2⟩
          | accept label =>
              simp only [List.cons_append,checkWitnessTape,Bool.and_eq_true] at ha ⊢
              exact ⟨ha.1,ih p ha.2⟩
          | split =>
              simp only [List.cons_append,checkWitnessTape,Bool.and_eq_true] at ha ⊢
              refine ⟨ha.1,?_⟩
              simpa only [List.append_assoc] using ih (childList s++p) ha.2
#print axioms checkWitnessTape_append

theorem checkWitnessTape_split (s : CellCode) (tags : List WitnessTag)
    (hv : validCheck s = true) (hl : decide (s.level < 7) = true)
    (hc : checkWitnessTape (childList s) tags = true) :
    checkWitnessTape [s] (.split::tags) = true := by
  simpa only [checkWitnessTape,List.append_nil,hv,hl,Bool.true_and] using hc
#print axioms checkWitnessTape_split

end Seed0024PhaseCore20261007
