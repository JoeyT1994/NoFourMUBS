import KarlssonLedgerExample

import KarlssonLedgerCell172d38d498f08353

import KarlssonLedgerCell5de3689c236e30ff

import KarlssonLedgerCell5a0de2bc145c20b5

import KarlssonLedgerCelld61da4c05ba85714

import KarlssonLedgerCell853f1b6828477032

import KarlssonLedgerCellf68adeab26c573db

import KarlssonLedgerCellb63f6cdf201602a2

import KarlssonLedgerCell55b1b83ba927c786

import KarlssonLedgerCell178264642840b610

import KarlssonLedgerCelle34647e6c017bbc1

import KarlssonLedgerCelle2b4c571f4eafc9b

import KarlssonLedgerCellae19dccf3d6ecff0

import KarlssonLedgerCellad3fe71ac2a31c3d

import KarlssonLedgerCelleacb82b02e98e3ca

import KarlssonLedgerCell972921e2a64c93ad

import KarlssonLedgerCellc5d9ec0a8ad82425

import KarlssonLedgerCellbec45e7ad259c598

import KarlssonLedgerCell74452479c531d33f

import KarlssonLedgerCell678315416daf29a5

import KarlssonLedgerCell1c83755d267f8ed7

import KarlssonLedgerCell9e1c74815d19e6f3

import KarlssonLedgerCellfcef06c4e6adc657

import KarlssonLedgerCellde5291c0a7739ddc

import KarlssonLedgerCell5a1bc921615d104a

import KarlssonLedgerCell5263f98f7cfebee8

import KarlssonLedgerCelld0811b494a63191f

import KarlssonLedgerCell59b784eb13f2b28a

import KarlssonLedgerCelldd44f60d19f53a4e

set_option autoImplicit false

set_option maxRecDepth 32768

namespace KarlssonLedgerExampleEnclosures

open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonLedger

noncomputable section

def carriers : List CarrierRegion := [KarlssonLedgerCell172d38d498f08353.carrier,KarlssonLedgerCell5de3689c236e30ff.carrier,KarlssonLedgerCell5a0de2bc145c20b5.carrier,KarlssonLedgerCelld61da4c05ba85714.carrier,KarlssonLedgerCell853f1b6828477032.carrier,KarlssonLedgerCellf68adeab26c573db.carrier,KarlssonLedgerCellb63f6cdf201602a2.carrier,KarlssonLedgerCell55b1b83ba927c786.carrier,KarlssonLedgerCell178264642840b610.carrier,KarlssonLedgerCelle34647e6c017bbc1.carrier,KarlssonLedgerCelle2b4c571f4eafc9b.carrier,KarlssonLedgerCellae19dccf3d6ecff0.carrier,KarlssonLedgerCellad3fe71ac2a31c3d.carrier,KarlssonLedgerCelleacb82b02e98e3ca.carrier,KarlssonLedgerCell972921e2a64c93ad.carrier,KarlssonLedgerCellc5d9ec0a8ad82425.carrier,KarlssonLedgerCellbec45e7ad259c598.carrier,KarlssonLedgerCell74452479c531d33f.carrier,KarlssonLedgerCell678315416daf29a5.carrier,KarlssonLedgerCell1c83755d267f8ed7.carrier,KarlssonLedgerCell9e1c74815d19e6f3.carrier,KarlssonLedgerCellfcef06c4e6adc657.carrier,KarlssonLedgerCellde5291c0a7739ddc.carrier,KarlssonLedgerCell5a1bc921615d104a.carrier,KarlssonLedgerCell5263f98f7cfebee8.carrier,KarlssonLedgerCelld0811b494a63191f.carrier,KarlssonLedgerCell59b784eb13f2b28a.carrier,KarlssonLedgerCelldd44f60d19f53a4e.carrier]

theorem literal_count : carriers.length=28 := rfl

