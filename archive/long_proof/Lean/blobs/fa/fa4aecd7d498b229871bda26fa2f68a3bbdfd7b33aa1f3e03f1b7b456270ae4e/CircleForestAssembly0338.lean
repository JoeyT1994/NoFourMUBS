import CircleFullInterface
import CircleForestAssembly0320
import CircleForestAssembly0331
import CircleForestAssembly0337
import CircleForestChunk1306
import CircleForestChunk1309
import CircleForestChunk1310
import CircleForestChunk1311
import CircleForestChunk1312
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_1614599 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 15 else 12)))
theorem cover_1614599 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614599 := by
  apply coveredState_split_literal (state := state_1614599) 0
    state_1614600 state_1614835
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614600
  · exact cover_1614835
#print axioms cover_1614599

def state_1614163 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 12)))
theorem cover_1614163 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614163 := by
  apply coveredState_split_literal (state := state_1614163) 3
    state_1614164 state_1614599
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614164
  · exact cover_1614599
#print axioms cover_1614163

def state_1614162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 7 else 6)))
theorem cover_1614162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614162 := by
  apply coveredState_split_literal (state := state_1614162) 4
    state_1614163 state_1614850
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614163
  · exact cover_1614850
#print axioms cover_1614162

def state_1614156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 11) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1614156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614156 := by
  apply coveredState_split_literal (state := state_1614156) 2
    state_1614157 state_1614162
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614157
  · exact cover_1614162
#print axioms cover_1614156

def state_1609100 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1609100 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1609100 := by
  apply coveredState_split_literal (state := state_1609100) 1
    state_1609101 state_1614156
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1609101
  · exact cover_1614156
#print axioms cover_1609100

def state_1597132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 6)))
theorem cover_1597132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597132 := by
  apply coveredState_split_literal (state := state_1597132) 0
    state_1597133 state_1609100
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597133
  · exact cover_1609100
#print axioms cover_1597132

def state_1597131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 3)))
theorem cover_1597131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1597131 := by
  apply coveredState_split_literal (state := state_1597131) 4
    state_1597132 state_1614871
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1597132
  · exact cover_1614871
#print axioms cover_1597131

def state_1596713 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 3 else 3)))
theorem cover_1596713 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1596713 := by
  apply coveredState_split_literal (state := state_1596713) 3
    state_1596714 state_1597131
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1596714
  · exact cover_1597131
#print axioms cover_1596713

def state_1614905 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 6 else 3)))
theorem cover_1614905 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1614905 := by
  apply coveredState_split_literal (state := state_1614905) 4
    state_1614906 state_1614965
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1614906
  · exact cover_1614965
#print axioms cover_1614905

def state_1615012 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_1615012 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615012 := by
  apply coveredState_split_literal (state := state_1615012) 4
    state_1615013 state_1615072
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615013
  · exact cover_1615072
#print axioms cover_1615012

def state_1615147 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 48)))
theorem cover_1615147 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615147 := by
  apply coveredState_split_literal (state := state_1615147) 2
    state_1615148 state_1615195
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615148
  · exact cover_1615195
#print axioms cover_1615147

def state_1615145 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 48)))
theorem cover_1615145 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615145 := by
  apply coveredState_split_literal (state := state_1615145) 0
    state_1615146 state_1615147
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615146
  · exact cover_1615147
#print axioms cover_1615145

def state_1615144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
theorem cover_1615144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615144 := by
  apply coveredState_split_literal (state := state_1615144) 4
    state_1615145 state_1615240
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615145
  · exact cover_1615240
#print axioms cover_1615144

def state_1615084 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
theorem cover_1615084 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615084 := by
  apply coveredState_split_literal (state := state_1615084) 1
    state_1615085 state_1615144
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615085
  · exact cover_1615144
#print axioms cover_1615084

def state_1615297 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
theorem cover_1615297 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615297 := by
  apply coveredState_split_literal (state := state_1615297) 1
    state_1615298 state_1615327
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615298
  · exact cover_1615327
