import CircleFullInterface
import CircleForestAssembly0184
import CircleForestChunk0694
import CircleForestChunk0695
import CircleForestChunk0696
import CircleForestChunk0697
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1467221 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 11)))
theorem cover_1467221 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467221 := by
  apply coveredState_split_literal (state := state_1467221) 1
    state_1467222 state_1467427
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467222
  · exact cover_1467427
#print axioms cover_1467221

def state_1467141 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 4 else 5)))
theorem cover_1467141 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467141 := by
  apply coveredState_split_literal (state := state_1467141) 4
    state_1467142 state_1467221
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467142
  · exact cover_1467221
#print axioms cover_1467141

def state_1467552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 43)))
theorem cover_1467552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467552 := by
  apply coveredState_split_literal (state := state_1467552) 2
    state_1467553 state_1467578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467553
  · exact cover_1467578
#print axioms cover_1467552

def state_1467542 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 43)))
theorem cover_1467542 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467542 := by
  apply coveredState_split_literal (state := state_1467542) 0
    state_1467543 state_1467552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467543
  · exact cover_1467552
#print axioms cover_1467542

def state_1467541 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 43)))
theorem cover_1467541 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467541 := by
  apply coveredState_split_literal (state := state_1467541) 3
    state_1467542 state_1467627
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467542
  · exact cover_1467627
#print axioms cover_1467541

def state_1467533 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 43)))
theorem cover_1467533 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467533 := by
  apply coveredState_split_literal (state := state_1467533) 1
    state_1467534 state_1467541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467534
  · exact cover_1467541
#print axioms cover_1467533

def state_1467509 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 21)))
theorem cover_1467509 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467509 := by
  apply coveredState_split_literal (state := state_1467509) 4
    state_1467510 state_1467533
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467510
  · exact cover_1467533
#print axioms cover_1467509

def state_1467508 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
theorem cover_1467508 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467508 := by
  apply coveredState_split_literal (state := state_1467508) 2
    state_1467509 state_1467648
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467509
  · exact cover_1467648
#print axioms cover_1467508

def state_1467498 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
theorem cover_1467498 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467498 := by
  apply coveredState_split_literal (state := state_1467498) 0
    state_1467499 state_1467508
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467499
  · exact cover_1467508
#print axioms cover_1467498

def state_1467497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 21)))
theorem cover_1467497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467497 := by
  apply coveredState_split_literal (state := state_1467497) 3
    state_1467498 state_1467709
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467498
  · exact cover_1467709
#print axioms cover_1467497

def state_1467741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
theorem cover_1467741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467741 := by
  apply coveredState_split_literal (state := state_1467741) 2
    state_1467742 state_1467777
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467742
  · exact cover_1467777
#print axioms cover_1467741

def state_1467735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 21)))
theorem cover_1467735 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467735 := by
  apply coveredState_split_literal (state := state_1467735) 0
    state_1467736 state_1467741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467736
  · exact cover_1467741
#print axioms cover_1467735

def state_1467734 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 29) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 21)))
theorem cover_1467734 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467734 := by
  apply coveredState_split_literal (state := state_1467734) 3
    state_1467735 state_1467820
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467735
  · exact cover_1467820
#print axioms cover_1467734

def state_1467496 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 21)))
theorem cover_1467496 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467496 := by
  apply coveredState_split_literal (state := state_1467496) 1
    state_1467497 state_1467734
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467497
  · exact cover_1467734
#print axioms cover_1467496

def state_1467456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 10)))
theorem cover_1467456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467456 := by
  apply coveredState_split_literal (state := state_1467456) 4
    state_1467457 state_1467496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467457
  · exact cover_1467496
#print axioms cover_1467456

def state_1467841 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 23 else (if j.val < 4 then 8 else 10)))
theorem cover_1467841 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467841 := by
  apply coveredState_split_literal (state := state_1467841) 4
    state_1467842 state_1467879
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467842
  · exact cover_1467879
