import D0FullInterface
import D0ForestAssembly0550
import D0ForestChunk2176
import D0ForestChunk2177
import D0ForestChunk2178
import D0ForestChunk2179
import D0ForestChunk2180
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_2602519 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 3)))
theorem cover_2602519 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602519 := by
  apply coveredState_split_literal (state := state_2602519) 0
    state_2602520 state_2602589
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602520
  · exact cover_2602589
#print axioms cover_2602519

def state_2602425 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_2602425 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602425 := by
  apply coveredState_split_literal (state := state_2602425) 4
    state_2602426 state_2602519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602426
  · exact cover_2602519
#print axioms cover_2602425

def state_2602924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2602924 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602924 := by
  apply coveredState_split_literal (state := state_2602924) 3
    state_2602925 state_2602944
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602925
  · exact cover_2602944
#print axioms cover_2602924

def state_2602912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2602912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602912 := by
  apply coveredState_split_literal (state := state_2602912) 2
    state_2602913 state_2602924
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602913
  · exact cover_2602924
#print axioms cover_2602912

def state_2602872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2602872 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602872 := by
  apply coveredState_split_literal (state := state_2602872) 1
    state_2602873 state_2602912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602873
  · exact cover_2602912
#print axioms cover_2602872

def state_2603000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2603000 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603000 := by
  apply coveredState_split_literal (state := state_2603000) 2
    state_2603001 state_2603026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603001
  · exact cover_2603026
#print axioms cover_2603000

def state_2603147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 5)))
theorem cover_2603147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603147 := by
  apply coveredState_split_literal (state := state_2603147) 0
    state_2603148 state_2603203
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603148
  · exact cover_2603203
#print axioms cover_2603147

def state_2603113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_2603113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603113 := by
  apply coveredState_split_literal (state := state_2603113) 4
    state_2603114 state_2603147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603114
  · exact cover_2603147
#print axioms cover_2603113

def state_2603089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_2603089 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603089 := by
  apply coveredState_split_literal (state := state_2603089) 3
    state_2603090 state_2603113
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603090
  · exact cover_2603113
#print axioms cover_2603089

def state_2603065 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2603065 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603065 := by
  apply coveredState_split_literal (state := state_2603065) 2
    state_2603066 state_2603089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603066
  · exact cover_2603089
#print axioms cover_2603065

def state_2602999 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2602999 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602999 := by
  apply coveredState_split_literal (state := state_2602999) 1
    state_2603000 state_2603065
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603000
  · exact cover_2603065
#print axioms cover_2602999

def state_2602871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_2602871 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602871 := by
  apply coveredState_split_literal (state := state_2602871) 0
    state_2602872 state_2602999
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602872
  · exact cover_2602999
#print axioms cover_2602871

def state_2603250 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2603250 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603250 := by
  apply coveredState_split_literal (state := state_2603250) 1
    state_2603251 state_2603284
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603251
  · exact cover_2603284
#print axioms cover_2603250

def state_2603236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_2603236 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603236 := by
  apply coveredState_split_literal (state := state_2603236) 0
    state_2603237 state_2603250
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603237
  · exact cover_2603250
#print axioms cover_2603236

def state_2602870 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_2602870 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602870 := by
  apply coveredState_split_literal (state := state_2602870) 4
    state_2602871 state_2603236
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602871
  · exact cover_2603236
#print axioms cover_2602870

def state_2602424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_2602424 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2602424 := by
  apply coveredState_split_literal (state := state_2602424) 3
    state_2602425 state_2602870
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2602425
  · exact cover_2602870
#print axioms cover_2602424

def state_2603369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2603369 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603369 := by
  apply coveredState_split_literal (state := state_2603369) 1
    state_2603370 state_2603427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603370
  · exact cover_2603427
#print axioms cover_2603369

def state_2603337 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 2)))
theorem cover_2603337 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603337 := by
  apply coveredState_split_literal (state := state_2603337) 0
    state_2603338 state_2603369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603338
  · exact cover_2603369
#print axioms cover_2603337

def state_2603444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2603444 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603444 := by
  apply coveredState_split_literal (state := state_2603444) 1
    state_2603445 state_2603502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603445
  · exact cover_2603502
#print axioms cover_2603444

def state_2603434 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_2603434 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603434 := by
  apply coveredState_split_literal (state := state_2603434) 0
    state_2603435 state_2603444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603435
  · exact cover_2603444
#print axioms cover_2603434

def state_2603336 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_2603336 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603336 := by
  apply coveredState_split_literal (state := state_2603336) 4
    state_2603337 state_2603434
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603337
  · exact cover_2603434
#print axioms cover_2603336

def state_2603535 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 4)))
theorem cover_2603535 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603535 := by
  apply coveredState_split_literal (state := state_2603535) 1
    state_2603536 state_2603567
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603536
  · exact cover_2603567
#print axioms cover_2603535

def state_2603534 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 6 else 2)))
theorem cover_2603534 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603534 := by
  apply coveredState_split_literal (state := state_2603534) 4
    state_2603535 state_2603624
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603535
  · exact cover_2603624
#print axioms cover_2603534

def state_2603533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2603533 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603533 := by
  apply coveredState_split_literal (state := state_2603533) 3
    state_2603534 state_2603639
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603534
  · exact cover_2603639
#print axioms cover_2603533

def state_2603532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2603532 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603532 := by
  apply coveredState_split_literal (state := state_2603532) 2
    state_2603533 state_2603686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603533
  · exact cover_2603686
#print axioms cover_2603532

def state_2603708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 2)))
theorem cover_2603708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603708 := by
  apply coveredState_split_literal (state := state_2603708) 3
    state_2603709 state_2603750
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603709
  · exact cover_2603750
#print axioms cover_2603708

def state_2603707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2603707 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603707 := by
  apply coveredState_split_literal (state := state_2603707) 2
    state_2603708 state_2603775
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603708
  · exact cover_2603775
#print axioms cover_2603707

def state_2603531 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2603531 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603531 := by
  apply coveredState_split_literal (state := state_2603531) 1
    state_2603532 state_2603707
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603532
  · exact cover_2603707
#print axioms cover_2603531

def state_2603780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2603780 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603780 := by
  apply coveredState_split_literal (state := state_2603780) 1
    state_2603781 state_2603830
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603781
  · exact cover_2603830
#print axioms cover_2603780

def state_2603530 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_2603530 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603530 := by
  apply coveredState_split_literal (state := state_2603530) 0
    state_2603531 state_2603780
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603531
  · exact cover_2603780
#print axioms cover_2603530

def state_2603883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_2603883 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603883 := by
  apply coveredState_split_literal (state := state_2603883) 0
    state_2603884 state_2603929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603884
  · exact cover_2603929
#print axioms cover_2603883

def state_2603529 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_2603529 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨31, by decide⟩ : Fin 32)) state_2603529 := by
  apply coveredState_split_literal (state := state_2603529) 4
    state_2603530 state_2603883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2603530
  · exact cover_2603883
#print axioms cover_2603529
end Mub6.Numerical.CircleFullD0.Forest
