import CircleFullInterface
import CircleForestAssembly0154
import CircleForestChunk0590
import CircleForestChunk0592
import CircleForestChunk0594
import CircleForestChunk0595
import CircleForestChunk0596
import CircleForestChunk0597
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1331055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 24)))
theorem cover_1331055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331055 := by
  apply coveredState_split_literal (state := state_1331055) 2
    state_1331056 state_1331095
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331056
  · exact cover_1331095
#print axioms cover_1331055

def state_1331054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 12)))
theorem cover_1331054 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331054 := by
  apply coveredState_split_literal (state := state_1331054) 4
    state_1331055 state_1331366
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331055
  · exact cover_1331366
#print axioms cover_1331054

def state_1330512 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 12)))
theorem cover_1330512 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330512 := by
  apply coveredState_split_literal (state := state_1330512) 3
    state_1330513 state_1331054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330513
  · exact cover_1331054
#print axioms cover_1330512

def state_1330466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 12)))
theorem cover_1330466 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330466 := by
  apply coveredState_split_literal (state := state_1330466) 0
    state_1330467 state_1330512
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330467
  · exact cover_1330512
#print axioms cover_1330466

def state_1331452 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 24)))
theorem cover_1331452 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331452 := by
  apply coveredState_split_literal (state := state_1331452) 4
    state_1331453 state_1331478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331453
  · exact cover_1331478
#print axioms cover_1331452

def state_1331451 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 30 else (if j.val < 4 then 23 else 24)))
theorem cover_1331451 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331451 := by
  apply coveredState_split_literal (state := state_1331451) 3
    state_1331452 state_1331517
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331452
  · exact cover_1331517
#print axioms cover_1331451

def state_1331450 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 17) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 24)))
theorem cover_1331450 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331450 := by
  apply coveredState_split_literal (state := state_1331450) 2
    state_1331451 state_1331536
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331451
  · exact cover_1331536
#print axioms cover_1331450

def state_1331444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 24)))
theorem cover_1331444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331444 := by
  apply coveredState_split_literal (state := state_1331444) 1
    state_1331445 state_1331450
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331445
  · exact cover_1331450
#print axioms cover_1331444

def state_1331443 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 23 else 12)))
theorem cover_1331443 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331443 := by
  apply coveredState_split_literal (state := state_1331443) 4
    state_1331444 state_1331541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331444
  · exact cover_1331541
#print axioms cover_1331443

def state_1331403 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
theorem cover_1331403 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331403 := by
  apply coveredState_split_literal (state := state_1331403) 3
    state_1331404 state_1331443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331404
  · exact cover_1331443
#print axioms cover_1331403

def state_1331395 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 15 else (if j.val < 4 then 11 else 12)))
theorem cover_1331395 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331395 := by
  apply coveredState_split_literal (state := state_1331395) 0
    state_1331396 state_1331403
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331396
  · exact cover_1331403
#print axioms cover_1331395

def state_1330465 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 7 else (if j.val < 4 then 11 else 12)))
theorem cover_1330465 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1330465 := by
  apply coveredState_split_literal (state := state_1330465) 2
    state_1330466 state_1331395
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1330466
  · exact cover_1331395
#print axioms cover_1330465

def state_1331572 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 22 else 12)))
theorem cover_1331572 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331572 := by
  apply coveredState_split_literal (state := state_1331572) 4
    state_1331573 state_1331630
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331573
  · exact cover_1331630
#print axioms cover_1331572

def state_1331682 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 49)))
theorem cover_1331682 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331682 := by
  apply coveredState_split_literal (state := state_1331682) 1
    state_1331683 state_1331746
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331683
  · exact cover_1331746
#print axioms cover_1331682

def state_1331680 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 49)))
theorem cover_1331680 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331680 := by
  apply coveredState_split_literal (state := state_1331680) 0
    state_1331681 state_1331682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331681
  · exact cover_1331682
#print axioms cover_1331680

def state_1331656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 29 else (if j.val < 4 then 46 else 24)))
theorem cover_1331656 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331656 := by
  apply coveredState_split_literal (state := state_1331656) 4
    state_1331657 state_1331680
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331657
  · exact cover_1331680
#print axioms cover_1331656