theorem frontier_bound : ∀ j ∈ KarlssonLedgerExample.ledger.frontier, ∃ E ∈ carriers, Encloses j E := by

  intro j hj

  rw [KarlssonLedgerExample.literal_frontier] at hj

  simp only [List.mem_cons,List.mem_singleton,List.not_mem_nil,or_false] at hj

  rcases hj with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27

  · subst j

    refine ⟨KarlssonLedgerCell172d38d498f08353.carrier, by simp [carriers], ?_⟩

    change Encloses (rawJob KarlssonLedgerCell172d38d498f08353.input) KarlssonLedgerCell172d38d498f08353.carrier

    exact KarlssonLedgerCell172d38d498f08353.encloses

  · subst j

    refine ⟨KarlssonLedgerCell5de3689c236e30ff.carrier, by simp [carriers], ?_⟩

    change Encloses (rawJob KarlssonLedgerCell5de3689c236e30ff.input) KarlssonLedgerCell5de3689c236e30ff.carrier

    exact KarlssonLedgerCell5de3689c236e30ff.encloses

  · subst j

    refine ⟨KarlssonLedgerCell5a0de2bc145c20b5.carrier, by simp [carriers], ?_⟩

    change Encloses (rawJob KarlssonLedgerCell5a0de2bc145c20b5.input) KarlssonLedgerCell5a0de2bc145c20b5.carrier

    exact KarlssonLedgerCell5a0de2bc145c20b5.encloses

  · subst j

    refine ⟨KarlssonLedgerCelld61da4c05ba85714.carrier, by simp [carriers], ?_⟩

    change Encloses (liftedJob KarlssonLedgerCelld61da4c05ba85714.input) KarlssonLedgerCelld61da4c05ba85714.carrier

    exact KarlssonLedgerCelld61da4c05ba85714.encloses

  · subst j

    refine ⟨KarlssonLedgerCell853f1b6828477032.carrier, by simp [carriers], ?_⟩

    change Encloses (liftedJob KarlssonLedgerCell853f1b6828477032.input) KarlssonLedgerCell853f1b6828477032.carrier

    exact KarlssonLedgerCell853f1b6828477032.encloses

  · subst j

    refine ⟨KarlssonLedgerCellf68adeab26c573db.carrier, by simp [carriers], ?_⟩

    change Encloses (rawJob KarlssonLedgerCellf68adeab26c573db.input) KarlssonLedgerCellf68adeab26c573db.carrier

    exact KarlssonLedgerCellf68adeab26c573db.encloses

  · subst j

    refine ⟨KarlssonLedgerCellb63f6cdf201602a2.carrier, by simp [carriers], ?_⟩

    change Encloses (rawJob KarlssonLedgerCellb63f6cdf201602a2.input) KarlssonLedgerCellb63f6cdf201602a2.carrier

    exact KarlssonLedgerCellb63f6cdf201602a2.encloses

  · subst j

    refine ⟨KarlssonLedgerCell55b1b83ba927c786.carrier, by simp [carriers], ?_⟩

    change Encloses (rawJob KarlssonLedgerCell55b1b83ba927c786.input) KarlssonLedgerCell55b1b83ba927c786.carrier

    exact KarlssonLedgerCell55b1b83ba927c786.encloses

  · subst j

    refine ⟨KarlssonLedgerCell178264642840b610.carrier, by simp [carriers], ?_⟩

    change Encloses (rawJob KarlssonLedgerCell178264642840b610.input) KarlssonLedgerCell178264642840b610.carrier

    exact KarlssonLedgerCell178264642840b610.encloses

  · subst j

    refine ⟨KarlssonLedgerCelle34647e6c017bbc1.carrier, by simp [carriers], ?_⟩

    change Encloses (rawJob KarlssonLedgerCelle34647e6c017bbc1.input) KarlssonLedgerCelle34647e6c017bbc1.carrier

    exact KarlssonLedgerCelle34647e6c017bbc1.encloses

  · subst j

    refine ⟨KarlssonLedgerCelle2b4c571f4eafc9b.carrier, by simp [carriers], ?_⟩

    change Encloses (rawJob KarlssonLedgerCelle2b4c571f4eafc9b.input) KarlssonLedgerCelle2b4c571f4eafc9b.carrier

    exact KarlssonLedgerCelle2b4c571f4eafc9b.encloses

  · subst j

    refine ⟨KarlssonLedgerCellae19dccf3d6ecff0.carrier, by simp [carriers], ?_⟩

    change Encloses (rawJob KarlssonLedgerCellae19dccf3d6ecff0.input) KarlssonLedgerCellae19dccf3d6ecff0.carrier

    exact KarlssonLedgerCellae19dccf3d6ecff0.encloses

  · subst j

    refine ⟨KarlssonLedgerCellad3fe71ac2a31c3d.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCellad3fe71ac2a31c3d.input) KarlssonLedgerCellad3fe71ac2a31c3d.carrier

    exact KarlssonLedgerCellad3fe71ac2a31c3d.encloses

  · subst j

    refine ⟨KarlssonLedgerCelleacb82b02e98e3ca.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCelleacb82b02e98e3ca.input) KarlssonLedgerCelleacb82b02e98e3ca.carrier

    exact KarlssonLedgerCelleacb82b02e98e3ca.encloses

  · subst j

    refine ⟨KarlssonLedgerCell972921e2a64c93ad.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCell972921e2a64c93ad.input) KarlssonLedgerCell972921e2a64c93ad.carrier

    exact KarlssonLedgerCell972921e2a64c93ad.encloses

  · subst j

    refine ⟨KarlssonLedgerCellc5d9ec0a8ad82425.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCellc5d9ec0a8ad82425.input) KarlssonLedgerCellc5d9ec0a8ad82425.carrier

    exact KarlssonLedgerCellc5d9ec0a8ad82425.encloses

  · subst j

    refine ⟨KarlssonLedgerCellbec45e7ad259c598.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCellbec45e7ad259c598.input) KarlssonLedgerCellbec45e7ad259c598.carrier

    exact KarlssonLedgerCellbec45e7ad259c598.encloses

  · subst j

    refine ⟨KarlssonLedgerCell74452479c531d33f.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCell74452479c531d33f.input) KarlssonLedgerCell74452479c531d33f.carrier

    exact KarlssonLedgerCell74452479c531d33f.encloses

  · subst j

    refine ⟨KarlssonLedgerCell678315416daf29a5.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCell678315416daf29a5.input) KarlssonLedgerCell678315416daf29a5.carrier

    exact KarlssonLedgerCell678315416daf29a5.encloses

  · subst j

    refine ⟨KarlssonLedgerCell1c83755d267f8ed7.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCell1c83755d267f8ed7.input) KarlssonLedgerCell1c83755d267f8ed7.carrier

    exact KarlssonLedgerCell1c83755d267f8ed7.encloses

  · subst j

    refine ⟨KarlssonLedgerCell9e1c74815d19e6f3.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCell9e1c74815d19e6f3.input) KarlssonLedgerCell9e1c74815d19e6f3.carrier

    exact KarlssonLedgerCell9e1c74815d19e6f3.encloses

  · subst j

    refine ⟨KarlssonLedgerCellfcef06c4e6adc657.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCellfcef06c4e6adc657.input) KarlssonLedgerCellfcef06c4e6adc657.carrier

    exact KarlssonLedgerCellfcef06c4e6adc657.encloses

  · subst j

    refine ⟨KarlssonLedgerCellde5291c0a7739ddc.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCellde5291c0a7739ddc.input) KarlssonLedgerCellde5291c0a7739ddc.carrier

    exact KarlssonLedgerCellde5291c0a7739ddc.encloses

  · subst j

    refine ⟨KarlssonLedgerCell5a1bc921615d104a.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCell5a1bc921615d104a.input) KarlssonLedgerCell5a1bc921615d104a.carrier

    exact KarlssonLedgerCell5a1bc921615d104a.encloses

  · subst j

    refine ⟨KarlssonLedgerCell5263f98f7cfebee8.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCell5263f98f7cfebee8.input) KarlssonLedgerCell5263f98f7cfebee8.carrier

    exact KarlssonLedgerCell5263f98f7cfebee8.encloses

  · subst j

    refine ⟨KarlssonLedgerCelld0811b494a63191f.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCelld0811b494a63191f.input) KarlssonLedgerCelld0811b494a63191f.carrier

    exact KarlssonLedgerCelld0811b494a63191f.encloses

  · subst j

    refine ⟨KarlssonLedgerCell59b784eb13f2b28a.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCell59b784eb13f2b28a.input) KarlssonLedgerCell59b784eb13f2b28a.carrier

    exact KarlssonLedgerCell59b784eb13f2b28a.encloses

  · subst j

    refine ⟨KarlssonLedgerCelldd44f60d19f53a4e.carrier, by simp [carriers], ?_⟩

    change Encloses (seamJob KarlssonLedgerCelldd44f60d19f53a4e.input) KarlssonLedgerCelldd44f60d19f53a4e.carrier

    exact KarlssonLedgerCelldd44f60d19f53a4e.encloses

theorem physical_cover {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6, OccursAsQuartetEdge (normalized K) ∧
      ∃ E ∈ carriers, CarrierBox E (ClassificationCover.toNumerical K) :=
  exported_ledger_cover KarlssonLedgerExample.ledger carriers frontier_bound hH h₂

#print axioms literal_count

#print axioms frontier_bound

#print axioms physical_cover

end

end KarlssonLedgerExampleEnclosures
