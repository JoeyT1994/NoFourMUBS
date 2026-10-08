import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullPrototype.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_71568 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 10 else (if j.val < 4 then 22 else 10)))
def hex_71568 : String := "424440414305424405050A050508440A400908"
theorem cover_71568 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71568 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_71568)
  decide +kernel
#print axioms cover_71568

def state_71590 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 25) else (if j.val < 3 then 20 else (if j.val < 4 then 46 else 20)))
def hex_71590 : String := "40414244430540414205440505050543054041080505444305400A0543400A05404142080A0A4108054205054142050505"
theorem cover_71590 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71590 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 49) (hex := hex_71590)
  decide +kernel
#print axioms cover_71590

def state_71643 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 40)))
def hex_71643 : String := "434041424409430509444305094340414205050505404142094405430540060505054205054142050505404142094409B842094409B84142094407B8420505"
theorem cover_71643 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71643 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_71643)
  decide +kernel
#print axioms cover_71643

def state_71706 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 40 else (if j.val < 4 then 47 else 41)))
def hex_71706 : String := "434041420644430840410806080842064405054108054041424443060606B84206B8414208B8420505"
theorem cover_71706 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71706 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_71706)
  decide +kernel
#print axioms cover_71706

def state_71748 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 50) else (if j.val < 3 then 41 else (if j.val < 4 then 47 else 40)))
def hex_71748 : String := "434041440742430A400A4107050A0A414407420505054041444243070707B8440AB8414406B8440505"
theorem cover_71748 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_71748 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 41) (hex := hex_71748)
  decide +kernel
#print axioms cover_71748
end Mub6.Numerical.CircleFullPrototype.Forest
