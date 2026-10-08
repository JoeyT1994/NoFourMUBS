import KarlssonCertificateReuse

import KarlssonLedgerExampleCertificates

import KarlssonLedgerExampleEnclosures

set_option autoImplicit false

set_option maxRecDepth 32768

namespace KarlssonLedgerExampleReuseQueue

open Hadamard6 Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel

open Mub6.Classification.KarlssonLedger Mub6.Classification.KarlssonCover

open Mub6.Numerical.GraphKernel

noncomputable section

def carriers : List CarrierRegion := [KarlssonLedgerCell172d38d498f08353.carrier,KarlssonLedgerCelld61da4c05ba85714.carrier,KarlssonLedgerCell853f1b6828477032.carrier,KarlssonLedgerCellf68adeab26c573db.carrier,KarlssonLedgerCellb63f6cdf201602a2.carrier,KarlssonLedgerCelle2b4c571f4eafc9b.carrier,KarlssonLedgerCellad3fe71ac2a31c3d.carrier,KarlssonLedgerCelleacb82b02e98e3ca.carrier,KarlssonLedgerCell972921e2a64c93ad.carrier,KarlssonLedgerCellc5d9ec0a8ad82425.carrier,KarlssonLedgerCellbec45e7ad259c598.carrier,KarlssonLedgerCell74452479c531d33f.carrier,KarlssonLedgerCell678315416daf29a5.carrier,KarlssonLedgerCell1c83755d267f8ed7.carrier,KarlssonLedgerCell9e1c74815d19e6f3.carrier,KarlssonLedgerCellfcef06c4e6adc657.carrier,KarlssonLedgerCellde5291c0a7739ddc.carrier,KarlssonLedgerCell5a1bc921615d104a.carrier,KarlssonLedgerCell5263f98f7cfebee8.carrier,KarlssonLedgerCelld0811b494a63191f.carrier,KarlssonLedgerCell59b784eb13f2b28a.carrier,KarlssonLedgerCelldd44f60d19f53a4e.carrier]

theorem distinct_work_items : carriers.length=22 := rfl

theorem leaf_binding_0 : KarlssonLedgerCell172d38d498f08353.carrier = KarlssonLedgerCell172d38d498f08353.carrier := rfl

theorem leaf_binding_1 : KarlssonLedgerCell5de3689c236e30ff.carrier = KarlssonLedgerCell172d38d498f08353.carrier := rfl

theorem leaf_binding_2 : KarlssonLedgerCell5a0de2bc145c20b5.carrier = KarlssonLedgerCell172d38d498f08353.carrier := rfl

theorem leaf_binding_3 : KarlssonLedgerCelld61da4c05ba85714.carrier = KarlssonLedgerCelld61da4c05ba85714.carrier := rfl

theorem leaf_binding_4 : KarlssonLedgerCell853f1b6828477032.carrier = KarlssonLedgerCell853f1b6828477032.carrier := rfl

theorem leaf_binding_5 : KarlssonLedgerCellf68adeab26c573db.carrier = KarlssonLedgerCellf68adeab26c573db.carrier := rfl

theorem leaf_binding_6 : KarlssonLedgerCellb63f6cdf201602a2.carrier = KarlssonLedgerCellb63f6cdf201602a2.carrier := rfl

theorem leaf_binding_7 : KarlssonLedgerCell55b1b83ba927c786.carrier = KarlssonLedgerCellb63f6cdf201602a2.carrier := rfl

theorem leaf_binding_8 : KarlssonLedgerCell178264642840b610.carrier = KarlssonLedgerCellf68adeab26c573db.carrier := rfl

theorem leaf_binding_9 : KarlssonLedgerCelle34647e6c017bbc1.carrier = KarlssonLedgerCellf68adeab26c573db.carrier := rfl

theorem leaf_binding_10 : KarlssonLedgerCelle2b4c571f4eafc9b.carrier = KarlssonLedgerCelle2b4c571f4eafc9b.carrier := rfl

theorem leaf_binding_11 : KarlssonLedgerCellae19dccf3d6ecff0.carrier = KarlssonLedgerCelle2b4c571f4eafc9b.carrier := rfl

theorem leaf_binding_12 : KarlssonLedgerCellad3fe71ac2a31c3d.carrier = KarlssonLedgerCellad3fe71ac2a31c3d.carrier := rfl

theorem leaf_binding_13 : KarlssonLedgerCelleacb82b02e98e3ca.carrier = KarlssonLedgerCelleacb82b02e98e3ca.carrier := rfl

