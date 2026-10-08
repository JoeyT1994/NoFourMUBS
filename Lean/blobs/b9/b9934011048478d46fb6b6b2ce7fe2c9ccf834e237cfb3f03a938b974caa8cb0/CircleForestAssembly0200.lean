import CircleFullInterface
import CircleForestAssembly0199
import CircleForestChunk0751
import CircleForestChunk0752
import CircleForestChunk0753
import CircleForestChunk0754
import CircleForestChunk0755
import CircleForestChunk0756
import CircleForestChunk0757
import CircleForestChunk0758
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1481453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 19 else (if j.val < 4 then 25 else 25)))
theorem cover_1481453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481453 := by
  apply coveredState_split_literal (state := state_1481453) 1
    state_1481454 state_1481593
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481454
  · exact cover_1481593
#print axioms cover_1481453

def state_1481375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 25)))
theorem cover_1481375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481375 := by
  apply coveredState_split_literal (state := state_1481375) 2
    state_1481376 state_1481453
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481376
  · exact cover_1481453
#print axioms cover_1481375

def state_1481369 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 25 else 12)))
theorem cover_1481369 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481369 := by
  apply coveredState_split_literal (state := state_1481369) 4
    state_1481370 state_1481375
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481370
  · exact cover_1481375
#print axioms cover_1481369

def state_1481357 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1481357 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481357 := by
  apply coveredState_split_literal (state := state_1481357) 3
    state_1481358 state_1481369
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481358
  · exact cover_1481369
#print axioms cover_1481357

def state_1481356 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 9 else (if j.val < 4 then 12 else 12)))
theorem cover_1481356 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481356 := by
  apply coveredState_split_literal (state := state_1481356) 0
    state_1481357 state_1481610
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481357
  · exact cover_1481610
#print axioms cover_1481356

def state_1481340 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1481340 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481340 := by
  apply coveredState_split_literal (state := state_1481340) 2
    state_1481341 state_1481356
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481341
  · exact cover_1481356
#print axioms cover_1481340

def state_1481339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1481339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481339 := by
  apply coveredState_split_literal (state := state_1481339) 1
    state_1481340 state_1481619
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481340
  · exact cover_1481619
#print axioms cover_1481339

def state_1481702 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 8) else (if j.val < 3 then 18 else (if j.val < 4 then 25 else 26)))
theorem cover_1481702 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481702 := by
  apply coveredState_split_literal (state := state_1481702) 1
    state_1481703 state_1481760
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481703
  · exact cover_1481760
#print axioms cover_1481702

def state_1481869 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 206 else 104)))
theorem cover_1481869 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481869 := by
  apply coveredState_split_literal (state := state_1481869) 4
    state_1481870 state_1481919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481870
  · exact cover_1481919
#print axioms cover_1481869

def state_1481934 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 207 else 104)))
theorem cover_1481934 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481934 := by
  apply coveredState_split_literal (state := state_1481934) 4
    state_1481935 state_1481988
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481935
  · exact cover_1481988
#print axioms cover_1481934

def state_1481868 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 104)))
theorem cover_1481868 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481868 := by
  apply coveredState_split_literal (state := state_1481868) 3
    state_1481869 state_1481934
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481869
  · exact cover_1481934
#print axioms cover_1481868

def state_1482043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 207 else 104)))
theorem cover_1482043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482043 := by
  apply coveredState_split_literal (state := state_1482043) 4
    state_1482044 state_1482085
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482044
  · exact cover_1482085
#print axioms cover_1482043

def state_1482029 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 104)))
theorem cover_1482029 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482029 := by
  apply coveredState_split_literal (state := state_1482029) 3
    state_1482030 state_1482043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482030
  · exact cover_1482043
#print axioms cover_1482029

def state_1481867 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 65) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 104)))
theorem cover_1481867 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481867 := by
  apply coveredState_split_literal (state := state_1481867) 0
    state_1481868 state_1482029
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481868
  · exact cover_1482029
#print axioms cover_1481867

def state_1481865 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 104)))
theorem cover_1481865 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481865 := by
  apply coveredState_split_literal (state := state_1481865) 1
    state_1481866 state_1481867
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481866
  · exact cover_1481867
#print axioms cover_1481865

