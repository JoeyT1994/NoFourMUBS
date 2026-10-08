import CircleFullInterface
import CircleForestAssembly0097
import CircleForestAssembly0098
import CircleForestChunk0395
import CircleForestChunk0399
import CircleForestChunk0400
import CircleForestChunk0401
import CircleForestChunk0402
import CircleForestChunk0403
import CircleForestChunk0404
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1033507 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 204) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 126)))
theorem cover_1033507 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033507 := by
  apply coveredState_split_literal (state := state_1033507) 2
    state_1033508 state_1033573
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033508
  · exact cover_1033573
#print axioms cover_1033507

def state_1033652 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 205) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 126)))
theorem cover_1033652 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033652 := by
  apply coveredState_split_literal (state := state_1033652) 2
    state_1033653 state_1033698
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033653
  · exact cover_1033698
#print axioms cover_1033652

def state_1033506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 190 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 126)))
theorem cover_1033506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033506 := by
  apply coveredState_split_literal (state := state_1033506) 1
    state_1033507 state_1033652
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033507
  · exact cover_1033652
#print axioms cover_1033506

def state_1033804 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 75 else 126)))
theorem cover_1033804 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033804 := by
  apply coveredState_split_literal (state := state_1033804) 3
    state_1033805 state_1033834
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033805
  · exact cover_1033834
#print axioms cover_1033804

def state_1033752 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 126)))
theorem cover_1033752 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033752 := by
  apply coveredState_split_literal (state := state_1033752) 2
    state_1033753 state_1033804
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033753
  · exact cover_1033804
#print axioms cover_1033752

def state_1033956 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 205) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 252)))
theorem cover_1033956 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033956 := by
  apply coveredState_split_literal (state := state_1033956) 0
    state_1033957 state_1034016
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033957
  · exact cover_1034016
#print axioms cover_1033956

def state_1033955 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 205) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 126)))
theorem cover_1033955 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033955 := by
  apply coveredState_split_literal (state := state_1033955) 4
    state_1033956 state_1034037
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033956
  · exact cover_1034037
#print axioms cover_1033955

def state_1033937 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 205) else (if j.val < 3 then 207 else (if j.val < 4 then 75 else 126)))
theorem cover_1033937 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033937 := by
  apply coveredState_split_literal (state := state_1033937) 3
    state_1033938 state_1033955
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033938
  · exact cover_1033955
#print axioms cover_1033937

def state_1033881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 205) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 126)))
theorem cover_1033881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033881 := by
  apply coveredState_split_literal (state := state_1033881) 2
    state_1033882 state_1033937
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033882
  · exact cover_1033937
#print axioms cover_1033881

def state_1033751 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 126)))
theorem cover_1033751 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033751 := by
  apply coveredState_split_literal (state := state_1033751) 1
    state_1033752 state_1033881
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033752
  · exact cover_1033881
#print axioms cover_1033751

def state_1033505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 126)))
theorem cover_1033505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033505 := by
  apply coveredState_split_literal (state := state_1033505) 0
    state_1033506 state_1033751
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033506
  · exact cover_1033751
#print axioms cover_1033505

def state_1033504 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 63)))
theorem cover_1033504 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033504 := by
  apply coveredState_split_literal (state := state_1033504) 4
    state_1033505 state_1034038
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033505
  · exact cover_1034038
#print axioms cover_1033504

def state_1033444 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 63)))
theorem cover_1033444 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033444 := by
  apply coveredState_split_literal (state := state_1033444) 3
    state_1033445 state_1033504
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033445
  · exact cover_1033504
#print axioms cover_1033444

def state_1033348 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 102) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
theorem cover_1033348 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033348 := by
  apply coveredState_split_literal (state := state_1033348) 2
    state_1033349 state_1033444
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033349
  · exact cover_1033444
#print axioms cover_1033348

def state_1034156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 126)))
theorem cover_1034156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034156 := by
  apply coveredState_split_literal (state := state_1034156) 0
    state_1034157 state_1034190
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034157
  · exact cover_1034190
#print axioms cover_1034156

def state_1034155 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 75 else 63)))
theorem cover_1034155 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034155 := by
  apply coveredState_split_literal (state := state_1034155) 4
    state_1034156 state_1034231
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034156
  · exact cover_1034231
