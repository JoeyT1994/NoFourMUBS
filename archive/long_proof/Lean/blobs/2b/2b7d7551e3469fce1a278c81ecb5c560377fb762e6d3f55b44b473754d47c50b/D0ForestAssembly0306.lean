import D0FullInterface
import D0ForestAssembly0300
import D0ForestAssembly0301
import D0ForestAssembly0304
import D0ForestAssembly0305
import D0ForestChunk1175
import D0ForestChunk1176
import D0ForestChunk1177
import D0ForestChunk1178
import D0ForestChunk1179
import D0ForestChunk1180
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1582756 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 51)))
theorem cover_1582756 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582756 := by
  apply coveredState_split_literal (state := state_1582756) 1
    state_1582757 state_1582862
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582757
  · exact cover_1582862
#print axioms cover_1582756

def state_1582710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 51)))
theorem cover_1582710 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582710 := by
  apply coveredState_split_literal (state := state_1582710) 0
    state_1582711 state_1582756
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582711
  · exact cover_1582756
#print axioms cover_1582710

def state_1582634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 51)))
theorem cover_1582634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582634 := by
  apply coveredState_split_literal (state := state_1582634) 3
    state_1582635 state_1582710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582635
  · exact cover_1582710
#print axioms cover_1582634

def state_1582594 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 25)))
theorem cover_1582594 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1582594 := by
  apply coveredState_split_literal (state := state_1582594) 4
    state_1582595 state_1582634
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1582595
  · exact cover_1582634
#print axioms cover_1582594

def state_1581166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1581166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581166 := by
  apply coveredState_split_literal (state := state_1581166) 2
    state_1581167 state_1582594
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1581167
  · exact cover_1582594
#print axioms cover_1581166

def state_1577656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1577656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577656 := by
  apply coveredState_split_literal (state := state_1577656) 1
    state_1577657 state_1581166
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577657
  · exact cover_1581166
#print axioms cover_1577656

def state_1577322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
theorem cover_1577322 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577322 := by
  apply coveredState_split_literal (state := state_1577322) 0
    state_1577323 state_1577656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577323
  · exact cover_1577656
#print axioms cover_1577322

def state_1583201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 54 else 51)))
theorem cover_1583201 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583201 := by
  apply coveredState_split_literal (state := state_1583201) 1
    state_1583202 state_1583223
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583202
  · exact cover_1583223
#print axioms cover_1583201

def state_1583200 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 51)))
theorem cover_1583200 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583200 := by
  apply coveredState_split_literal (state := state_1583200) 3
    state_1583201 state_1583274
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583201
  · exact cover_1583274
#print axioms cover_1583200

def state_1583178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 51)))
theorem cover_1583178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583178 := by
  apply coveredState_split_literal (state := state_1583178) 0
    state_1583179 state_1583200
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583179
  · exact cover_1583200
#print axioms cover_1583178

def state_1583126 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 25)))
theorem cover_1583126 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583126 := by
  apply coveredState_split_literal (state := state_1583126) 4
    state_1583127 state_1583178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583127
  · exact cover_1583178
#print axioms cover_1583126

def state_1583376 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 102)))
theorem cover_1583376 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583376 := by
  apply coveredState_split_literal (state := state_1583376) 0
    state_1583377 state_1583404
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583377
  · exact cover_1583404
#print axioms cover_1583376

def state_1583470 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 108 else 103)))
theorem cover_1583470 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583470 := by
  apply coveredState_split_literal (state := state_1583470) 1
    state_1583471 state_1583512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583471
  · exact cover_1583512
#print axioms cover_1583470

def state_1583469 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 103)))
theorem cover_1583469 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583469 := by
  apply coveredState_split_literal (state := state_1583469) 3
    state_1583470 state_1583541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583470
  · exact cover_1583541
#print axioms cover_1583469

def state_1583449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 103)))
theorem cover_1583449 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583449 := by
  apply coveredState_split_literal (state := state_1583449) 0
    state_1583450 state_1583469
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583450
  · exact cover_1583469
#print axioms cover_1583449

