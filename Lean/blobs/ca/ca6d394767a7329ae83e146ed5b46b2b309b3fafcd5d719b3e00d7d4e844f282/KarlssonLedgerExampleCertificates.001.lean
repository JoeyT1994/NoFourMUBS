import KarlssonCertificateConsumer

import KarlssonLedgerExampleEnclosures

set_option autoImplicit false

set_option maxRecDepth 32768

namespace KarlssonLedgerExampleCertificates

open Mub6 Mub6.Numerical Mub6.Numerical.IntervalKernel Mub6.Numerical.GraphKernel

open Mub6.Classification.KarlssonLedger

noncomputable section

theorem first_row_0 : StandardFirstRow KarlssonLedgerCell172d38d498f08353.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_1 : StandardFirstRow KarlssonLedgerCell5de3689c236e30ff.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_2 : StandardFirstRow KarlssonLedgerCell5a0de2bc145c20b5.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_3 : StandardFirstRow KarlssonLedgerCelld61da4c05ba85714.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_4 : StandardFirstRow KarlssonLedgerCell853f1b6828477032.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_5 : StandardFirstRow KarlssonLedgerCellf68adeab26c573db.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_6 : StandardFirstRow KarlssonLedgerCellb63f6cdf201602a2.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_7 : StandardFirstRow KarlssonLedgerCell55b1b83ba927c786.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_8 : StandardFirstRow KarlssonLedgerCell178264642840b610.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_9 : StandardFirstRow KarlssonLedgerCelle34647e6c017bbc1.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_10 : StandardFirstRow KarlssonLedgerCelle2b4c571f4eafc9b.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_11 : StandardFirstRow KarlssonLedgerCellae19dccf3d6ecff0.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_12 : StandardFirstRow KarlssonLedgerCellad3fe71ac2a31c3d.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_13 : StandardFirstRow KarlssonLedgerCelleacb82b02e98e3ca.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_14 : StandardFirstRow KarlssonLedgerCell972921e2a64c93ad.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_15 : StandardFirstRow KarlssonLedgerCellc5d9ec0a8ad82425.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_16 : StandardFirstRow KarlssonLedgerCellbec45e7ad259c598.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_17 : StandardFirstRow KarlssonLedgerCell74452479c531d33f.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_18 : StandardFirstRow KarlssonLedgerCell678315416daf29a5.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_19 : StandardFirstRow KarlssonLedgerCell1c83755d267f8ed7.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_20 : StandardFirstRow KarlssonLedgerCell9e1c74815d19e6f3.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_21 : StandardFirstRow KarlssonLedgerCellfcef06c4e6adc657.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_22 : StandardFirstRow KarlssonLedgerCellde5291c0a7739ddc.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_23 : StandardFirstRow KarlssonLedgerCell5a1bc921615d104a.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_24 : StandardFirstRow KarlssonLedgerCell5263f98f7cfebee8.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_25 : StandardFirstRow KarlssonLedgerCelld0811b494a63191f.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_26 : StandardFirstRow KarlssonLedgerCell59b784eb13f2b28a.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem first_row_27 : StandardFirstRow KarlssonLedgerCelldd44f60d19f53a4e.carrier := by
  intro j
  fin_cases j <;> decide +kernel

theorem all_first_rows : ∀ E ∈ KarlssonLedgerExampleEnclosures.carriers, StandardFirstRow E := by

  intro E hE

  simp only [KarlssonLedgerExampleEnclosures.carriers,List.mem_cons,List.mem_singleton,List.not_mem_nil,or_false] at hE

  rcases hE with h0 | h1 | h2 | h3 | h4 | h5 | h6 | h7 | h8 | h9 | h10 | h11 | h12 | h13 | h14 | h15 | h16 | h17 | h18 | h19 | h20 | h21 | h22 | h23 | h24 | h25 | h26 | h27

  · subst E; exact first_row_0

  · subst E; exact first_row_1

  · subst E; exact first_row_2

  · subst E; exact first_row_3

  · subst E; exact first_row_4

  · subst E; exact first_row_5

  · subst E; exact first_row_6

  · subst E; exact first_row_7

  · subst E; exact first_row_8

  · subst E; exact first_row_9

  · subst E; exact first_row_10

  · subst E; exact first_row_11

  · subst E; exact first_row_12

  · subst E; exact first_row_13

  · subst E; exact first_row_14

  · subst E; exact first_row_15

  · subst E; exact first_row_16

  · subst E; exact first_row_17

  · subst E; exact first_row_18

  · subst E; exact first_row_19

  · subst E; exact first_row_20

  · subst E; exact first_row_21

  · subst E; exact first_row_22

  · subst E; exact first_row_23

  · subst E; exact first_row_24

  · subst E; exact first_row_25

  · subst E; exact first_row_26

  · subst E; exact first_row_27

theorem accept_certificate {n : ℕ} {j : Job} {E : CarrierRegion}
    (hE : E ∈ KarlssonLedgerExampleEnclosures.carriers) (hencl : Encloses j E)
    (cert : LocalCertificate n) (hcheck : checkLocal E cert=true) : ¬ Live j :=
  checked_leaf_closes hencl cert hcheck (all_first_rows E hE)

#print axioms all_first_rows

#print axioms accept_certificate

end

end KarlssonLedgerExampleCertificates
