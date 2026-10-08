import CircleFullInterface
import CircleForestAssembly0002
import CircleForestChunk0013
import CircleForestChunk0014
import CircleForestChunk0015
import CircleForestChunk0016
import CircleForestChunk0017
import CircleForestChunk0018
import CircleForestChunk0019
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_66445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_66445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66445 := by
  apply coveredState_split_literal (state := state_66445) 2
    state_66446 state_67525
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66446
  · exact cover_67525
#print axioms cover_66445

def state_69915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 24) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_69915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69915 := by
  apply coveredState_split_literal (state := state_69915) 3
    state_69916 state_69987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69916
  · exact cover_69987
#print axioms cover_69915

def state_69914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_69914 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69914 := by
  apply coveredState_split_literal (state := state_69914) 1
    state_69915 state_70952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69915
  · exact cover_70952
#print axioms cover_69914

def state_69913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 10)))
theorem cover_69913 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69913 := by
  apply coveredState_split_literal (state := state_69913) 0
    state_69914 state_71255
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69914
  · exact cover_71255
#print axioms cover_69913

def state_69912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 11 else 5)))
theorem cover_69912 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69912 := by
  apply coveredState_split_literal (state := state_69912) 4
    state_69913 state_72060
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69913
  · exact cover_72060
#print axioms cover_69912

def state_69874 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 5 else 5)))
theorem cover_69874 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69874 := by
  apply coveredState_split_literal (state := state_69874) 3
    state_69875 state_69912
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69875
  · exact cover_69912
#print axioms cover_69874

def state_69873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_69873 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69873 := by
  apply coveredState_split_literal (state := state_69873) 2
    state_69874 state_72083
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69874
  · exact cover_72083
#print axioms cover_69873

def state_69872 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_69872 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69872 := by
  apply coveredState_split_literal (state := state_69872) 1
    state_69873 state_72114
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69873
  · exact cover_72114
#print axioms cover_69872

def state_69871 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 5)))
theorem cover_69871 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69871 := by
  apply coveredState_split_literal (state := state_69871) 0
    state_69872 state_72185
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69872
  · exact cover_72185
#print axioms cover_69871

def state_69605 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 5 else 2)))
theorem cover_69605 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69605 := by
  apply coveredState_split_literal (state := state_69605) 4
    state_69606 state_69871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69606
  · exact cover_69871
#print axioms cover_69605

def state_69487 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 2 else 2)))
theorem cover_69487 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_69487 := by
  apply coveredState_split_literal (state := state_69487) 3
    state_69488 state_69605
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_69488
  · exact cover_69605
#print axioms cover_69487

def state_68781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_68781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68781 := by
  apply coveredState_split_literal (state := state_68781) 2
    state_68782 state_69487
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68782
  · exact cover_69487
#print axioms cover_68781

def state_68780 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_68780 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68780 := by
  apply coveredState_split_literal (state := state_68780) 1
    state_68781 state_72306
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68781
  · exact cover_72306
#print axioms cover_68780

def state_68779 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_68779 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68779 := by
  apply coveredState_split_literal (state := state_68779) 0
    state_68780 state_72383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68780
  · exact cover_72383
#print axioms cover_68779

def state_68778 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 1)))
theorem cover_68778 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68778 := by
  apply coveredState_split_literal (state := state_68778) 4
    state_68779 state_72478
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68779
  · exact cover_72478
#print axioms cover_68778

def state_74001 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 24 else 10)))
theorem cover_74001 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74001 := by
  apply coveredState_split_literal (state := state_74001) 2
    state_74002 state_74695
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74002
  · exact cover_74695
#print axioms cover_74001

def state_74000 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_74000 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74000 := by
  apply coveredState_split_literal (state := state_74000) 3
    state_74001 state_75340
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_74001
  · exact cover_75340
#print axioms cover_74000

def state_73710 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_73710 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73710 := by
  apply coveredState_split_literal (state := state_73710) 1
    state_73711 state_74000
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73711
  · exact cover_74000
#print axioms cover_73710

def state_73140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 10)))
theorem cover_73140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73140 := by
  apply coveredState_split_literal (state := state_73140) 0
    state_73141 state_73710
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73141
  · exact cover_73710
#print axioms cover_73140

def state_73139 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 5)))
theorem cover_73139 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73139 := by
  apply coveredState_split_literal (state := state_73139) 4
    state_73140 state_75433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73140
  · exact cover_75433
#print axioms cover_73139

