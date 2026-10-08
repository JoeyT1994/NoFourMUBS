import D0FullInterface
import D0ForestAssembly0433
import D0ForestAssembly0434
import D0ForestChunk1703
import D0ForestChunk1704
import D0ForestChunk1705
import D0ForestChunk1706
import D0ForestChunk1707
import D0ForestChunk1708
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2280675 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 22 else 30)))
theorem cover_2280675 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280675 := by
  apply coveredState_split_literal (state := state_2280675) 3
    state_2280676 state_2282007
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280676
  · exact cover_2282007
#print axioms cover_2280675

def state_2280221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 30)))
theorem cover_2280221 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2280221 := by
  apply coveredState_split_literal (state := state_2280221) 2
    state_2280222 state_2280675
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2280222
  · exact cover_2280675
#print axioms cover_2280221

def state_2282104 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 31)))
theorem cover_2282104 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282104 := by
  apply coveredState_split_literal (state := state_2282104) 0
    state_2282105 state_2282128
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282105
  · exact cover_2282128
#print axioms cover_2282104

def state_2282103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 22 else 31)))
theorem cover_2282103 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282103 := by
  apply coveredState_split_literal (state := state_2282103) 3
    state_2282104 state_2282173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282104
  · exact cover_2282173
#print axioms cover_2282103

def state_2282210 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 113) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
theorem cover_2282210 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282210 := by
  apply coveredState_split_literal (state := state_2282210) 4
    state_2282211 state_2282272
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282211
  · exact cover_2282272
#print axioms cover_2282210

def state_2282202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
theorem cover_2282202 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282202 := by
  apply coveredState_split_literal (state := state_2282202) 1
    state_2282203 state_2282210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282203
  · exact cover_2282210
#print axioms cover_2282202

def state_2282182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
theorem cover_2282182 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282182 := by
  apply coveredState_split_literal (state := state_2282182) 0
    state_2282183 state_2282202
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282183
  · exact cover_2282202
#print axioms cover_2282182

def state_2282181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 62)))
theorem cover_2282181 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282181 := by
  apply coveredState_split_literal (state := state_2282181) 3
    state_2282182 state_2282281
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282182
  · exact cover_2282281
#print axioms cover_2282181

def state_2282180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 62)))
theorem cover_2282180 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282180 := by
  apply coveredState_split_literal (state := state_2282180) 2
    state_2282181 state_2282312
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282181
  · exact cover_2282312
#print axioms cover_2282180

def state_2282179 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2282179 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282179 := by
  apply coveredState_split_literal (state := state_2282179) 4
    state_2282180 state_2282361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282180
  · exact cover_2282361
#print axioms cover_2282179

def state_2282380 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 62)))
theorem cover_2282380 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282380 := by
  apply coveredState_split_literal (state := state_2282380) 3
    state_2282381 state_2282444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282381
  · exact cover_2282444
#print axioms cover_2282380

def state_2282379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 62)))
theorem cover_2282379 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282379 := by
  apply coveredState_split_literal (state := state_2282379) 2
    state_2282380 state_2282471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282380
  · exact cover_2282471
#print axioms cover_2282379

def state_2282378 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2282378 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282378 := by
  apply coveredState_split_literal (state := state_2282378) 4
    state_2282379 state_2282514
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282379
  · exact cover_2282514
#print axioms cover_2282378

def state_2282178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2282178 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282178 := by
  apply coveredState_split_literal (state := state_2282178) 1
    state_2282179 state_2282378
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282179
  · exact cover_2282378
#print axioms cover_2282178

def state_2282535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
theorem cover_2282535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282535 := by
  apply coveredState_split_literal (state := state_2282535) 0
    state_2282536 state_2282597
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282536
  · exact cover_2282597
#print axioms cover_2282535

def state_2282534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 62)))
theorem cover_2282534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282534 := by
  apply coveredState_split_literal (state := state_2282534) 3
    state_2282535 state_2282610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282535
  · exact cover_2282610
#print axioms cover_2282534

