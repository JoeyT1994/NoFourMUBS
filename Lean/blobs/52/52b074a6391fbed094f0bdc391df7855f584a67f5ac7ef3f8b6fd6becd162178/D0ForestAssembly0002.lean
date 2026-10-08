import D0FullInterface
import D0ForestAssembly0001
import D0ForestChunk0001
import D0ForestChunk0003
import D0ForestChunk0004
import D0ForestChunk0005
import D0ForestChunk0006
set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_959297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_959297 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_959297 := by
  apply coveredState_split_literal (state := state_959297) 2
    state_959298 state_961071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_959298
  · exact cover_961071
#print axioms cover_959297

def state_942383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_942383 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942383 := by
  apply coveredState_split_literal (state := state_942383) 1
    state_942384 state_959297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942384
  · exact cover_959297
#print axioms cover_942383

def state_942029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 6)))
theorem cover_942029 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942029 := by
  apply coveredState_split_literal (state := state_942029) 0
    state_942030 state_942383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942030
  · exact cover_942383
#print axioms cover_942029

def state_966981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 4 else 7)))
theorem cover_966981 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966981 := by
  apply coveredState_split_literal (state := state_966981) 3
    state_966982 state_967949
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966982
  · exact cover_967949
#print axioms cover_966981

def state_969038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_969038 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969038 := by
  apply coveredState_split_literal (state := state_969038) 2
    state_969039 state_969808
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969039
  · exact cover_969808
#print axioms cover_969038

def state_969037 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_969037 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_969037 := by
  apply coveredState_split_literal (state := state_969037) 1
    state_969038 state_970193
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_969038
  · exact cover_970193
#print axioms cover_969037

def state_968827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 14)))
theorem cover_968827 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968827 := by
  apply coveredState_split_literal (state := state_968827) 0
    state_968828 state_969037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968828
  · exact cover_969037
#print axioms cover_968827

def state_968826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 9 else 7)))
theorem cover_968826 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968826 := by
  apply coveredState_split_literal (state := state_968826) 4
    state_968827 state_971086
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968827
  · exact cover_971086
#print axioms cover_968826

def state_968414 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 4 else 7)))
theorem cover_968414 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_968414 := by
  apply coveredState_split_literal (state := state_968414) 3
    state_968415 state_968826
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_968415
  · exact cover_968826
#print axioms cover_968414

def state_966980 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_966980 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966980 := by
  apply coveredState_split_literal (state := state_966980) 2
    state_966981 state_968414
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966981
  · exact cover_968414
#print axioms cover_966980

def state_966768 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_966768 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966768 := by
  apply coveredState_split_literal (state := state_966768) 1
    state_966769 state_966980
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966769
  · exact cover_966980
#print axioms cover_966768

def state_966700 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 7)))
theorem cover_966700 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_966700 := by
  apply coveredState_split_literal (state := state_966700) 0
    state_966701 state_966768
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_966701
  · exact cover_966768
#print axioms cover_966700

def state_942028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 4 else 3)))
theorem cover_942028 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942028 := by
  apply coveredState_split_literal (state := state_942028) 4
    state_942029 state_966700
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942029
  · exact cover_966700
#print axioms cover_942028

def state_942027 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 2 else 3)))
theorem cover_942027 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942027 := by
  apply coveredState_split_literal (state := state_942027) 3
    state_942028 state_971147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942028
  · exact cover_971147
#print axioms cover_942027

def state_971413 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 4 else 3)))
theorem cover_971413 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971413 := by
  apply coveredState_split_literal (state := state_971413) 4
    state_971414 state_972371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971414
  · exact cover_972371
#print axioms cover_971413

def state_972736 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_972736 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972736 := by
  apply coveredState_split_literal (state := state_972736) 3
    state_972737 state_973760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972737
  · exact cover_973760
#print axioms cover_972736

def state_972735 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_972735 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972735 := by
  apply coveredState_split_literal (state := state_972735) 1
    state_972736 state_973779
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972736
  · exact cover_973779
#print axioms cover_972735

def state_972663 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 6)))
theorem cover_972663 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972663 := by
  apply coveredState_split_literal (state := state_972663) 0
    state_972664 state_972735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972664
  · exact cover_972735
#print axioms cover_972663

def state_974665 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 21) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_974665 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974665 := by
  apply coveredState_split_literal (state := state_974665) 3
    state_974666 state_974785
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974666
  · exact cover_974785
#print axioms cover_974665

def state_974641 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_974641 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974641 := by
  apply coveredState_split_literal (state := state_974641) 1
    state_974642 state_974665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974642
  · exact cover_974665
#print axioms cover_974641