def state_73138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 10 else (if j.val < 4 then 6 else 5)))
theorem cover_73138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73138 := by
  apply coveredState_split_literal (state := state_73138) 3
    state_73139 state_75504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73139
  · exact cover_75504
#print axioms cover_73138

def state_73137 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 12) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_73137 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73137 := by
  apply coveredState_split_literal (state := state_73137) 2
    state_73138 state_75523
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73138
  · exact cover_75523
#print axioms cover_73137

def state_73136 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_73136 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73136 := by
  apply coveredState_split_literal (state := state_73136) 1
    state_73137 state_75682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73137
  · exact cover_75682
#print axioms cover_73136

def state_73135 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 5)))
theorem cover_73135 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_73135 := by
  apply coveredState_split_literal (state := state_73135) 0
    state_73136 state_75897
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_73136
  · exact cover_75897
#print axioms cover_73135

def state_72953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 2)))
theorem cover_72953 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72953 := by
  apply coveredState_split_literal (state := state_72953) 4
    state_72954 state_73135
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72954
  · exact cover_73135
#print axioms cover_72953

def state_72952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_72952 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72952 := by
  apply coveredState_split_literal (state := state_72952) 3
    state_72953 state_76496
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72953
  · exact cover_76496
#print axioms cover_72952

def state_72692 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_72692 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72692 := by
  apply coveredState_split_literal (state := state_72692) 2
    state_72693 state_72952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72693
  · exact cover_72952
#print axioms cover_72692

def state_72691 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_72691 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72691 := by
  apply coveredState_split_literal (state := state_72691) 1
    state_72692 state_76527
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72692
  · exact cover_76527
#print axioms cover_72691

def state_72690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_72690 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72690 := by
  apply coveredState_split_literal (state := state_72690) 0
    state_72691 state_76682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72691
  · exact cover_76682
#print axioms cover_72690

def state_72689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_72689 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_72689 := by
  apply coveredState_split_literal (state := state_72689) 4
    state_72690 state_76963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_72690
  · exact cover_76963
#print axioms cover_72689

def state_68777 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_68777 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68777 := by
  apply coveredState_split_literal (state := state_68777) 3
    state_68778 state_72689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68778
  · exact cover_72689
#print axioms cover_68777

def state_68776 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_68776 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_68776 := by
  apply coveredState_split_literal (state := state_68776) 2
    state_68777 state_77234
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_68777
  · exact cover_77234
#print axioms cover_68776

def state_66444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 1) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_66444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_66444 := by
  apply coveredState_split_literal (state := state_66444) 1
    state_66445 state_68776
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_66445
  · exact cover_68776
#print axioms cover_66444

def state_45478 : State := rootState
theorem cover_45478 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45478 := by
  apply coveredState_split_literal (state := state_45478) 0
    state_45479 state_66444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_45479
  · exact cover_66444
#print axioms cover_45478

def state_134848 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 13 else 13)))
theorem cover_134848 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134848 := by
  apply coveredState_split_literal (state := state_134848) 3
    state_134849 state_135494
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134849
  · exact cover_135494
#print axioms cover_134848

def state_134847 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_134847 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134847 := by
  apply coveredState_split_literal (state := state_134847) 2
    state_134848 state_136187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134848
  · exact cover_136187
#print axioms cover_134847

def state_134846 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_134846 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134846 := by
  apply coveredState_split_literal (state := state_134846) 1
    state_134847 state_136456
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134847
  · exact cover_136456
#print axioms cover_134846

def state_134700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 13)))
theorem cover_134700 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134700 := by
  apply coveredState_split_literal (state := state_134700) 0
    state_134701 state_134846
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134701
  · exact cover_134846
#print axioms cover_134700

def state_134628 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 13 else 6)))
theorem cover_134628 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134628 := by
  apply coveredState_split_literal (state := state_134628) 4
    state_134629 state_134700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134629
  · exact cover_134700
#print axioms cover_134628

def state_134502 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 6 else 6)))
theorem cover_134502 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134502 := by
  apply coveredState_split_literal (state := state_134502) 3
    state_134503 state_134628
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134503
  · exact cover_134628
#print axioms cover_134502

def state_134314 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_134314 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_134314 := by
  apply coveredState_split_literal (state := state_134314) 2
    state_134315 state_134502
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_134315
  · exact cover_134502
#print axioms cover_134314

def state_133876 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_133876 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133876 := by
  apply coveredState_split_literal (state := state_133876) 1
    state_133877 state_134314
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133877
  · exact cover_134314
#print axioms cover_133876