def state_2282627 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 95 else (if j.val < 4 then 44 else 62)))
theorem cover_2282627 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282627 := by
  apply coveredState_split_literal (state := state_2282627) 3
    state_2282628 state_2282687
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282628
  · exact cover_2282687
#print axioms cover_2282627

def state_2282533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 62)))
theorem cover_2282533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282533 := by
  apply coveredState_split_literal (state := state_2282533) 2
    state_2282534 state_2282627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282534
  · exact cover_2282627
#print axioms cover_2282533

def state_2282532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 56) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 31)))
theorem cover_2282532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282532 := by
  apply coveredState_split_literal (state := state_2282532) 4
    state_2282533 state_2282702
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282533
  · exact cover_2282702
#print axioms cover_2282532

def state_2282766 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 176 else 124)))
theorem cover_2282766 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282766 := by
  apply coveredState_split_literal (state := state_2282766) 0
    state_2282767 state_2282816
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282767
  · exact cover_2282816
#print axioms cover_2282766

def state_2282835 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 177 else 124)))
theorem cover_2282835 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282835 := by
  apply coveredState_split_literal (state := state_2282835) 0
    state_2282836 state_2282881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282836
  · exact cover_2282881
#print axioms cover_2282835

def state_2282765 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 88 else 124)))
theorem cover_2282765 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282765 := by
  apply coveredState_split_literal (state := state_2282765) 3
    state_2282766 state_2282835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282766
  · exact cover_2282835
#print axioms cover_2282765

def state_2282753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 124)))
theorem cover_2282753 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282753 := by
  apply coveredState_split_literal (state := state_2282753) 2
    state_2282754 state_2282765
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282754
  · exact cover_2282765
#print axioms cover_2282753

def state_2282918 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 189 else (if j.val < 4 then 88 else 125)))
theorem cover_2282918 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282918 := by
  apply coveredState_split_literal (state := state_2282918) 3
    state_2282919 state_2282960
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282919
  · exact cover_2282960
#print axioms cover_2282918

def state_2282910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 125)))
theorem cover_2282910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282910 := by
  apply coveredState_split_literal (state := state_2282910) 2
    state_2282911 state_2282918
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282911
  · exact cover_2282918
#print axioms cover_2282910

def state_2282752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
theorem cover_2282752 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282752 := by
  apply coveredState_split_literal (state := state_2282752) 4
    state_2282753 state_2282910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282753
  · exact cover_2282910
#print axioms cover_2282752

def state_2282751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
theorem cover_2282751 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282751 := by
  apply coveredState_split_literal (state := state_2282751) 1
    state_2282752 state_2282991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282752
  · exact cover_2282991
#print axioms cover_2282751

def state_2283011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 114) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
theorem cover_2283011 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283011 := by
  apply coveredState_split_literal (state := state_2283011) 4
    state_2283012 state_2283037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283012
  · exact cover_2283037
#print axioms cover_2283011

def state_2283010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
theorem cover_2283010 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283010 := by
  apply coveredState_split_literal (state := state_2283010) 1
    state_2283011 state_2283086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283011
  · exact cover_2283086
#print axioms cover_2283010

def state_2282750 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 88 else 62)))
theorem cover_2282750 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282750 := by
  apply coveredState_split_literal (state := state_2282750) 0
    state_2282751 state_2283010
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282751
  · exact cover_2283010
#print axioms cover_2282750

def state_2282749 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 57) else (if j.val < 3 then 94 else (if j.val < 4 then 44 else 62)))
theorem cover_2282749 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2282749 := by
  apply coveredState_split_literal (state := state_2282749) 3
    state_2282750 state_2283099
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2282750
  · exact cover_2283099
#print axioms cover_2282749

def state_2283191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 86 else 114) else (if j.val < 3 then 190 else (if j.val < 4 then 177 else 124)))
theorem cover_2283191 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2283191 := by
  apply coveredState_split_literal (state := state_2283191) 0
    state_2283192 state_2283249
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2283192
  · exact cover_2283249
#print axioms cover_2283191
end Mub6.Numerical.CircleFullD0.Forest