#print axioms cover_1615297

def state_1615253 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
theorem cover_1615253 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615253 := by
  apply coveredState_split_literal (state := state_1615253) 4
    state_1615254 state_1615297
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615254
  · exact cover_1615297
#print axioms cover_1615253

def state_1615252 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 48)))
theorem cover_1615252 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615252 := by
  apply coveredState_split_literal (state := state_1615252) 3
    state_1615253 state_1615362
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615253
  · exact cover_1615362
#print axioms cover_1615252

def state_1615251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_1615251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615251 := by
  apply coveredState_split_literal (state := state_1615251) 2
    state_1615252 state_1615387
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615252
  · exact cover_1615387
#print axioms cover_1615251

def state_1615243 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_1615243 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615243 := by
  apply coveredState_split_literal (state := state_1615243) 0
    state_1615244 state_1615251
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615244
  · exact cover_1615251
#print axioms cover_1615243

def state_1615242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_1615242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615242 := by
  apply coveredState_split_literal (state := state_1615242) 4
    state_1615243 state_1615412
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615243
  · exact cover_1615412
#print axioms cover_1615242

def state_1615440 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_1615440 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615440 := by
  apply coveredState_split_literal (state := state_1615440) 2
    state_1615441 state_1615482
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615441
  · exact cover_1615482
#print axioms cover_1615440

def state_1615436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_1615436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615436 := by
  apply coveredState_split_literal (state := state_1615436) 0
    state_1615437 state_1615440
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615437
  · exact cover_1615440
#print axioms cover_1615436

def state_1615435 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_1615435 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615435 := by
  apply coveredState_split_literal (state := state_1615435) 4
    state_1615436 state_1615541
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615436
  · exact cover_1615541
#print axioms cover_1615435

def state_1615241 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_1615241 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615241 := by
  apply coveredState_split_literal (state := state_1615241) 1
    state_1615242 state_1615435
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615242
  · exact cover_1615435
#print axioms cover_1615241

def state_1615083 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 14 else 24)))
theorem cover_1615083 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615083 := by
  apply coveredState_split_literal (state := state_1615083) 3
    state_1615084 state_1615241
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615084
  · exact cover_1615241
#print axioms cover_1615083

def state_1615082 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_1615082 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615082 := by
  apply coveredState_split_literal (state := state_1615082) 2
    state_1615083 state_1615556
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615083
  · exact cover_1615556
#print axioms cover_1615082

def state_1615080 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 24)))
theorem cover_1615080 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615080 := by
  apply coveredState_split_literal (state := state_1615080) 0
    state_1615081 state_1615082
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615081
  · exact cover_1615082
#print axioms cover_1615080

def state_1615079 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_1615079 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615079 := by
  apply coveredState_split_literal (state := state_1615079) 4
    state_1615080 state_1615561
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615080
  · exact cover_1615561
#print axioms cover_1615079

def state_1615011 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
theorem cover_1615011 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615011 := by
  apply coveredState_split_literal (state := state_1615011) 1
    state_1615012 state_1615079
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615012
  · exact cover_1615079
#print axioms cover_1615011

def state_1615010 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 12)))
theorem cover_1615010 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615010 := by
  apply coveredState_split_literal (state := state_1615010) 3
    state_1615011 state_1615562
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615011
  · exact cover_1615562
#print axioms cover_1615010

def state_1615009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_1615009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615009 := by
  apply coveredState_split_literal (state := state_1615009) 2
    state_1615010 state_1615581
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615010
  · exact cover_1615581
#print axioms cover_1615009

def state_1615008 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_1615008 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1615008 := by
  apply coveredState_split_literal (state := state_1615008) 4
    state_1615009 state_1615592
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_1615009
  · exact cover_1615592
#print axioms cover_1615008
end Mub6.Numerical.CircleFullD0.Forest
