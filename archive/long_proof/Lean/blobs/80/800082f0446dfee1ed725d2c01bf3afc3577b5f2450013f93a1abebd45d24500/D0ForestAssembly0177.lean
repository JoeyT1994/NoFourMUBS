import D0FullInterface
import D0ForestAssembly0175
import D0ForestAssembly0176
import D0ForestChunk0667
import D0ForestChunk0669
import D0ForestChunk0670
import D0ForestChunk0671
import D0ForestChunk0672
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.D0
open Mub6.Numerical.CircleArc.D0Soundness
open Mub6.Numerical.CircleFullD0
def state_1461466 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 15 else 4)))
theorem cover_1461466 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461466 := by
  apply coveredState_split_literal (state := state_1461466) 4
    state_1461467 state_1461726
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461467
  · exact cover_1461726
#print axioms cover_1461466

def state_1461462 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 11 else (if j.val < 4 then 7 else 4)))
theorem cover_1461462 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461462 := by
  apply coveredState_split_literal (state := state_1461462) 3
    state_1461463 state_1461466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461463
  · exact cover_1461466
#print axioms cover_1461462

def state_1461410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_1461410 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461410 := by
  apply coveredState_split_literal (state := state_1461410) 2
    state_1461411 state_1461462
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461411
  · exact cover_1461462
#print axioms cover_1461410

def state_1461316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_1461316 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461316 := by
  apply coveredState_split_literal (state := state_1461316) 1
    state_1461317 state_1461410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461317
  · exact cover_1461410
#print axioms cover_1461316

def state_1460952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 4)))
theorem cover_1460952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460952 := by
  apply coveredState_split_literal (state := state_1460952) 0
    state_1460953 state_1461316
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460953
  · exact cover_1461316
#print axioms cover_1460952

def state_1460951 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 7 else 2)))
theorem cover_1460951 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460951 := by
  apply coveredState_split_literal (state := state_1460951) 4
    state_1460952 state_1461735
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460952
  · exact cover_1461735
#print axioms cover_1460951

def state_1460935 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
theorem cover_1460935 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460935 := by
  apply coveredState_split_literal (state := state_1460935) 3
    state_1460936 state_1460951
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460936
  · exact cover_1460951
#print axioms cover_1460935

def state_1460917 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1460917 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460917 := by
  apply coveredState_split_literal (state := state_1460917) 2
    state_1460918 state_1460935
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460918
  · exact cover_1460935
#print axioms cover_1460917

def state_1460863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1460863 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460863 := by
  apply coveredState_split_literal (state := state_1460863) 1
    state_1460864 state_1460917
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460864
  · exact cover_1460917
#print axioms cover_1460863

def state_1460775 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 2 else 2) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 2)))
theorem cover_1460775 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1460775 := by
  apply coveredState_split_literal (state := state_1460775) 0
    state_1460776 state_1460863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1460776
  · exact cover_1460863
#print axioms cover_1460775

def state_1461873 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1461873 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461873 := by
  apply coveredState_split_literal (state := state_1461873) 3
    state_1461874 state_1461889
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461874
  · exact cover_1461889
#print axioms cover_1461873

def state_1461859 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 16) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1461859 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461859 := by
  apply coveredState_split_literal (state := state_1461859) 0
    state_1461860 state_1461873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461860
  · exact cover_1461873
#print axioms cover_1461859

def state_1461858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 25)))
theorem cover_1461858 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461858 := by
  apply coveredState_split_literal (state := state_1461858) 1
    state_1461859 state_1461938
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461859
  · exact cover_1461938
#print axioms cover_1461858

def state_1461953 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 51)))
theorem cover_1461953 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461953 := by
  apply coveredState_split_literal (state := state_1461953) 1
    state_1461954 state_1462009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461954
  · exact cover_1462009
#print axioms cover_1461953

def state_1461952 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 51)))
theorem cover_1461952 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461952 := by
  apply coveredState_split_literal (state := state_1461952) 2
    state_1461953 state_1462018
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461953
  · exact cover_1462018
