import CircleFullInterface
import CircleForestAssembly0135
import CircleForestChunk0527
import CircleForestChunk0528
import CircleForestChunk0529
import CircleForestChunk0530
import CircleForestChunk0531
import CircleForestChunk0532
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1315293 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1315293 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315293 := by
  apply coveredState_split_literal (state := state_1315293) 3
    state_1315294 state_1315313
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315294
  · exact cover_1315313
#print axioms cover_1315293

def state_1315292 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1315292 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315292 := by
  apply coveredState_split_literal (state := state_1315292) 2
    state_1315293 state_1315396
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315293
  · exact cover_1315396
#print axioms cover_1315292

def state_1315291 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1315291 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315291 := by
  apply coveredState_split_literal (state := state_1315291) 4
    state_1315292 state_1315407
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315292
  · exact cover_1315407
#print axioms cover_1315291

def state_1315290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1315290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315290 := by
  apply coveredState_split_literal (state := state_1315290) 3
    state_1315291 state_1315416
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315291
  · exact cover_1315416
#print axioms cover_1315290

def state_1315256 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1315256 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315256 := by
  apply coveredState_split_literal (state := state_1315256) 1
    state_1315257 state_1315290
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315257
  · exact cover_1315290
#print axioms cover_1315256

def state_1315475 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1315475 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315475 := by
  apply coveredState_split_literal (state := state_1315475) 3
    state_1315476 state_1315519
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315476
  · exact cover_1315519
#print axioms cover_1315475

def state_1315471 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1315471 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315471 := by
  apply coveredState_split_literal (state := state_1315471) 1
    state_1315472 state_1315475
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315472
  · exact cover_1315475
#print axioms cover_1315471

def state_1315255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1315255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315255 := by
  apply coveredState_split_literal (state := state_1315255) 0
    state_1315256 state_1315471
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315256
  · exact cover_1315471
#print axioms cover_1315255

def state_1315254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 3)))
theorem cover_1315254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315254 := by
  apply coveredState_split_literal (state := state_1315254) 4
    state_1315255 state_1315562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315255
  · exact cover_1315562
#print axioms cover_1315254

def state_1315253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 3 else 3)))
theorem cover_1315253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315253 := by
  apply coveredState_split_literal (state := state_1315253) 3
    state_1315254 state_1315569
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315254
  · exact cover_1315569
#print axioms cover_1315253

def state_1315252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 2 else (if j.val < 4 then 3 else 3)))
theorem cover_1315252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315252 := by
  apply coveredState_split_literal (state := state_1315252) 2
    state_1315253 state_1315578
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315253
  · exact cover_1315578
#print axioms cover_1315252

def state_1315611 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 12)))
theorem cover_1315611 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315611 := by
  apply coveredState_split_literal (state := state_1315611) 1
    state_1315612 state_1315663
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315612
  · exact cover_1315663
#print axioms cover_1315611

def state_1315610 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 6)))
theorem cover_1315610 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315610 := by
  apply coveredState_split_literal (state := state_1315610) 4
    state_1315611 state_1315682
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315611
  · exact cover_1315682
#print axioms cover_1315610

def state_1315609 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
theorem cover_1315609 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315609 := by
  apply coveredState_split_literal (state := state_1315609) 3
    state_1315610 state_1315685
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315610
  · exact cover_1315685
#print axioms cover_1315609

def state_1315878 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 48)))
theorem cover_1315878 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315878 := by
  apply coveredState_split_literal (state := state_1315878) 1
    state_1315879 state_1315880
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315879
  · exact cover_1315880
#print axioms cover_1315878

def state_1315864 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 48)))
theorem cover_1315864 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315864 := by
  apply coveredState_split_literal (state := state_1315864) 3
    state_1315865 state_1315878
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315865
  · exact cover_1315878
#print axioms cover_1315864