def state_133638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 6)))
theorem cover_133638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133638 := by
  apply coveredState_split_literal (state := state_133638) 0
    state_133639 state_133876
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133639
  · exact cover_133876
#print axioms cover_133638

def state_133637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 6 else 3)))
theorem cover_133637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133637 := by
  apply coveredState_split_literal (state := state_133637) 4
    state_133638 state_136995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133638
  · exact cover_136995
#print axioms cover_133637

def state_133636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 3)))
theorem cover_133636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133636 := by
  apply coveredState_split_literal (state := state_133636) 3
    state_133637 state_137178
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133637
  · exact cover_137178
#print axioms cover_133636

def state_133500 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_133500 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133500 := by
  apply coveredState_split_literal (state := state_133500) 2
    state_133501 state_133636
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133501
  · exact cover_133636
#print axioms cover_133500

def state_133292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_133292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133292 := by
  apply coveredState_split_literal (state := state_133292) 1
    state_133293 state_133500
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133293
  · exact cover_133500
#print axioms cover_133292

def state_133142 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_133142 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_133142 := by
  apply coveredState_split_literal (state := state_133142) 0
    state_133143 state_133292
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_133143
  · exact cover_133292
#print axioms cover_133142

def state_132858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 1)))
theorem cover_132858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132858 := by
  apply coveredState_split_literal (state := state_132858) 4
    state_132859 state_133142
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132859
  · exact cover_133142
#print axioms cover_132858

def state_132170 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 1 else 1)))
theorem cover_132170 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132170 := by
  apply coveredState_split_literal (state := state_132170) 3
    state_132171 state_132858
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132171
  · exact cover_132858
#print axioms cover_132170

def state_132169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_132169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_132169 := by
  apply coveredState_split_literal (state := state_132169) 2
    state_132170 state_137443
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_132170
  · exact cover_137443
#print axioms cover_132169

def state_141392 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 10 else 7)))
theorem cover_141392 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141392 := by
  apply coveredState_split_literal (state := state_141392) 4
    state_141393 state_142294
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141393
  · exact cover_142294
#print axioms cover_141392

def state_141391 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_141391 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141391 := by
  apply coveredState_split_literal (state := state_141391) 2
    state_141392 state_142727
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141392
  · exact cover_142727
#print axioms cover_141391

def state_141390 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_141390 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141390 := by
  apply coveredState_split_literal (state := state_141390) 1
    state_141391 state_142742
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141391
  · exact cover_142742
#print axioms cover_141390

def state_141389 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_141389 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141389 := by
  apply coveredState_split_literal (state := state_141389) 3
    state_141390 state_142761
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141390
  · exact cover_142761
#print axioms cover_141389

def state_141363 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_141363 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141363 := by
  apply coveredState_split_literal (state := state_141363) 0
    state_141364 state_141389
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141364
  · exact cover_141389
#print axioms cover_141363

def state_141329 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_141329 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141329 := by
  apply coveredState_split_literal (state := state_141329) 4
    state_141330 state_141363
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141330
  · exact cover_141363
#print axioms cover_141329

def state_141197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_141197 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_141197 := by
  apply coveredState_split_literal (state := state_141197) 3
    state_141198 state_141329
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_141198
  · exact cover_141329
#print axioms cover_141197

def state_140357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 7) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_140357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_140357 := by
  apply coveredState_split_literal (state := state_140357) 2
    state_140358 state_141197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_140358
  · exact cover_141197
#print axioms cover_140357

def state_139475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_139475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139475 := by
  apply coveredState_split_literal (state := state_139475) 1
    state_139476 state_140357
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139476
  · exact cover_140357
#print axioms cover_139475

def state_139295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_139295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139295 := by
  apply coveredState_split_literal (state := state_139295) 0
    state_139296 state_139475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139296
  · exact cover_139475
#print axioms cover_139295

def state_139195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 3) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_139195 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_139195 := by
  apply coveredState_split_literal (state := state_139195) 4
    state_139196 state_139295
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_139196
  · exact cover_139295
#print axioms cover_139195

def state_143026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 2)))
theorem cover_143026 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_143026 := by
  apply coveredState_split_literal (state := state_143026) 2
    state_143027 state_143646
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_143027
  · exact cover_143646
#print axioms cover_143026

def state_144934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 10)))
theorem cover_144934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_144934 := by
  apply coveredState_split_literal (state := state_144934) 3
    state_144935 state_145848
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_144935
  · exact cover_145848
#print axioms cover_144934
end Mub6.Numerical.CircleFullPrototype.Forest