#print axioms cover_1461952

def state_1461948 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 25)))
theorem cover_1461948 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461948 := by
  apply coveredState_split_literal (state := state_1461948) 4
    state_1461949 state_1461952
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461949
  · exact cover_1461952
#print axioms cover_1461948

def state_1461942 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1461942 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461942 := by
  apply coveredState_split_literal (state := state_1461942) 3
    state_1461943 state_1461948
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461943
  · exact cover_1461948
#print axioms cover_1461942

def state_1461940 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1461940 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461940 := by
  apply coveredState_split_literal (state := state_1461940) 0
    state_1461941 state_1461942
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461941
  · exact cover_1461942
#print axioms cover_1461940

def state_1461939 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1461939 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461939 := by
  apply coveredState_split_literal (state := state_1461939) 1
    state_1461940 state_1462019
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461940
  · exact cover_1462019
#print axioms cover_1461939

def state_1461857 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 25)))
theorem cover_1461857 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461857 := by
  apply coveredState_split_literal (state := state_1461857) 2
    state_1461858 state_1461939
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461858
  · exact cover_1461939
#print axioms cover_1461857

def state_1461845 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1461845 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461845 := by
  apply coveredState_split_literal (state := state_1461845) 4
    state_1461846 state_1461857
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461846
  · exact cover_1461857
#print axioms cover_1461845

def state_1461829 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1461829 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461829 := by
  apply coveredState_split_literal (state := state_1461829) 3
    state_1461830 state_1461845
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461830
  · exact cover_1461845
#print axioms cover_1461829

def state_1461821 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1461821 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461821 := by
  apply coveredState_split_literal (state := state_1461821) 0
    state_1461822 state_1461829
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461822
  · exact cover_1461829
#print axioms cover_1461821

def state_1461813 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1461813 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461813 := by
  apply coveredState_split_literal (state := state_1461813) 2
    state_1461814 state_1461821
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461814
  · exact cover_1461821
#print axioms cover_1461813

def state_1461812 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1461812 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1461812 := by
  apply coveredState_split_literal (state := state_1461812) 1
    state_1461813 state_1462020
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1461813
  · exact cover_1462020
#print axioms cover_1461812

def state_1462166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1462166 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462166 := by
  apply coveredState_split_literal (state := state_1462166) 1
    state_1462167 state_1462230
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462167
  · exact cover_1462230
#print axioms cover_1462166

def state_1462165 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 52)))
theorem cover_1462165 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462165 := by
  apply coveredState_split_literal (state := state_1462165) 2
    state_1462166 state_1462273
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462166
  · exact cover_1462273
#print axioms cover_1462165

def state_1462164 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 51 else 26)))
theorem cover_1462164 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462164 := by
  apply coveredState_split_literal (state := state_1462164) 4
    state_1462165 state_1462282
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462165
  · exact cover_1462282
#print axioms cover_1462164

def state_1462150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1462150 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462150 := by
  apply coveredState_split_literal (state := state_1462150) 3
    state_1462151 state_1462164
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462151
  · exact cover_1462164
#print axioms cover_1462150

def state_1462148 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 16) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1462148 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462148 := by
  apply coveredState_split_literal (state := state_1462148) 0
    state_1462149 state_1462150
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462149
  · exact cover_1462150
#print axioms cover_1462148

def state_1462147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 26)))
theorem cover_1462147 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462147 := by
  apply coveredState_split_literal (state := state_1462147) 1
    state_1462148 state_1462283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462148
  · exact cover_1462283
#print axioms cover_1462147

def state_1462085 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 26)))
theorem cover_1462085 : CoveredState d0Tables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1462085 := by
  apply coveredState_split_literal (state := state_1462085) 2
    state_1462086 state_1462147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1462086
  · exact cover_1462147
#print axioms cover_1462085
end Mub6.Numerical.CircleFullD0.Forest