def state_1583375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 51)))
theorem cover_1583375 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583375 := by
  apply coveredState_split_literal (state := state_1583375) 4
    state_1583376 state_1583449
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583376
  · exact cover_1583449
#print axioms cover_1583375

def state_1583374 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 35) else (if j.val < 3 then 49 else (if j.val < 4 then 54 else 51)))
theorem cover_1583374 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583374 := by
  apply coveredState_split_literal (state := state_1583374) 2
    state_1583375 state_1583558
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583375
  · exact cover_1583558
#print axioms cover_1583374

def state_1583342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 54 else 51)))
theorem cover_1583342 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583342 := by
  apply coveredState_split_literal (state := state_1583342) 1
    state_1583343 state_1583374
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583343
  · exact cover_1583374
#print axioms cover_1583342

def state_1583341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1583341 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583341 := by
  apply coveredState_split_literal (state := state_1583341) 3
    state_1583342 state_1583585
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583342
  · exact cover_1583585
#print axioms cover_1583341

def state_1583311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
theorem cover_1583311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583311 := by
  apply coveredState_split_literal (state := state_1583311) 0
    state_1583312 state_1583341
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583312
  · exact cover_1583341
#print axioms cover_1583311

def state_1583275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 25)))
theorem cover_1583275 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583275 := by
  apply coveredState_split_literal (state := state_1583275) 4
    state_1583276 state_1583311
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583276
  · exact cover_1583311
#print axioms cover_1583275

def state_1583125 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1583125 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583125 := by
  apply coveredState_split_literal (state := state_1583125) 2
    state_1583126 state_1583275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583126
  · exact cover_1583275
#print axioms cover_1583125

def state_1583079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1583079 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583079 := by
  apply coveredState_split_literal (state := state_1583079) 1
    state_1583080 state_1583125
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583080
  · exact cover_1583125
#print axioms cover_1583079

def state_1583047 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
theorem cover_1583047 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583047 := by
  apply coveredState_split_literal (state := state_1583047) 0
    state_1583048 state_1583079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583048
  · exact cover_1583079
#print axioms cover_1583047

def state_1577321 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 25)))
theorem cover_1577321 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577321 := by
  apply coveredState_split_literal (state := state_1577321) 3
    state_1577322 state_1583047
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577322
  · exact cover_1583047
#print axioms cover_1577321

def state_1577243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 24 else (if j.val < 4 then 13 else 12)))
theorem cover_1577243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577243 := by
  apply coveredState_split_literal (state := state_1577243) 4
    state_1577244 state_1577321
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577244
  · exact cover_1577321
#print axioms cover_1577243

def state_1583596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 25)))
theorem cover_1583596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583596 := by
  apply coveredState_split_literal (state := state_1583596) 3
    state_1583597 state_1583640
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583597
  · exact cover_1583640
#print axioms cover_1583596

def state_1583592 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 13 else 12)))
theorem cover_1583592 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583592 := by
  apply coveredState_split_literal (state := state_1583592) 4
    state_1583593 state_1583596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583593
  · exact cover_1583596
#print axioms cover_1583592

def state_1577242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 13 else 12)))
theorem cover_1577242 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1577242 := by
  apply coveredState_split_literal (state := state_1577242) 2
    state_1577243 state_1583592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1577243
  · exact cover_1583592
#print axioms cover_1577242

def state_1583852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 51)))
theorem cover_1583852 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583852 := by
  apply coveredState_split_literal (state := state_1583852) 0
    state_1583853 state_1583860
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583853
  · exact cover_1583860
#print axioms cover_1583852

def state_1583840 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 51)))
theorem cover_1583840 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583840 := by
  apply coveredState_split_literal (state := state_1583840) 3
    state_1583841 state_1583852
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583841
  · exact cover_1583852
#print axioms cover_1583840

def state_1583794 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 25)))
theorem cover_1583794 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583794 := by
  apply coveredState_split_literal (state := state_1583794) 4
    state_1583795 state_1583840
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1583795
  · exact cover_1583840
#print axioms cover_1583794
end Mub6.Numerical.CircleFullD0.Forest
