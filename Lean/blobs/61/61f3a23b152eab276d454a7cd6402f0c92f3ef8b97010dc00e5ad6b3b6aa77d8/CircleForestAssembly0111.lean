import CircleFullInterface
import CircleForestAssembly0105
import CircleForestAssembly0107
import CircleForestAssembly0110
import CircleForestChunk0438
import CircleForestChunk0440
import CircleForestChunk0441
import CircleForestChunk0442
import CircleForestChunk0443
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1043289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 12)))
theorem cover_1043289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043289 := by
  apply coveredState_split_literal (state := state_1043289) 4
    state_1043290 state_1043293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043290
  · exact cover_1043293
#print axioms cover_1043289

def state_1043275 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 15 else 12)))
theorem cover_1043275 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043275 := by
  apply coveredState_split_literal (state := state_1043275) 2
    state_1043276 state_1043289
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043276
  · exact cover_1043289
#print axioms cover_1043275

def state_1043273 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1043273 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043273 := by
  apply coveredState_split_literal (state := state_1043273) 3
    state_1043274 state_1043275
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043274
  · exact cover_1043275
#print axioms cover_1043273

def state_1043272 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 12)))
theorem cover_1043272 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043272 := by
  apply coveredState_split_literal (state := state_1043272) 1
    state_1043273 state_1043370
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043273
  · exact cover_1043370
#print axioms cover_1043272

def state_1043371 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 13)))
theorem cover_1043371 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043371 := by
  apply coveredState_split_literal (state := state_1043371) 1
    state_1043372 state_1043425
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043372
  · exact cover_1043425
#print axioms cover_1043371

def state_1043271 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 12 else (if j.val < 4 then 7 else 6)))
theorem cover_1043271 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043271 := by
  apply coveredState_split_literal (state := state_1043271) 4
    state_1043272 state_1043371
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043272
  · exact cover_1043371
#print axioms cover_1043271

def state_1043457 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 16) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
theorem cover_1043457 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043457 := by
  apply coveredState_split_literal (state := state_1043457) 3
    state_1043458 state_1043467
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043458
  · exact cover_1043467
#print axioms cover_1043457

def state_1043456 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 26 else (if j.val < 4 then 15 else 25)))
theorem cover_1043456 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043456 := by
  apply coveredState_split_literal (state := state_1043456) 1
    state_1043457 state_1043522
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043457
  · exact cover_1043522
#print axioms cover_1043456

def state_1043455 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1043455 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043455 := by
  apply coveredState_split_literal (state := state_1043455) 2
    state_1043456 state_1043531
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043456
  · exact cover_1043531
#print axioms cover_1043455

def state_1043454 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 25)))
theorem cover_1043454 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043454 := by
  apply coveredState_split_literal (state := state_1043454) 0
    state_1043455 state_1043540
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043455
  · exact cover_1043540
#print axioms cover_1043454

def state_1043448 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1043448 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043448 := by
  apply coveredState_split_literal (state := state_1043448) 4
    state_1043449 state_1043454
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043449
  · exact cover_1043454
#print axioms cover_1043448

def state_1043438 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1043438 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043438 := by
  apply coveredState_split_literal (state := state_1043438) 3
    state_1043439 state_1043448
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043439
  · exact cover_1043448
#print axioms cover_1043438

def state_1043437 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1043437 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043437 := by
  apply coveredState_split_literal (state := state_1043437) 1
    state_1043438 state_1043543
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043438
  · exact cover_1043543
#print axioms cover_1043437

def state_1043559 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 13)))
theorem cover_1043559 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043559 := by
  apply coveredState_split_literal (state := state_1043559) 0
    state_1043560 state_1043615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043560
  · exact cover_1043615
#print axioms cover_1043559

def state_1043553 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 8) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
theorem cover_1043553 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043553 := by
  apply coveredState_split_literal (state := state_1043553) 3
    state_1043554 state_1043559
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043554
  · exact cover_1043559
#print axioms cover_1043553

