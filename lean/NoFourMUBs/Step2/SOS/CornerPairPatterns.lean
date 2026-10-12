import OAI.Analysis.MutuallyUnbiased.Moments.SmallPartitions

/-! The 34 overlap patterns already used by the selected SOS target.
Each triple is injective; the two triples may overlap in any positions.
The OAI equality-pattern representation is reused unchanged. -/

namespace NoFourMUBs.Step2.SOS.CornerPairs
open OAI.MUB6.EqualityPatterns
set_option maxRecDepth 20000
set_option maxHeartbeats 5000000

def blocks : Fin 34 → ℕ := ![6, 5, 5, 5, 5, 4, 4, 5, 4, 4, 5, 4, 4, 5, 4, 4, 4, 3, 4, 3, 5, 4, 4, 4, 3, 4, 3, 5, 4, 4, 4, 3, 4, 3]

def raw : Fin 34 → Fin 6 → ℕ := ![![0, 1, 2, 3, 4, 5], ![0, 1, 2, 3, 4, 0], ![0, 1, 2, 3, 4, 1], ![0, 1, 2, 3, 4, 2], ![0, 1, 2, 3, 0, 4], ![0, 1, 2, 3, 0, 1], ![0, 1, 2, 3, 0, 2], ![0, 1, 2, 3, 1, 4], ![0, 1, 2, 3, 1, 0], ![0, 1, 2, 3, 1, 2], ![0, 1, 2, 3, 2, 4], ![0, 1, 2, 3, 2, 0], ![0, 1, 2, 3, 2, 1], ![0, 1, 2, 0, 3, 4], ![0, 1, 2, 0, 3, 1], ![0, 1, 2, 0, 3, 2], ![0, 1, 2, 0, 1, 3], ![0, 1, 2, 0, 1, 2], ![0, 1, 2, 0, 2, 3], ![0, 1, 2, 0, 2, 1], ![0, 1, 2, 1, 3, 4], ![0, 1, 2, 1, 3, 0], ![0, 1, 2, 1, 3, 2], ![0, 1, 2, 1, 0, 3], ![0, 1, 2, 1, 0, 2], ![0, 1, 2, 1, 2, 3], ![0, 1, 2, 1, 2, 0], ![0, 1, 2, 2, 3, 4], ![0, 1, 2, 2, 3, 0], ![0, 1, 2, 2, 3, 1], ![0, 1, 2, 2, 0, 3], ![0, 1, 2, 2, 0, 1], ![0, 1, 2, 2, 1, 3], ![0, 1, 2, 2, 1, 0]]

def label (p : Fin 34) (i : Fin 6) : Fin (blocks p) :=
  ⟨raw p i, by fin_cases p <;> fin_cases i <;> decide +kernel⟩

def family : Family (Fin 6) (Fin 34) where
  blocks := blocks
  label := label
  onto := by decide +kernel
  unique := by decide +kernel

theorem first_injective (p : Fin 34) :
    Function.Injective (fun i : Fin 3 => family.label p (Fin.castAdd 3 i)) := by
  revert p
  decide +kernel

theorem second_injective (p : Fin 34) :
    Function.Injective (fun i : Fin 3 => family.label p (Fin.natAdd 3 i)) := by
  revert p
  decide +kernel

