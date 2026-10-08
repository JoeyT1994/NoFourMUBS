import CircleFullInterface
import CircleForestAssembly0504
import CircleForestChunk1980
import CircleForestChunk1984
import CircleForestChunk1985
import CircleForestChunk1986
import CircleForestChunk1987
import CircleForestChunk1988
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2557053 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 56 else (if j.val < 4 then 30 else 49)))
theorem cover_2557053 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557053 := by
  apply coveredState_split_literal (state := state_2557053) 3
    state_2557054 state_2557107
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557054
  · exact cover_2557107
#print axioms cover_2557053

def state_2557052 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
theorem cover_2557052 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557052 := by
  apply coveredState_split_literal (state := state_2557052) 2
    state_2557053 state_2557126
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557053
  · exact cover_2557126
#print axioms cover_2557052

def state_2557048 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 49)))
theorem cover_2557048 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557048 := by
  apply coveredState_split_literal (state := state_2557048) 0
    state_2557049 state_2557052
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557049
  · exact cover_2557052
#print axioms cover_2557048

def state_2557028 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 24)))
theorem cover_2557028 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557028 := by
  apply coveredState_split_literal (state := state_2557028) 4
    state_2557029 state_2557048
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557029
  · exact cover_2557048
#print axioms cover_2557028

def state_2556924 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 24)))
theorem cover_2556924 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556924 := by
  apply coveredState_split_literal (state := state_2556924) 1
    state_2556925 state_2557028
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556925
  · exact cover_2557028
#print axioms cover_2556924

def state_2556923 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 24)))
theorem cover_2556923 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556923 := by
  apply coveredState_split_literal (state := state_2556923) 3
    state_2556924 state_2557143
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556924
  · exact cover_2557143
#print axioms cover_2556923

def state_2556922 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 24)))
theorem cover_2556922 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556922 := by
  apply coveredState_split_literal (state := state_2556922) 2
    state_2556923 state_2557160
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556923
  · exact cover_2557160
#print axioms cover_2556922

def state_2556920 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 24)))
theorem cover_2556920 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556920 := by
  apply coveredState_split_literal (state := state_2556920) 0
    state_2556921 state_2556922
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556921
  · exact cover_2556922
#print axioms cover_2556920

def state_2557178 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 15 else 25)))
theorem cover_2557178 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557178 := by
  apply coveredState_split_literal (state := state_2557178) 3
    state_2557179 state_2557196
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557179
  · exact cover_2557196
#print axioms cover_2557178

def state_2557177 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 25)))
theorem cover_2557177 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557177 := by
  apply coveredState_split_literal (state := state_2557177) 2
    state_2557178 state_2557245
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557178
  · exact cover_2557245
#print axioms cover_2557177

def state_2557173 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 25)))
theorem cover_2557173 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557173 := by
  apply coveredState_split_literal (state := state_2557173) 0
    state_2557174 state_2557177
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557174
  · exact cover_2557177
#print axioms cover_2557173

def state_2556919 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_2556919 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556919 := by
  apply coveredState_split_literal (state := state_2556919) 4
    state_2556920 state_2557173
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556920
  · exact cover_2557173
#print axioms cover_2556919

def state_2556883 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 12)))
theorem cover_2556883 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2556883 := by
  apply coveredState_split_literal (state := state_2556883) 1
    state_2556884 state_2556919
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2556884
  · exact cover_2556919
#print axioms cover_2556883

def state_2555997 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 7 else 12)))
theorem cover_2555997 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555997 := by
  apply coveredState_split_literal (state := state_2555997) 3
    state_2555998 state_2556883
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555998
  · exact cover_2556883
#print axioms cover_2555997

def state_2555996 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 12)))
theorem cover_2555996 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555996 := by
  apply coveredState_split_literal (state := state_2555996) 2
    state_2555997 state_2557248
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555997
  · exact cover_2557248
#print axioms cover_2555996

def state_2555995 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 11) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2555995 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555995 := by
  apply coveredState_split_literal (state := state_2555995) 4
    state_2555996 state_2557263
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555996
  · exact cover_2557263
#print axioms cover_2555995