#print axioms cover_1467841

def state_1467455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1467455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467455 := by
  apply coveredState_split_literal (state := state_1467455) 2
    state_1467456 state_1467841
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467456
  · exact cover_1467841
#print axioms cover_1467455

def state_1467445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 8 else 10)))
theorem cover_1467445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467445 := by
  apply coveredState_split_literal (state := state_1467445) 0
    state_1467446 state_1467455
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467446
  · exact cover_1467455
#print axioms cover_1467445

def state_1467444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1467444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467444 := by
  apply coveredState_split_literal (state := state_1467444) 3
    state_1467445 state_1467928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467445
  · exact cover_1467928
#print axioms cover_1467444

def state_1467443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 11 else (if j.val < 4 then 4 else 10)))
theorem cover_1467443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1467443 := by
  apply coveredState_split_literal (state := state_1467443) 1
    state_1467444 state_1467979
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1467444
  · exact cover_1467979
#print axioms cover_1467443

def state_1468045 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1468045 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468045 := by
  apply coveredState_split_literal (state := state_1468045) 2
    state_1468046 state_1468091
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468046
  · exact cover_1468091
#print axioms cover_1468045

def state_1468037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1468037 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468037 := by
  apply coveredState_split_literal (state := state_1468037) 0
    state_1468038 state_1468045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468038
  · exact cover_1468045
#print axioms cover_1468037

def state_1468036 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 57) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1468036 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468036 := by
  apply coveredState_split_literal (state := state_1468036) 3
    state_1468037 state_1468130
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468037
  · exact cover_1468130
#print axioms cover_1468036

def state_1468028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1468028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468028 := by
  apply coveredState_split_literal (state := state_1468028) 1
    state_1468029 state_1468036
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468029
  · exact cover_1468036
#print axioms cover_1468028

def state_1468027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 22)))
theorem cover_1468027 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468027 := by
  apply coveredState_split_literal (state := state_1468027) 4
    state_1468028 state_1468139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468028
  · exact cover_1468139
#print axioms cover_1468027

def state_1468026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1468026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468026 := by
  apply coveredState_split_literal (state := state_1468026) 2
    state_1468027 state_1468142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468027
  · exact cover_1468142
#print axioms cover_1468026

def state_1468020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 16 else 22)))
theorem cover_1468020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468020 := by
  apply coveredState_split_literal (state := state_1468020) 0
    state_1468021 state_1468026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468021
  · exact cover_1468026
#print axioms cover_1468020

def state_1468019 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 28) else (if j.val < 3 then 22 else (if j.val < 4 then 8 else 22)))
theorem cover_1468019 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468019 := by
  apply coveredState_split_literal (state := state_1468019) 3
    state_1468020 state_1468163
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468020
  · exact cover_1468163
#print axioms cover_1468019

def state_1468237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 89 else (if j.val < 4 then 32 else 44)))
theorem cover_1468237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468237 := by
  apply coveredState_split_literal (state := state_1468237) 4
    state_1468238 state_1468289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468238
  · exact cover_1468289
#print axioms cover_1468237

def state_1468201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1468201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468201 := by
  apply coveredState_split_literal (state := state_1468201) 2
    state_1468202 state_1468237
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468202
  · exact cover_1468237
#print axioms cover_1468201

def state_1468185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 32 else 44)))
theorem cover_1468185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468185 := by
  apply coveredState_split_literal (state := state_1468185) 0
    state_1468186 state_1468201
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468186
  · exact cover_1468201
#print axioms cover_1468185

def state_1468184 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 58) else (if j.val < 3 then 44 else (if j.val < 4 then 16 else 44)))
theorem cover_1468184 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1468184 := by
  apply coveredState_split_literal (state := state_1468184) 3
    state_1468185 state_1468304
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1468185
  · exact cover_1468304
#print axioms cover_1468184
end Mub6.Numerical.CircleFullD0.Forest