#print axioms cover_1034155

def state_1034129 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 103 else (if j.val < 4 then 37 else 63)))
theorem cover_1034129 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034129 := by
  apply coveredState_split_literal (state := state_1034129) 3
    state_1034130 state_1034155
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034130
  · exact cover_1034155
#print axioms cover_1034129

def state_1034067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 103) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
theorem cover_1034067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034067 := by
  apply coveredState_split_literal (state := state_1034067) 2
    state_1034068 state_1034129
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034068
  · exact cover_1034129
#print axioms cover_1034067

def state_1033347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
theorem cover_1033347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033347 := by
  apply coveredState_split_literal (state := state_1033347) 1
    state_1033348 state_1034067
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033348
  · exact cover_1034067
#print axioms cover_1033347

def state_1033283 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 63)))
theorem cover_1033283 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033283 := by
  apply coveredState_split_literal (state := state_1033283) 0
    state_1033284 state_1033347
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1033284
  · exact cover_1033347
#print axioms cover_1033283

def state_1032445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 37 else 31)))
theorem cover_1032445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032445 := by
  apply coveredState_split_literal (state := state_1032445) 4
    state_1032446 state_1033283
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032446
  · exact cover_1033283
#print axioms cover_1032445

def state_1032383 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 18 else 31)))
theorem cover_1032383 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032383 := by
  apply coveredState_split_literal (state := state_1032383) 3
    state_1032384 state_1032445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032384
  · exact cover_1032445
#print axioms cover_1032383

def state_1032307 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1032307 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1032307 := by
  apply coveredState_split_literal (state := state_1032307) 2
    state_1032308 state_1032383
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1032308
  · exact cover_1032383
#print axioms cover_1032307

def state_1031153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1031153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031153 := by
  apply coveredState_split_literal (state := state_1031153) 1
    state_1031154 state_1032307
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031154
  · exact cover_1032307
#print axioms cover_1031153

def state_1031071 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 31)))
theorem cover_1031071 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1031071 := by
  apply coveredState_split_literal (state := state_1031071) 0
    state_1031072 state_1031153
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1031072
  · exact cover_1031153
#print axioms cover_1031071

def state_1030267 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 25) else (if j.val < 3 then 25 else (if j.val < 4 then 18 else 15)))
theorem cover_1030267 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1030267 := by
  apply coveredState_split_literal (state := state_1030267) 4
    state_1030268 state_1031071
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1030268
  · exact cover_1031071
#print axioms cover_1030267

def state_1034295 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 62)))
theorem cover_1034295 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034295 := by
  apply coveredState_split_literal (state := state_1034295) 0
    state_1034296 state_1034305
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034296
  · exact cover_1034305
#print axioms cover_1034295

def state_1034294 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 31)))
theorem cover_1034294 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034294 := by
  apply coveredState_split_literal (state := state_1034294) 4
    state_1034295 state_1034362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034295
  · exact cover_1034362
#print axioms cover_1034294

def state_1034293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 51 else (if j.val < 4 then 19 else 31)))
theorem cover_1034293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034293 := by
  apply coveredState_split_literal (state := state_1034293) 3
    state_1034294 state_1034379
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034294
  · exact cover_1034379
#print axioms cover_1034293

def state_1034291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 50) else (if j.val < 3 then 25 else (if j.val < 4 then 19 else 31)))
theorem cover_1034291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034291 := by
  apply coveredState_split_literal (state := state_1034291) 2
    state_1034292 state_1034293
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034292
  · exact cover_1034293
#print axioms cover_1034291

def state_1034410 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 62)))
theorem cover_1034410 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034410 := by
  apply coveredState_split_literal (state := state_1034410) 1
    state_1034411 state_1034466
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034411
  · exact cover_1034466
#print axioms cover_1034410

def state_1034404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 51) else (if j.val < 3 then 51 else (if j.val < 4 then 38 else 62)))
theorem cover_1034404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1034404 := by
  apply coveredState_split_literal (state := state_1034404) 0
    state_1034405 state_1034410
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1034405
  · exact cover_1034410
#print axioms cover_1034404
end Mub6.Numerical.CircleFullD0.Forest
