import D0FullInterface
import D0ForestAssembly0202
import D0ForestChunk0766
import D0ForestChunk0767
import D0ForestChunk0768
import D0ForestChunk0769
import D0ForestChunk0770
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1484729 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 25)))
theorem cover_1484729 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484729 := by
  apply coveredState_split_literal (state := state_1484729) 2
    state_1484730 state_1484753
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484730
  · exact cover_1484753
#print axioms cover_1484729

def state_1484728 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 25)))
theorem cover_1484728 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484728 := by
  apply coveredState_split_literal (state := state_1484728) 3
    state_1484729 state_1484828
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484729
  · exact cover_1484828
#print axioms cover_1484728

def state_1484722 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1484722 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484722 := by
  apply coveredState_split_literal (state := state_1484722) 4
    state_1484723 state_1484728
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484723
  · exact cover_1484728
#print axioms cover_1484722

def state_1484721 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
theorem cover_1484721 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484721 := by
  apply coveredState_split_literal (state := state_1484721) 0
    state_1484722 state_1484831
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484722
  · exact cover_1484831
#print axioms cover_1484721

def state_1484717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1484717 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484717 := by
  apply coveredState_split_literal (state := state_1484717) 2
    state_1484718 state_1484721
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484718
  · exact cover_1484721
#print axioms cover_1484717

def state_1484716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 12)))
theorem cover_1484716 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484716 := by
  apply coveredState_split_literal (state := state_1484716) 1
    state_1484717 state_1484836
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484717
  · exact cover_1484836
#print axioms cover_1484716

def state_1484915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 52)))
theorem cover_1484915 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484915 := by
  apply coveredState_split_literal (state := state_1484915) 4
    state_1484916 state_1484963
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484916
  · exact cover_1484963
#print axioms cover_1484915

def state_1484914 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 52)))
theorem cover_1484914 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484914 := by
  apply coveredState_split_literal (state := state_1484914) 3
    state_1484915 state_1484986
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484915
  · exact cover_1484986
#print axioms cover_1484914

def state_1484913 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 52)))
theorem cover_1484913 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484913 := by
  apply coveredState_split_literal (state := state_1484913) 0
    state_1484914 state_1484991
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484914
  · exact cover_1484991
#print axioms cover_1484913

def state_1485006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 52)))
theorem cover_1485006 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485006 := by
  apply coveredState_split_literal (state := state_1485006) 4
    state_1485007 state_1485046
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485007
  · exact cover_1485046
#print axioms cover_1485006

def state_1485005 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 52)))
theorem cover_1485005 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485005 := by
  apply coveredState_split_literal (state := state_1485005) 3
    state_1485006 state_1485107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485006
  · exact cover_1485107
#print axioms cover_1485005

def state_1485113 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 104 else 52)))
theorem cover_1485113 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485113 := by
  apply coveredState_split_literal (state := state_1485113) 4
    state_1485114 state_1485139
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485114
  · exact cover_1485139
#print axioms cover_1485113

def state_1485112 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 52)))
theorem cover_1485112 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485112 := by
  apply coveredState_split_literal (state := state_1485112) 3
    state_1485113 state_1485180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485113
  · exact cover_1485180
#print axioms cover_1485112

def state_1485004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 52)))
theorem cover_1485004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485004 := by
  apply coveredState_split_literal (state := state_1485004) 0
    state_1485005 state_1485112
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485005
  · exact cover_1485112
#print axioms cover_1485004

def state_1484912 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 38 else (if j.val < 4 then 52 else 52)))
theorem cover_1484912 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484912 := by
  apply coveredState_split_literal (state := state_1484912) 1
    state_1484913 state_1485004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484913
  · exact cover_1485004
#print axioms cover_1484912

def state_1484911 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 52)))
theorem cover_1484911 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484911 := by
  apply coveredState_split_literal (state := state_1484911) 2
    state_1484912 state_1485187
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484912
  · exact cover_1485187