def state_974599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_974599 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974599 := by
  apply coveredState_split_literal (state := state_974599) 0
    state_974600 state_974641
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974600
  · exact cover_974641
#print axioms cover_974599

def state_974598 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 7)))
theorem cover_974598 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974598 := by
  apply coveredState_split_literal (state := state_974598) 4
    state_974599 state_975740
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974599
  · exact cover_975740
#print axioms cover_974598

def state_974196 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_974196 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974196 := by
  apply coveredState_split_literal (state := state_974196) 2
    state_974197 state_974598
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974197
  · exact cover_974598
#print axioms cover_974196

def state_974195 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 10) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_974195 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974195 := by
  apply coveredState_split_literal (state := state_974195) 3
    state_974196 state_975749
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974196
  · exact cover_975749
#print axioms cover_974195

def state_977621 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 57)))
theorem cover_977621 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977621 := by
  apply coveredState_split_literal (state := state_977621) 2
    state_977622 state_978347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977622
  · exact cover_978347
#print axioms cover_977621

def state_977579 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 43 else 28)))
theorem cover_977579 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977579 := by
  apply coveredState_split_literal (state := state_977579) 4
    state_977580 state_977621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977580
  · exact cover_977621
#print axioms cover_977579

def state_977521 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_977521 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977521 := by
  apply coveredState_split_literal (state := state_977521) 3
    state_977522 state_977579
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977522
  · exact cover_977579
#print axioms cover_977521

def state_977520 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_977520 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977520 := by
  apply coveredState_split_literal (state := state_977520) 1
    state_977521 state_978788
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977521
  · exact cover_978788
#print axioms cover_977520

def state_977484 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 31 else (if j.val < 4 then 21 else 28)))
theorem cover_977484 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_977484 := by
  apply coveredState_split_literal (state := state_977484) 0
    state_977485 state_977520
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_977485
  · exact cover_977520
#print axioms cover_977484

def state_976744 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 28)))
theorem cover_976744 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976744 := by
  apply coveredState_split_literal (state := state_976744) 2
    state_976745 state_977484
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976745
  · exact cover_977484
#print axioms cover_976744

def state_976743 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 21 else 14)))
theorem cover_976743 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976743 := by
  apply coveredState_split_literal (state := state_976743) 4
    state_976744 state_978817
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976744
  · exact cover_978817
#print axioms cover_976743

def state_976657 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 22) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_976657 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976657 := by
  apply coveredState_split_literal (state := state_976657) 3
    state_976658 state_976743
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976658
  · exact cover_976743
#print axioms cover_976657

def state_976656 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_976656 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976656 := by
  apply coveredState_split_literal (state := state_976656) 1
    state_976657 state_978904
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976657
  · exact cover_978904
#print axioms cover_976656

def state_976634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 14)))
theorem cover_976634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976634 := by
  apply coveredState_split_literal (state := state_976634) 0
    state_976635 state_976656
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976635
  · exact cover_976656
#print axioms cover_976634

def state_976633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 15 else (if j.val < 4 then 10 else 7)))
theorem cover_976633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_976633 := by
  apply coveredState_split_literal (state := state_976633) 4
    state_976634 state_978939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_976634
  · exact cover_978939
#print axioms cover_976633

def state_975885 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 10 else 7)))
theorem cover_975885 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975885 := by
  apply coveredState_split_literal (state := state_975885) 2
    state_975886 state_976633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975886
  · exact cover_976633
#print axioms cover_975885

def state_975884 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_975884 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_975884 := by
  apply coveredState_split_literal (state := state_975884) 3
    state_975885 state_978948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_975885
  · exact cover_978948
#print axioms cover_975884

def state_974194 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_974194 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974194 := by
  apply coveredState_split_literal (state := state_974194) 1
    state_974195 state_975884
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974195
  · exact cover_975884
#print axioms cover_974194

def state_974150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 7)))
theorem cover_974150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_974150 := by
  apply coveredState_split_literal (state := state_974150) 0
    state_974151 state_974194
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_974151
  · exact cover_974194
#print axioms cover_974150

def state_972662 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 5 else 3)))
theorem cover_972662 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_972662 := by
  apply coveredState_split_literal (state := state_972662) 4
    state_972663 state_974150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_972663
  · exact cover_974150
#print axioms cover_972662

def state_971412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 2 else 3)))
theorem cover_971412 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_971412 := by
  apply coveredState_split_literal (state := state_971412) 3
    state_971413 state_972662
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_971413
  · exact cover_972662
#print axioms cover_971412

def state_942026 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_942026 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_942026 := by
  apply coveredState_split_literal (state := state_942026) 2
    state_942027 state_971412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_942027
  · exact cover_971412
#print axioms cover_942026