theorem leaf_binding_14 : KarlssonLedgerCell972921e2a64c93ad.carrier = KarlssonLedgerCell972921e2a64c93ad.carrier := rfl

theorem leaf_binding_15 : KarlssonLedgerCellc5d9ec0a8ad82425.carrier = KarlssonLedgerCellc5d9ec0a8ad82425.carrier := rfl

theorem leaf_binding_16 : KarlssonLedgerCellbec45e7ad259c598.carrier = KarlssonLedgerCellbec45e7ad259c598.carrier := rfl

theorem leaf_binding_17 : KarlssonLedgerCell74452479c531d33f.carrier = KarlssonLedgerCell74452479c531d33f.carrier := rfl

theorem leaf_binding_18 : KarlssonLedgerCell678315416daf29a5.carrier = KarlssonLedgerCell678315416daf29a5.carrier := rfl

theorem leaf_binding_19 : KarlssonLedgerCell1c83755d267f8ed7.carrier = KarlssonLedgerCell1c83755d267f8ed7.carrier := rfl

theorem leaf_binding_20 : KarlssonLedgerCell9e1c74815d19e6f3.carrier = KarlssonLedgerCell9e1c74815d19e6f3.carrier := rfl

theorem leaf_binding_21 : KarlssonLedgerCellfcef06c4e6adc657.carrier = KarlssonLedgerCellfcef06c4e6adc657.carrier := rfl

theorem leaf_binding_22 : KarlssonLedgerCellde5291c0a7739ddc.carrier = KarlssonLedgerCellde5291c0a7739ddc.carrier := rfl

theorem leaf_binding_23 : KarlssonLedgerCell5a1bc921615d104a.carrier = KarlssonLedgerCell5a1bc921615d104a.carrier := rfl

theorem leaf_binding_24 : KarlssonLedgerCell5263f98f7cfebee8.carrier = KarlssonLedgerCell5263f98f7cfebee8.carrier := rfl

theorem leaf_binding_25 : KarlssonLedgerCelld0811b494a63191f.carrier = KarlssonLedgerCelld0811b494a63191f.carrier := rfl

theorem leaf_binding_26 : KarlssonLedgerCell59b784eb13f2b28a.carrier = KarlssonLedgerCell59b784eb13f2b28a.carrier := rfl

theorem leaf_binding_27 : KarlssonLedgerCelldd44f60d19f53a4e.carrier = KarlssonLedgerCelldd44f60d19f53a4e.carrier := rfl