def state_1315806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 48)))
theorem cover_1315806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315806 := by
  apply coveredState_split_literal (state := state_1315806) 0
    state_1315807 state_1315864
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315807
  · exact cover_1315864
#print axioms cover_1315806

def state_1315805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
theorem cover_1315805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315805 := by
  apply coveredState_split_literal (state := state_1315805) 4
    state_1315806 state_1315943
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315806
  · exact cover_1315943
#print axioms cover_1315805

def state_1315741 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1315741 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315741 := by
  apply coveredState_split_literal (state := state_1315741) 2
    state_1315742 state_1315805
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315742
  · exact cover_1315805
#print axioms cover_1315741

def state_1316044 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 58) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 48)))
theorem cover_1316044 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316044 := by
  apply coveredState_split_literal (state := state_1316044) 2
    state_1316045 state_1316100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316045
  · exact cover_1316100
#print axioms cover_1316044

def state_1316043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 48)))
theorem cover_1316043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316043 := by
  apply coveredState_split_literal (state := state_1316043) 1
    state_1316044 state_1316141
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316044
  · exact cover_1316141
#print axioms cover_1316043

def state_1316009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 48)))
theorem cover_1316009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316009 := by
  apply coveredState_split_literal (state := state_1316009) 3
    state_1316010 state_1316043
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316010
  · exact cover_1316043
#print axioms cover_1316009

def state_1315995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 48)))
theorem cover_1315995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315995 := by
  apply coveredState_split_literal (state := state_1315995) 0
    state_1315996 state_1316009
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315996
  · exact cover_1316009
#print axioms cover_1315995

def state_1316180 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 49)))
theorem cover_1316180 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316180 := by
  apply coveredState_split_literal (state := state_1316180) 3
    state_1316181 state_1316196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316181
  · exact cover_1316196
#print axioms cover_1316180

def state_1316172 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 49)))
theorem cover_1316172 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316172 := by
  apply coveredState_split_literal (state := state_1316172) 0
    state_1316173 state_1316180
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316173
  · exact cover_1316180
#print axioms cover_1316172

def state_1315994 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 24)))
theorem cover_1315994 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315994 := by
  apply coveredState_split_literal (state := state_1315994) 4
    state_1315995 state_1316172
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315995
  · exact cover_1316172
#print axioms cover_1315994

def state_1315970 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1315970 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315970 := by
  apply coveredState_split_literal (state := state_1315970) 2
    state_1315971 state_1315994
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315971
  · exact cover_1315994
#print axioms cover_1315970

def state_1315740 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 24)))
theorem cover_1315740 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315740 := by
  apply coveredState_split_literal (state := state_1315740) 1
    state_1315741 state_1315970
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315741
  · exact cover_1315970
#print axioms cover_1315740

def state_1315739 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 25 else 12)))
theorem cover_1315739 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315739 := by
  apply coveredState_split_literal (state := state_1315739) 4
    state_1315740 state_1316253
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315740
  · exact cover_1316253
#print axioms cover_1315739

def state_1315707 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 8 else (if j.val < 4 then 12 else 12)))
theorem cover_1315707 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1315707 := by
  apply coveredState_split_literal (state := state_1315707) 3
    state_1315708 state_1315739
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1315708
  · exact cover_1315739
#print axioms cover_1315707

def state_1316361 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 51 else 48)))
theorem cover_1316361 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316361 := by
  apply coveredState_split_literal (state := state_1316361) 1
    state_1316362 state_1316405
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316362
  · exact cover_1316405
#print axioms cover_1316361

def state_1316343 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 29) else (if j.val < 3 then 17 else (if j.val < 4 then 25 else 48)))
theorem cover_1316343 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨16, by decide⟩ : Fin 32)) state_1316343 := by
  apply coveredState_split_literal (state := state_1316343) 3
    state_1316344 state_1316361
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1316344
  · exact cover_1316361
#print axioms cover_1316343
end Mub6.Numerical.CircleFullD0.Forest