def state_1331655 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 29 else (if j.val < 4 then 23 else 24)))
theorem cover_1331655 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331655 := by
  apply coveredState_split_literal (state := state_1331655) 3
    state_1331656 state_1331747
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331656
  · exact cover_1331747
#print axioms cover_1331655

def state_1331653 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 24)))
theorem cover_1331653 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331653 := by
  apply coveredState_split_literal (state := state_1331653) 2
    state_1331654 state_1331655
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331654
  · exact cover_1331655
#print axioms cover_1331653

def state_1331652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 24)))
theorem cover_1331652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331652 := by
  apply coveredState_split_literal (state := state_1331652) 1
    state_1331653 state_1331766
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331653
  · exact cover_1331766
#print axioms cover_1331652

def state_1331651 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 23 else 12)))
theorem cover_1331651 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331651 := by
  apply coveredState_split_literal (state := state_1331651) 4
    state_1331652 state_1331767
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331652
  · exact cover_1331767
#print axioms cover_1331651

def state_1331571 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 12)))
theorem cover_1331571 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331571 := by
  apply coveredState_split_literal (state := state_1331571) 3
    state_1331572 state_1331651
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331572
  · exact cover_1331651
#print axioms cover_1331571

def state_1331557 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 9) else (if j.val < 3 then 14 else (if j.val < 4 then 11 else 12)))
theorem cover_1331557 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331557 := by
  apply coveredState_split_literal (state := state_1331557) 0
    state_1331558 state_1331571
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331558
  · exact cover_1331571
#print axioms cover_1331557

def state_1331980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 60 else (if j.val < 4 then 93 else 99)))
theorem cover_1331980 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331980 := by
  apply coveredState_split_literal (state := state_1331980) 0
    state_1331981 state_1332000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331981
  · exact cover_1332000
#print axioms cover_1331980

def state_1331948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 60 else (if j.val < 4 then 93 else 49)))
theorem cover_1331948 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331948 := by
  apply coveredState_split_literal (state := state_1331948) 4
    state_1331949 state_1331980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331949
  · exact cover_1331980
#print axioms cover_1331948

def state_1331924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 60 else (if j.val < 4 then 46 else 49)))
theorem cover_1331924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331924 := by
  apply coveredState_split_literal (state := state_1331924) 3
    state_1331925 state_1331948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331925
  · exact cover_1331948
#print axioms cover_1331924

def state_1331923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 36) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 49)))
theorem cover_1331923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331923 := by
  apply coveredState_split_literal (state := state_1331923) 2
    state_1331924 state_1332045
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331924
  · exact cover_1332045
#print axioms cover_1331923

def state_1331922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 49)))
theorem cover_1331922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331922 := by
  apply coveredState_split_literal (state := state_1331922) 1
    state_1331923 state_1332066
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331923
  · exact cover_1332066
#print axioms cover_1331922

def state_1331904 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 49)))
theorem cover_1331904 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331904 := by
  apply coveredState_split_literal (state := state_1331904) 0
    state_1331905 state_1331922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331905
  · exact cover_1331922
#print axioms cover_1331904

def state_1331890 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 46 else 24)))
theorem cover_1331890 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1331890 := by
  apply coveredState_split_literal (state := state_1331890) 4
    state_1331891 state_1331904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1331891
  · exact cover_1331904
#print axioms cover_1331890

def state_1332103 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 49)))
theorem cover_1332103 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332103 := by
  apply coveredState_split_literal (state := state_1332103) 1
    state_1332104 state_1332167
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332104
  · exact cover_1332167
#print axioms cover_1332103

def state_1332089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 49)))
theorem cover_1332089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332089 := by
  apply coveredState_split_literal (state := state_1332089) 0
    state_1332090 state_1332103
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332090
  · exact cover_1332103
#print axioms cover_1332089

def state_1332083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 18) else (if j.val < 3 then 30 else (if j.val < 4 then 47 else 24)))
theorem cover_1332083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1332083 := by
  apply coveredState_split_literal (state := state_1332083) 4
    state_1332084 state_1332089
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1332084
  · exact cover_1332089
#print axioms cover_1332083
end Mub6.Numerical.CircleFullD0.Forest