def state_1481864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 104)))
theorem cover_1481864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481864 := by
  apply coveredState_split_literal (state := state_1481864) 2
    state_1481865 state_1482120
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481865
  · exact cover_1482120
#print axioms cover_1481864

def state_1481863 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 52)))
theorem cover_1481863 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481863 := by
  apply coveredState_split_literal (state := state_1481863) 4
    state_1481864 state_1482177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481864
  · exact cover_1482177
#print axioms cover_1481863

def state_1481825 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1481825 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481825 := by
  apply coveredState_split_literal (state := state_1481825) 3
    state_1481826 state_1481863
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481826
  · exact cover_1481863
#print axioms cover_1481825

def state_1481824 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 32) else (if j.val < 3 then 38 else (if j.val < 4 then 51 else 52)))
theorem cover_1481824 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1481824 := by
  apply coveredState_split_literal (state := state_1481824) 0
    state_1481825 state_1482210
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1481825
  · exact cover_1482210
#print axioms cover_1481824

def state_1482267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 102 else 52)))
theorem cover_1482267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482267 := by
  apply coveredState_split_literal (state := state_1482267) 4
    state_1482268 state_1482309
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482268
  · exact cover_1482309
#print axioms cover_1482267

def state_1482344 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 192 else 66) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 104)))
theorem cover_1482344 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482344 := by
  apply coveredState_split_literal (state := state_1482344) 3
    state_1482345 state_1482392
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482345
  · exact cover_1482392
#print axioms cover_1482344

def state_1482343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 66) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 104)))
theorem cover_1482343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482343 := by
  apply coveredState_split_literal (state := state_1482343) 0
    state_1482344 state_1482433
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482344
  · exact cover_1482433
#print axioms cover_1482343

def state_1482342 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 76 else (if j.val < 4 then 103 else 104)))
theorem cover_1482342 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482342 := by
  apply coveredState_split_literal (state := state_1482342) 1
    state_1482343 state_1482490
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482343
  · exact cover_1482490
#print axioms cover_1482342

def state_1482532 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 66) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 104)))
theorem cover_1482532 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482532 := by
  apply coveredState_split_literal (state := state_1482532) 3
    state_1482533 state_1482562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482533
  · exact cover_1482562
#print axioms cover_1482532

def state_1482492 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 66) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 104)))
theorem cover_1482492 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482492 := by
  apply coveredState_split_literal (state := state_1482492) 0
    state_1482493 state_1482532
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482493
  · exact cover_1482532
#print axioms cover_1482492

def state_1482491 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 104)))
theorem cover_1482491 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482491 := by
  apply coveredState_split_literal (state := state_1482491) 1
    state_1482492 state_1482615
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482492
  · exact cover_1482615
#print axioms cover_1482491

def state_1482341 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 38 else (if j.val < 4 then 103 else 104)))
theorem cover_1482341 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482341 := by
  apply coveredState_split_literal (state := state_1482341) 2
    state_1482342 state_1482491
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482342
  · exact cover_1482491
#print axioms cover_1482341

def state_1482701 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 66) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 105)))
theorem cover_1482701 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482701 := by
  apply coveredState_split_literal (state := state_1482701) 3
    state_1482702 state_1482711
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482702
  · exact cover_1482711
#print axioms cover_1482701

def state_1482697 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 66) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 105)))
theorem cover_1482697 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482697 := by
  apply coveredState_split_literal (state := state_1482697) 0
    state_1482698 state_1482701
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482698
  · exact cover_1482701
#print axioms cover_1482697

def state_1482786 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 193 else 67) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 105)))
theorem cover_1482786 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482786 := by
  apply coveredState_split_literal (state := state_1482786) 3
    state_1482787 state_1482822
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482787
  · exact cover_1482822
#print axioms cover_1482786

def state_1482772 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 67) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 105)))
theorem cover_1482772 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482772 := by
  apply coveredState_split_literal (state := state_1482772) 0
    state_1482773 state_1482786
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482773
  · exact cover_1482786
#print axioms cover_1482772

def state_1482696 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 96 else 33) else (if j.val < 3 then 77 else (if j.val < 4 then 103 else 105)))
theorem cover_1482696 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1482696 := by
  apply coveredState_split_literal (state := state_1482696) 1
    state_1482697 state_1482772
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1482697
  · exact cover_1482772
#print axioms cover_1482696
end Mub6.Numerical.CircleFullD0.Forest