theorem covers_injective_halves {B : Type*} (f : Fin 6 → B)
    (hfirst : Function.Injective (fun i : Fin 3 => f (Fin.castAdd 3 i)))
    (hsecond : Function.Injective (fun i : Fin 3 => f (Fin.natAdd 3 i))) :
    ∃ p, ∀ i j, family.label p i = family.label p j ↔ f i = f j := by
  classical
  have h10 : f 1 ≠ f 0 := fun h =>
    (by decide : (1 : Fin 3) ≠ 0) (hfirst h)
  have h20 : f 2 ≠ f 0 := fun h =>
    (by decide : (2 : Fin 3) ≠ 0) (hfirst h)
  have h21 : f 2 ≠ f 1 := fun h =>
    (by decide : (2 : Fin 3) ≠ 1) (hfirst h)
  have h43 : f 4 ≠ f 3 := fun h =>
    (by decide : (1 : Fin 3) ≠ 0) (hsecond h)
  have h53 : f 5 ≠ f 3 := fun h =>
    (by decide : (2 : Fin 3) ≠ 0) (hsecond h)
  have h54 : f 5 ≠ f 4 := fun h =>
    (by decide : (2 : Fin 3) ≠ 1) (hsecond h)
  by_cases h30 : f 3 = f 0
  ·
    have h40 : f 4 ≠ f 0 := fun h =>
      h43 (h.trans h30.symm)
    by_cases h41 : f 4 = f 1
    ·
      have h50 : f 5 ≠ f 0 := fun h =>
        h53 (h.trans h30.symm)
      have h51 : f 5 ≠ f 1 := fun h =>
        h54 (h.trans h41.symm)
      by_cases h52 : f 5 = f 2
      ·
        refine ⟨17, ?_⟩
        simp only [family, label, Fin.mk.injEq]
        change ∀ i j, (![0, 1, 2, 0, 1, 2] : Fin 6 → ℕ) i = ![0, 1, 2, 0, 1, 2] j ↔ f i = f j
        intro i j
        fin_cases i <;> fin_cases j <;>
          simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
      ·
        refine ⟨16, ?_⟩
        simp only [family, label, Fin.mk.injEq]
        change ∀ i j, (![0, 1, 2, 0, 1, 3] : Fin 6 → ℕ) i = ![0, 1, 2, 0, 1, 3] j ↔ f i = f j
        intro i j
        fin_cases i <;> fin_cases j <;>
          simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
    ·
      by_cases h42 : f 4 = f 2
      ·
        have h50 : f 5 ≠ f 0 := fun h =>
          h53 (h.trans h30.symm)
        have h52 : f 5 ≠ f 2 := fun h =>
          h54 (h.trans h42.symm)
        by_cases h51 : f 5 = f 1
        ·
          refine ⟨19, ?_⟩
          simp only [family, label, Fin.mk.injEq]
          change ∀ i j, (![0, 1, 2, 0, 2, 1] : Fin 6 → ℕ) i = ![0, 1, 2, 0, 2, 1] j ↔ f i = f j
          intro i j
          fin_cases i <;> fin_cases j <;>
            simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
        ·
          refine ⟨18, ?_⟩
          simp only [family, label, Fin.mk.injEq]
          change ∀ i j, (![0, 1, 2, 0, 2, 3] : Fin 6 → ℕ) i = ![0, 1, 2, 0, 2, 3] j ↔ f i = f j
          intro i j
          fin_cases i <;> fin_cases j <;>
            simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
      ·
        have h50 : f 5 ≠ f 0 := fun h =>
          h53 (h.trans h30.symm)
        by_cases h51 : f 5 = f 1
        ·
          refine ⟨14, ?_⟩
          simp only [family, label, Fin.mk.injEq]
          change ∀ i j, (![0, 1, 2, 0, 3, 1] : Fin 6 → ℕ) i = ![0, 1, 2, 0, 3, 1] j ↔ f i = f j
          intro i j
          fin_cases i <;> fin_cases j <;>
            simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
        ·
          by_cases h52 : f 5 = f 2
          ·
            refine ⟨15, ?_⟩
            simp only [family, label, Fin.mk.injEq]
            change ∀ i j, (![0, 1, 2, 0, 3, 2] : Fin 6 → ℕ) i = ![0, 1, 2, 0, 3, 2] j ↔ f i = f j
            intro i j
            fin_cases i <;> fin_cases j <;>
              simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
          ·
            refine ⟨13, ?_⟩
            simp only [family, label, Fin.mk.injEq]
            change ∀ i j, (![0, 1, 2, 0, 3, 4] : Fin 6 → ℕ) i = ![0, 1, 2, 0, 3, 4] j ↔ f i = f j
            intro i j
            fin_cases i <;> fin_cases j <;>
              simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
  ·
    by_cases h31 : f 3 = f 1
    ·
      have h41 : f 4 ≠ f 1 := fun h =>
        h43 (h.trans h31.symm)
      by_cases h40 : f 4 = f 0
      ·
        have h50 : f 5 ≠ f 0 := fun h =>
          h54 (h.trans h40.symm)
        have h51 : f 5 ≠ f 1 := fun h =>
          h53 (h.trans h31.symm)
        by_cases h52 : f 5 = f 2
        ·
          refine ⟨24, ?_⟩
          simp only [family, label, Fin.mk.injEq]
          change ∀ i j, (![0, 1, 2, 1, 0, 2] : Fin 6 → ℕ) i = ![0, 1, 2, 1, 0, 2] j ↔ f i = f j
          intro i j
          fin_cases i <;> fin_cases j <;>
            simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
        ·
          refine ⟨23, ?_⟩
          simp only [family, label, Fin.mk.injEq]
          change ∀ i j, (![0, 1, 2, 1, 0, 3] : Fin 6 → ℕ) i = ![0, 1, 2, 1, 0, 3] j ↔ f i = f j
          intro i j
          fin_cases i <;> fin_cases j <;>
            simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
      ·
        by_cases h42 : f 4 = f 2
        ·
          have h51 : f 5 ≠ f 1 := fun h =>
            h53 (h.trans h31.symm)
          have h52 : f 5 ≠ f 2 := fun h =>
            h54 (h.trans h42.symm)
          by_cases h50 : f 5 = f 0
          ·
            refine ⟨26, ?_⟩
            simp only [family, label, Fin.mk.injEq]
            change ∀ i j, (![0, 1, 2, 1, 2, 0] : Fin 6 → ℕ) i = ![0, 1, 2, 1, 2, 0] j ↔ f i = f j
            intro i j
            fin_cases i <;> fin_cases j <;>
              simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
          ·
            refine ⟨25, ?_⟩
            simp only [family, label, Fin.mk.injEq]
            change ∀ i j, (![0, 1, 2, 1, 2, 3] : Fin 6 → ℕ) i = ![0, 1, 2, 1, 2, 3] j ↔ f i = f j
            intro i j
            fin_cases i <;> fin_cases j <;>
              simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
        ·
          have h51 : f 5 ≠ f 1 := fun h =>
            h53 (h.trans h31.symm)
          by_cases h50 : f 5 = f 0
          ·
            refine ⟨21, ?_⟩
            simp only [family, label, Fin.mk.injEq]
            change ∀ i j, (![0, 1, 2, 1, 3, 0] : Fin 6 → ℕ) i = ![0, 1, 2, 1, 3, 0] j ↔ f i = f j
            intro i j
            fin_cases i <;> fin_cases j <;>
              simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
          ·
            by_cases h52 : f 5 = f 2
            ·
              refine ⟨22, ?_⟩
              simp only [family, label, Fin.mk.injEq]
              change ∀ i j, (![0, 1, 2, 1, 3, 2] : Fin 6 → ℕ) i = ![0, 1, 2, 1, 3, 2] j ↔ f i = f j
              intro i j
              fin_cases i <;> fin_cases j <;>
                simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
            ·
              refine ⟨20, ?_⟩
              simp only [family, label, Fin.mk.injEq]
              change ∀ i j, (![0, 1, 2, 1, 3, 4] : Fin 6 → ℕ) i = ![0, 1, 2, 1, 3, 4] j ↔ f i = f j
              intro i j
              fin_cases i <;> fin_cases j <;>
                simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
    ·
      by_cases h32 : f 3 = f 2
      ·
        have h42 : f 4 ≠ f 2 := fun h =>
          h43 (h.trans h32.symm)
        by_cases h40 : f 4 = f 0
        ·
          have h50 : f 5 ≠ f 0 := fun h =>
            h54 (h.trans h40.symm)
          have h52 : f 5 ≠ f 2 := fun h =>
            h53 (h.trans h32.symm)
          by_cases h51 : f 5 = f 1
          ·
            refine ⟨31, ?_⟩
            simp only [family, label, Fin.mk.injEq]
            change ∀ i j, (![0, 1, 2, 2, 0, 1] : Fin 6 → ℕ) i = ![0, 1, 2, 2, 0, 1] j ↔ f i = f j
            intro i j
            fin_cases i <;> fin_cases j <;>
              simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
          ·
            refine ⟨30, ?_⟩
            simp only [family, label, Fin.mk.injEq]
            change ∀ i j, (![0, 1, 2, 2, 0, 3] : Fin 6 → ℕ) i = ![0, 1, 2, 2, 0, 3] j ↔ f i = f j
            intro i j
            fin_cases i <;> fin_cases j <;>
              simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
        ·
          by_cases h41 : f 4 = f 1
          ·
            have h51 : f 5 ≠ f 1 := fun h =>
              h54 (h.trans h41.symm)
            have h52 : f 5 ≠ f 2 := fun h =>
              h53 (h.trans h32.symm)
            by_cases h50 : f 5 = f 0
            ·
              refine ⟨33, ?_⟩
              simp only [family, label, Fin.mk.injEq]
              change ∀ i j, (![0, 1, 2, 2, 1, 0] : Fin 6 → ℕ) i = ![0, 1, 2, 2, 1, 0] j ↔ f i = f j
              intro i j
              fin_cases i <;> fin_cases j <;>
                simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
            ·
              refine ⟨32, ?_⟩
              simp only [family, label, Fin.mk.injEq]
              change ∀ i j, (![0, 1, 2, 2, 1, 3] : Fin 6 → ℕ) i = ![0, 1, 2, 2, 1, 3] j ↔ f i = f j
              intro i j
              fin_cases i <;> fin_cases j <;>
                simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
          ·
            have h52 : f 5 ≠ f 2 := fun h =>
              h53 (h.trans h32.symm)
            by_cases h50 : f 5 = f 0
            ·
              refine ⟨28, ?_⟩
              simp only [family, label, Fin.mk.injEq]
              change ∀ i j, (![0, 1, 2, 2, 3, 0] : Fin 6 → ℕ) i = ![0, 1, 2, 2, 3, 0] j ↔ f i = f j
              intro i j
              fin_cases i <;> fin_cases j <;>
                simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
            ·
              by_cases h51 : f 5 = f 1
              ·
                refine ⟨29, ?_⟩
                simp only [family, label, Fin.mk.injEq]
                change ∀ i j, (![0, 1, 2, 2, 3, 1] : Fin 6 → ℕ) i = ![0, 1, 2, 2, 3, 1] j ↔ f i = f j
                intro i j
                fin_cases i <;> fin_cases j <;>
                  simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
              ·
                refine ⟨27, ?_⟩
                simp only [family, label, Fin.mk.injEq]
                change ∀ i j, (![0, 1, 2, 2, 3, 4] : Fin 6 → ℕ) i = ![0, 1, 2, 2, 3, 4] j ↔ f i = f j
                intro i j
                fin_cases i <;> fin_cases j <;>
                  simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
      ·
        by_cases h40 : f 4 = f 0
        ·
          have h50 : f 5 ≠ f 0 := fun h =>
            h54 (h.trans h40.symm)
          by_cases h51 : f 5 = f 1
          ·
            refine ⟨5, ?_⟩
            simp only [family, label, Fin.mk.injEq]
            change ∀ i j, (![0, 1, 2, 3, 0, 1] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 0, 1] j ↔ f i = f j
            intro i j
            fin_cases i <;> fin_cases j <;>
              simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
          ·
            by_cases h52 : f 5 = f 2
            ·
              refine ⟨6, ?_⟩
              simp only [family, label, Fin.mk.injEq]
              change ∀ i j, (![0, 1, 2, 3, 0, 2] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 0, 2] j ↔ f i = f j
              intro i j
              fin_cases i <;> fin_cases j <;>
                simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
            ·
              refine ⟨4, ?_⟩
              simp only [family, label, Fin.mk.injEq]
              change ∀ i j, (![0, 1, 2, 3, 0, 4] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 0, 4] j ↔ f i = f j
              intro i j
              fin_cases i <;> fin_cases j <;>
                simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
        ·
          by_cases h41 : f 4 = f 1
          ·
            have h51 : f 5 ≠ f 1 := fun h =>
              h54 (h.trans h41.symm)
            by_cases h50 : f 5 = f 0
            ·
              refine ⟨8, ?_⟩
              simp only [family, label, Fin.mk.injEq]
              change ∀ i j, (![0, 1, 2, 3, 1, 0] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 1, 0] j ↔ f i = f j
              intro i j
              fin_cases i <;> fin_cases j <;>
                simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
            ·
              by_cases h52 : f 5 = f 2
              ·
                refine ⟨9, ?_⟩
                simp only [family, label, Fin.mk.injEq]
                change ∀ i j, (![0, 1, 2, 3, 1, 2] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 1, 2] j ↔ f i = f j
                intro i j
                fin_cases i <;> fin_cases j <;>
                  simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
              ·
                refine ⟨7, ?_⟩
                simp only [family, label, Fin.mk.injEq]
                change ∀ i j, (![0, 1, 2, 3, 1, 4] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 1, 4] j ↔ f i = f j
                intro i j
                fin_cases i <;> fin_cases j <;>
                  simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
          ·
            by_cases h42 : f 4 = f 2
            ·
              have h52 : f 5 ≠ f 2 := fun h =>
                h54 (h.trans h42.symm)
              by_cases h50 : f 5 = f 0
              ·
                refine ⟨11, ?_⟩
                simp only [family, label, Fin.mk.injEq]
                change ∀ i j, (![0, 1, 2, 3, 2, 0] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 2, 0] j ↔ f i = f j
                intro i j
                fin_cases i <;> fin_cases j <;>
                  simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
              ·
                by_cases h51 : f 5 = f 1
                ·
                  refine ⟨12, ?_⟩
                  simp only [family, label, Fin.mk.injEq]
                  change ∀ i j, (![0, 1, 2, 3, 2, 1] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 2, 1] j ↔ f i = f j
                  intro i j
                  fin_cases i <;> fin_cases j <;>
                    simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
                ·
                  refine ⟨10, ?_⟩
                  simp only [family, label, Fin.mk.injEq]
                  change ∀ i j, (![0, 1, 2, 3, 2, 4] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 2, 4] j ↔ f i = f j
                  intro i j
                  fin_cases i <;> fin_cases j <;>
                    simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
            ·
              by_cases h50 : f 5 = f 0
              ·
                refine ⟨1, ?_⟩
                simp only [family, label, Fin.mk.injEq]
                change ∀ i j, (![0, 1, 2, 3, 4, 0] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 4, 0] j ↔ f i = f j
                intro i j
                fin_cases i <;> fin_cases j <;>
                  simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
              ·
                by_cases h51 : f 5 = f 1
                ·
                  refine ⟨2, ?_⟩
                  simp only [family, label, Fin.mk.injEq]
                  change ∀ i j, (![0, 1, 2, 3, 4, 1] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 4, 1] j ↔ f i = f j
                  intro i j
                  fin_cases i <;> fin_cases j <;>
                    simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
                ·
                  by_cases h52 : f 5 = f 2
                  ·
                    refine ⟨3, ?_⟩
                    simp only [family, label, Fin.mk.injEq]
                    change ∀ i j, (![0, 1, 2, 3, 4, 2] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 4, 2] j ↔ f i = f j
                    intro i j
                    fin_cases i <;> fin_cases j <;>
                      simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)
                  ·
                    refine ⟨0, ?_⟩
                    simp only [family, label, Fin.mk.injEq]
                    change ∀ i j, (![0, 1, 2, 3, 4, 5] : Fin 6 → ℕ) i = ![0, 1, 2, 3, 4, 5] j ↔ f i = f j
                    intro i j
                    fin_cases i <;> fin_cases j <;>
                      simp_all [eq_comm] <;> first | assumption | exact Ne.symm (by assumption)

end NoFourMUBs.Step2.SOS.CornerPairs