#print axioms cover_1484911

def state_1484910 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 26)))
theorem cover_1484910 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484910 := by
  apply coveredState_split_literal (state := state_1484910) 4
    state_1484911 state_1485194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484911
  · exact cover_1485194
#print axioms cover_1484910

def state_1484909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1484909 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484909 := by
  apply coveredState_split_literal (state := state_1484909) 3
    state_1484910 state_1485245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484910
  · exact cover_1485245
#print axioms cover_1484909

def state_1484908 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1484908 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1484908 := by
  apply coveredState_split_literal (state := state_1484908) 0
    state_1484909 state_1485262
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1484909
  · exact cover_1485262
#print axioms cover_1484908

def state_1485312 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 52)))
theorem cover_1485312 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485312 := by
  apply coveredState_split_literal (state := state_1485312) 2
    state_1485313 state_1485364
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485313
  · exact cover_1485364
#print axioms cover_1485312

def state_1485466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 97 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 53)))
theorem cover_1485466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485466 := by
  apply coveredState_split_literal (state := state_1485466) 3
    state_1485467 state_1485528
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485467
  · exact cover_1485528
#print axioms cover_1485466

def state_1485438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 34) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 53)))
theorem cover_1485438 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485438 := by
  apply coveredState_split_literal (state := state_1485438) 0
    state_1485439 state_1485466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485439
  · exact cover_1485466
#print axioms cover_1485438

def state_1485537 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 35) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 53)))
theorem cover_1485537 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485537 := by
  apply coveredState_split_literal (state := state_1485537) 0
    state_1485538 state_1485559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485538
  · exact cover_1485559
#print axioms cover_1485537

def state_1485437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 53)))
theorem cover_1485437 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485437 := by
  apply coveredState_split_literal (state := state_1485437) 1
    state_1485438 state_1485537
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485438
  · exact cover_1485537
#print axioms cover_1485437

def state_1485385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 53)))
theorem cover_1485385 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485385 := by
  apply coveredState_split_literal (state := state_1485385) 2
    state_1485386 state_1485437
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485386
  · exact cover_1485437
#print axioms cover_1485385

def state_1485311 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 26)))
theorem cover_1485311 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485311 := by
  apply coveredState_split_literal (state := state_1485311) 4
    state_1485312 state_1485385
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485312
  · exact cover_1485385
#print axioms cover_1485311

def state_1485310 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1485310 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485310 := by
  apply coveredState_split_literal (state := state_1485310) 3
    state_1485311 state_1485622
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485311
  · exact cover_1485622
#print axioms cover_1485310

def state_1485708 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 39 else (if j.val < 4 then 52 else 53)))
theorem cover_1485708 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485708 := by
  apply coveredState_split_literal (state := state_1485708) 1
    state_1485709 state_1485744
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485709
  · exact cover_1485744
#print axioms cover_1485708

def state_1485684 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 53)))
theorem cover_1485684 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485684 := by
  apply coveredState_split_literal (state := state_1485684) 2
    state_1485685 state_1485708
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485685
  · exact cover_1485708
#print axioms cover_1485684

def state_1485644 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 52 else 26)))
theorem cover_1485644 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485644 := by
  apply coveredState_split_literal (state := state_1485644) 4
    state_1485645 state_1485684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485645
  · exact cover_1485684
#print axioms cover_1485644

def state_1485643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1485643 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485643 := by
  apply coveredState_split_literal (state := state_1485643) 3
    state_1485644 state_1485803
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485644
  · exact cover_1485803
#print axioms cover_1485643

def state_1485309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 17) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
theorem cover_1485309 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1485309 := by
  apply coveredState_split_literal (state := state_1485309) 0
    state_1485310 state_1485643
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1485310
  · exact cover_1485643
#print axioms cover_1485309
end Mub6.Numerical.CircleFullD0.Forest