def state_940928 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_940928 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940928 := by
  apply coveredState_split_literal (state := state_940928) 1
    state_940929 state_942026
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940929
  · exact cover_942026
#print axioms cover_940928

def state_940786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 3)))
theorem cover_940786 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940786 := by
  apply coveredState_split_literal (state := state_940786) 0
    state_940787 state_940928
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940787
  · exact cover_940928
#print axioms cover_940786

def state_940368 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 2 else 1)))
theorem cover_940368 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940368 := by
  apply coveredState_split_literal (state := state_940368) 4
    state_940369 state_940786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940369
  · exact cover_940786
#print axioms cover_940368

def state_940367 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_940367 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_940367 := by
  apply coveredState_split_literal (state := state_940367) 3
    state_940368 state_979261
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_940368
  · exact cover_979261
#print axioms cover_940367

def state_939525 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_939525 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_939525 := by
  apply coveredState_split_literal (state := state_939525) 2
    state_939526 state_940367
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_939526
  · exact cover_940367
#print axioms cover_939525

def state_982635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 20)))
theorem cover_982635 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982635 := by
  apply coveredState_split_literal (state := state_982635) 2
    state_982636 state_983507
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982636
  · exact cover_983507
#print axioms cover_982635

def state_985056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 34 else (if j.val < 4 then 51 else 42)))
theorem cover_985056 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985056 := by
  apply coveredState_split_literal (state := state_985056) 0
    state_985057 state_985326
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985057
  · exact cover_985326
#print axioms cover_985056

def state_985055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 42)))
theorem cover_985055 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985055 := by
  apply coveredState_split_literal (state := state_985055) 2
    state_985056 state_986159
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985056
  · exact cover_986159
#print axioms cover_985055

def state_985054 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 53) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
theorem cover_985054 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_985054 := by
  apply coveredState_split_literal (state := state_985054) 4
    state_985055 state_986570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_985055
  · exact cover_986570
#print axioms cover_985054

def state_984992 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
theorem cover_984992 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984992 := by
  apply coveredState_split_literal (state := state_984992) 1
    state_984993 state_985054
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984993
  · exact cover_985054
#print axioms cover_984992

def state_984686 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_984686 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984686 := by
  apply coveredState_split_literal (state := state_984686) 3
    state_984687 state_984992
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984687
  · exact cover_984992
#print axioms cover_984686

def state_984596 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_984596 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984596 := by
  apply coveredState_split_literal (state := state_984596) 0
    state_984597 state_984686
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984597
  · exact cover_984686
#print axioms cover_984596

def state_984004 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 21)))
theorem cover_984004 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_984004 := by
  apply coveredState_split_literal (state := state_984004) 2
    state_984005 state_984596
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_984005
  · exact cover_984596
#print axioms cover_984004

def state_982634 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 26) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_982634 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982634 := by
  apply coveredState_split_literal (state := state_982634) 4
    state_982635 state_984004
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982635
  · exact cover_984004
#print axioms cover_982634

def state_987690 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 54) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 43)))
theorem cover_987690 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987690 := by
  apply coveredState_split_literal (state := state_987690) 2
    state_987691 state_988504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987691
  · exact cover_988504
#print axioms cover_987690

def state_987689 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 43)))
theorem cover_987689 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987689 := by
  apply coveredState_split_literal (state := state_987689) 1
    state_987690 state_989409
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987690
  · exact cover_989409
#print axioms cover_987689

def state_987399 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 21)))
theorem cover_987399 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987399 := by
  apply coveredState_split_literal (state := state_987399) 4
    state_987400 state_987689
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987400
  · exact cover_987689
#print axioms cover_987399

def state_987243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_987243 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987243 := by
  apply coveredState_split_literal (state := state_987243) 3
    state_987244 state_987399
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987244
  · exact cover_987399
#print axioms cover_987243

def state_987197 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 21)))
theorem cover_987197 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987197 := by
  apply coveredState_split_literal (state := state_987197) 0
    state_987198 state_987243
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987198
  · exact cover_987243
#print axioms cover_987197

def state_987039 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 21)))
theorem cover_987039 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987039 := by
  apply coveredState_split_literal (state := state_987039) 2
    state_987040 state_987197
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987040
  · exact cover_987197
#print axioms cover_987039

def state_987003 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 27) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_987003 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_987003 := by
  apply coveredState_split_literal (state := state_987003) 4
    state_987004 state_987039
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_987004
  · exact cover_987039
#print axioms cover_987003

def state_982633 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 10)))
theorem cover_982633 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_982633 := by
  apply coveredState_split_literal (state := state_982633) 1
    state_982634 state_987003
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_982634
  · exact cover_987003
#print axioms cover_982633
end Mub6.Numerical.CircleFullD0.Forest