theorem every_old_carrier : ∀ E ∈ KarlssonLedgerExampleEnclosures.carriers, ∃ F ∈ carriers, E=F := by

  intro E hE

  simp only [KarlssonLedgerExampleEnclosures.carriers,List.mem_cons,List.mem_singleton,List.not_mem_nil,or_false] at hE

  rcases hE with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27

  · subst E; exact ⟨KarlssonLedgerCell172d38d498f08353.carrier, by simp [carriers], leaf_binding_0⟩

  · subst E; exact ⟨KarlssonLedgerCell172d38d498f08353.carrier, by simp [carriers], leaf_binding_1⟩

  · subst E; exact ⟨KarlssonLedgerCell172d38d498f08353.carrier, by simp [carriers], leaf_binding_2⟩

  · subst E; exact ⟨KarlssonLedgerCelld61da4c05ba85714.carrier, by simp [carriers], leaf_binding_3⟩

  · subst E; exact ⟨KarlssonLedgerCell853f1b6828477032.carrier, by simp [carriers], leaf_binding_4⟩

  · subst E; exact ⟨KarlssonLedgerCellf68adeab26c573db.carrier, by simp [carriers], leaf_binding_5⟩

  · subst E; exact ⟨KarlssonLedgerCellb63f6cdf201602a2.carrier, by simp [carriers], leaf_binding_6⟩

  · subst E; exact ⟨KarlssonLedgerCellb63f6cdf201602a2.carrier, by simp [carriers], leaf_binding_7⟩

  · subst E; exact ⟨KarlssonLedgerCellf68adeab26c573db.carrier, by simp [carriers], leaf_binding_8⟩

  · subst E; exact ⟨KarlssonLedgerCellf68adeab26c573db.carrier, by simp [carriers], leaf_binding_9⟩

  · subst E; exact ⟨KarlssonLedgerCelle2b4c571f4eafc9b.carrier, by simp [carriers], leaf_binding_10⟩

  · subst E; exact ⟨KarlssonLedgerCelle2b4c571f4eafc9b.carrier, by simp [carriers], leaf_binding_11⟩

  · subst E; exact ⟨KarlssonLedgerCellad3fe71ac2a31c3d.carrier, by simp [carriers], leaf_binding_12⟩

  · subst E; exact ⟨KarlssonLedgerCelleacb82b02e98e3ca.carrier, by simp [carriers], leaf_binding_13⟩

  · subst E; exact ⟨KarlssonLedgerCell972921e2a64c93ad.carrier, by simp [carriers], leaf_binding_14⟩

  · subst E; exact ⟨KarlssonLedgerCellc5d9ec0a8ad82425.carrier, by simp [carriers], leaf_binding_15⟩

  · subst E; exact ⟨KarlssonLedgerCellbec45e7ad259c598.carrier, by simp [carriers], leaf_binding_16⟩

  · subst E; exact ⟨KarlssonLedgerCell74452479c531d33f.carrier, by simp [carriers], leaf_binding_17⟩

  · subst E; exact ⟨KarlssonLedgerCell678315416daf29a5.carrier, by simp [carriers], leaf_binding_18⟩

  · subst E; exact ⟨KarlssonLedgerCell1c83755d267f8ed7.carrier, by simp [carriers], leaf_binding_19⟩

  · subst E; exact ⟨KarlssonLedgerCell9e1c74815d19e6f3.carrier, by simp [carriers], leaf_binding_20⟩

  · subst E; exact ⟨KarlssonLedgerCellfcef06c4e6adc657.carrier, by simp [carriers], leaf_binding_21⟩

  · subst E; exact ⟨KarlssonLedgerCellde5291c0a7739ddc.carrier, by simp [carriers], leaf_binding_22⟩

  · subst E; exact ⟨KarlssonLedgerCell5a1bc921615d104a.carrier, by simp [carriers], leaf_binding_23⟩

  · subst E; exact ⟨KarlssonLedgerCell5263f98f7cfebee8.carrier, by simp [carriers], leaf_binding_24⟩

  · subst E; exact ⟨KarlssonLedgerCelld0811b494a63191f.carrier, by simp [carriers], leaf_binding_25⟩

  · subst E; exact ⟨KarlssonLedgerCell59b784eb13f2b28a.carrier, by simp [carriers], leaf_binding_26⟩

  · subst E; exact ⟨KarlssonLedgerCelldd44f60d19f53a4e.carrier, by simp [carriers], leaf_binding_27⟩

theorem all_first_rows : ∀ E ∈ carriers, StandardFirstRow E := by

  intro E hE

  simp only [carriers,List.mem_cons,List.mem_singleton,List.not_mem_nil,or_false] at hE

  rcases hE with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

  · subst E; exact KarlssonLedgerExampleCertificates.all_first_rows _ (by simp [KarlssonLedgerExampleEnclosures.carriers])

theorem frontier_bound : ∀ j ∈ KarlssonLedgerExample.ledger.frontier,
    ∃ E ∈ carriers, Encloses j E := by
  intro j hj
  obtain ⟨E,hE,hencl⟩ := KarlssonLedgerExampleEnclosures.frontier_bound j hj
  obtain ⟨F,hF,heq⟩ := every_old_carrier E hE
  exact ⟨F,hF,heq ▸ hencl⟩

theorem physical_cover {H : BasisMatrix} (hH : OccursAsQuartetEdge H)
    (h₂ : HasHadamardTwoByTwo (ClassificationCover.toPublic (phaseScale (Real.sqrt 6) H))) :
    ∃ K : Mat6, OccursAsQuartetEdge (normalized K) ∧
      ∃ E ∈ carriers, CarrierBox E (ClassificationCover.toNumerical K) :=
  exported_ledger_cover KarlssonLedgerExample.ledger carriers frontier_bound hH h₂

theorem accept_reused_certificate {n : ℕ} {j : Job} {inner outer : CarrierRegion}
    (houter : outer ∈ carriers) (hencl : Encloses j inner)
    (hsub : CarrierSubregion inner outer) (cert : LocalCertificate n)
    (hcheck : checkLocal outer cert=true) : ¬ Live j :=
  checked_carrier_reuse hencl hsub cert hcheck (all_first_rows outer houter)

#print axioms distinct_work_items

#print axioms every_old_carrier

#print axioms all_first_rows

#print axioms frontier_bound

#print axioms physical_cover

#print axioms accept_reused_certificate

end

end KarlssonLedgerExampleReuseQueue