def state_2555981 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 7 else 6)))
theorem cover_2555981 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2555981 := by
  apply coveredState_split_literal (state := state_2555981) 1
    state_2555982 state_2555995
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2555982
  · exact cover_2555995
#print axioms cover_2555981

def state_2557506 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 48)))
theorem cover_2557506 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557506 := by
  apply coveredState_split_literal (state := state_2557506) 4
    state_2557507 state_2557570
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557507
  · exact cover_2557570
#print axioms cover_2557506

def state_2557505 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 57 else 48)))
theorem cover_2557505 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557505 := by
  apply coveredState_split_literal (state := state_2557505) 1
    state_2557506 state_2557583
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557506
  · exact cover_2557583
#print axioms cover_2557505

def state_2557497 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 57 else (if j.val < 4 then 28 else 48)))
theorem cover_2557497 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557497 := by
  apply coveredState_split_literal (state := state_2557497) 3
    state_2557498 state_2557505
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557498
  · exact cover_2557505
#print axioms cover_2557497

def state_2557447 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 48)))
theorem cover_2557447 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557447 := by
  apply coveredState_split_literal (state := state_2557447) 2
    state_2557448 state_2557497
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557448
  · exact cover_2557497
#print axioms cover_2557447

def state_2557446 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 48)))
theorem cover_2557446 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557446 := by
  apply coveredState_split_literal (state := state_2557446) 0
    state_2557447 state_2557614
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557447
  · exact cover_2557614
#print axioms cover_2557446

def state_2557445 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
theorem cover_2557445 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557445 := by
  apply coveredState_split_literal (state := state_2557445) 4
    state_2557446 state_2557621
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557446
  · exact cover_2557621
#print axioms cover_2557445

def state_2557385 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 28 else (if j.val < 4 then 28 else 24)))
theorem cover_2557385 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557385 := by
  apply coveredState_split_literal (state := state_2557385) 1
    state_2557386 state_2557445
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557386
  · exact cover_2557445
#print axioms cover_2557385

def state_2557638 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 56 else (if j.val < 4 then 29 else 48)))
theorem cover_2557638 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557638 := by
  apply coveredState_split_literal (state := state_2557638) 3
    state_2557639 state_2557684
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557639
  · exact cover_2557684
#print axioms cover_2557638

def state_2557637 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2557637 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557637 := by
  apply coveredState_split_literal (state := state_2557637) 2
    state_2557638 state_2557741
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557638
  · exact cover_2557741
#print axioms cover_2557637

def state_2557636 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 48)))
theorem cover_2557636 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557636 := by
  apply coveredState_split_literal (state := state_2557636) 0
    state_2557637 state_2557794
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557637
  · exact cover_2557794
#print axioms cover_2557636

def state_2557798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
theorem cover_2557798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557798 := by
  apply coveredState_split_literal (state := state_2557798) 2
    state_2557799 state_2557854
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557799
  · exact cover_2557854
#print axioms cover_2557798

def state_2557797 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 49)))
theorem cover_2557797 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557797 := by
  apply coveredState_split_literal (state := state_2557797) 0
    state_2557798 state_2557873
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557798
  · exact cover_2557873
#print axioms cover_2557797

def state_2557635 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 46) else (if j.val < 3 then 28 else (if j.val < 4 then 29 else 24)))
theorem cover_2557635 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557635 := by
  apply coveredState_split_literal (state := state_2557635) 4
    state_2557636 state_2557797
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557636
  · exact cover_2557797
#print axioms cover_2557635

def state_2557929 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 97)))
theorem cover_2557929 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557929 := by
  apply coveredState_split_literal (state := state_2557929) 0
    state_2557930 state_2557987
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557930
  · exact cover_2557987
#print axioms cover_2557929

def state_2557881 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 44 else 94) else (if j.val < 3 then 56 else (if j.val < 4 then 58 else 48)))
theorem cover_2557881 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2557881 := by
  apply coveredState_split_literal (state := state_2557881) 4
    state_2557882 state_2557929
  · decide +kernel
  · decide +kernel
  · decide +kernel
  · exact cover_2557882
  · exact cover_2557929
#print axioms cover_2557881
end Mub6.Numerical.CircleFullD0.Forest
