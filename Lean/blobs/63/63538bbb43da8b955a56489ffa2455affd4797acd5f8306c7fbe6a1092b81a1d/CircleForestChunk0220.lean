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
def state_74181 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 100) else (if j.val < 3 then 41 else (if j.val < 4 then 97 else 41)))
def hex_74181 : String := "424443410909090A440643410640420A06060A"
theorem cover_74181 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74181 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_74181)
  decide +kernel
#print axioms cover_74181

def state_74201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 101) else (if j.val < 3 then 82 else (if j.val < 4 then 97 else 41)))
def hex_74201 : String := "4443400909094340410A07410A0740070A"
theorem cover_74201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74201 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_74201)
  decide +kernel
#print axioms cover_74201

def state_74219 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 101) else (if j.val < 3 then 83 else (if j.val < 4 then 97 else 82)))
def hex_74219 : String := "43400806400806"
theorem cover_74219 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74219 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_74219)
  decide +kernel
#print axioms cover_74219

def state_74226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 101) else (if j.val < 3 then 83 else (if j.val < 4 then 97 else 83)))
def hex_74226 : String := "43404142444340414207060706400806074406434007064007064207440807414244060A064205054041420A4406434007060642070841420A064244090706"
theorem cover_74226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 63) (hex := hex_74226)
  decide +kernel
#print axioms cover_74226

def state_74289 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
def hex_74289 : String := "42440943070744434008414405050508434041420744080707414205440505054041420708074142440907440843070707"
theorem cover_74289 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74289 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_74289)
  decide +kernel
#print axioms cover_74289

def state_74339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 50) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
def hex_74339 : String := "42440943410A40420505050A44430606434140424406080606404205440505054140420A0606404244090A440643060606"
theorem cover_74339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 49) (hex := hex_74339)
  decide +kernel
#print axioms cover_74339

def state_74388 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 51 else 51) else (if j.val < 3 then 20 else (if j.val < 4 then 48 else 20)))
def hex_74388 : String := "4244054305404109050544430540410905054305404142054405050505"
theorem cover_74388 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_74388 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_74388)
  decide +kernel
#print axioms cover_74388
end Mub6.Numerical.CircleFullPrototype.Forest