def state_1043552 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 13)))
theorem cover_1043552 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043552 := by
  apply coveredState_split_literal (state := state_1043552) 1
    state_1043553 state_1043626
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043553
  · exact cover_1043626
#print axioms cover_1043552

def state_1043436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1043436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043436 := by
  apply coveredState_split_literal (state := state_1043436) 4
    state_1043437 state_1043552
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043437
  · exact cover_1043552
#print axioms cover_1043436

def state_1043270 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1043270 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043270 := by
  apply coveredState_split_literal (state := state_1043270) 2
    state_1043271 state_1043436
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043271
  · exact cover_1043436
#print axioms cover_1043270

def state_1042850 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1042850 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042850 := by
  apply coveredState_split_literal (state := state_1042850) 0
    state_1042851 state_1043270
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042851
  · exact cover_1043270
#print axioms cover_1042850

def state_1042849 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_1042849 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042849 := by
  apply coveredState_split_literal (state := state_1042849) 4
    state_1042850 state_1043633
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042850
  · exact cover_1043633
#print axioms cover_1042849

def state_1042827 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1042827 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042827 := by
  apply coveredState_split_literal (state := state_1042827) 3
    state_1042828 state_1042849
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042828
  · exact cover_1042849
#print axioms cover_1042827

def state_1042826 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1042826 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042826 := by
  apply coveredState_split_literal (state := state_1042826) 2
    state_1042827 state_1043642
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042827
  · exact cover_1043642
#print axioms cover_1042826

def state_1042825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1042825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042825 := by
  apply coveredState_split_literal (state := state_1042825) 1
    state_1042826 state_1043665
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042826
  · exact cover_1043665
#print axioms cover_1042825

def state_1043717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 4) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1043717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043717 := by
  apply coveredState_split_literal (state := state_1043717) 2
    state_1043718 state_1043759
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043718
  · exact cover_1043759
#print axioms cover_1043717

def state_1043716 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1043716 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043716 := by
  apply coveredState_split_literal (state := state_1043716) 1
    state_1043717 state_1043794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043717
  · exact cover_1043794
#print axioms cover_1043716

def state_1042824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 3)))
theorem cover_1042824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1042824 := by
  apply coveredState_split_literal (state := state_1042824) 0
    state_1042825 state_1043716
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1042825
  · exact cover_1043716
#print axioms cover_1042824

def state_1040970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 3 else 1)))
theorem cover_1040970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1040970 := by
  apply coveredState_split_literal (state := state_1040970) 4
    state_1040971 state_1042824
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1040971
  · exact cover_1042824
#print axioms cover_1040970

def state_1039138 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 3 else (if j.val < 4 then 1 else 1)))
theorem cover_1039138 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1039138 := by
  apply coveredState_split_literal (state := state_1039138) 3
    state_1039139 state_1040970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1039139
  · exact cover_1040970
#print axioms cover_1039138

def state_1038474 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 2) else (if j.val < 3 then 1 else (if j.val < 4 then 1 else 1)))
theorem cover_1038474 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1038474 := by
  apply coveredState_split_literal (state := state_1038474) 2
    state_1038475 state_1039138
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1038475
  · exact cover_1039138
#print axioms cover_1038474

def state_1043818 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1043818 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043818 := by
  apply coveredState_split_literal (state := state_1043818) 2
    state_1043819 state_1043866
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043819
  · exact cover_1043866
#print axioms cover_1043818

def state_1043817 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1043817 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043817 := by
  apply coveredState_split_literal (state := state_1043817) 1
    state_1043818 state_1043891
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043818
  · exact cover_1043891
#print axioms cover_1043817

def state_1043816 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 3 else 3) else (if j.val < 3 then 2 else (if j.val < 4 then 2 else 2)))
theorem cover_1043816 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1043816 := by
  apply coveredState_split_literal (state := state_1043816) 0
    state_1043817 state_1043910
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1043817
  · exact cover_1043910
#print axioms cover_1043816
end Mub6.Numerical.CircleFullD0.Forest
