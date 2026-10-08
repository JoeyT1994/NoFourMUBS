import CircleFullInterface
import ChartPartitionJoined
set_option maxRecDepth 1000000
set_option maxHeartbeats 10000000
namespace Mub6.Numerical.CircleFullD0.Forest
open Mub6.Numerical.IntegerIntervals
open Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition
open Mub6.Numerical.CirclePrototype.Tao
open Mub6.Numerical.CircleArc.TaoSoundness
open Mub6.Numerical.CircleFullPrototype
def state_2279237 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 44 else 29)))
def hex_2279237 : String := "41444008424305080540094243414405400505440840080841444008054009424305070544084008084305094408400808"
theorem cover_2279237 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279237 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_2279237)
  decide +kernel
#print axioms cover_2279237

def state_2279286 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 28) else (if j.val < 3 then 47 else (if j.val < 4 then 45 else 29)))
def hex_2279286 : String := "4144400808400942434144400807400907084107080908"
theorem cover_2279286 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279286 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_2279286)
  decide +kernel
#print axioms cover_2279286

def state_2279309 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 29) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 14)))
def hex_2279309 : String := "440842434144080A084144084005080808"
theorem cover_2279309 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279309 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2279309)
  decide +kernel
#print axioms cover_2279309

def state_2279328 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 23 else (if j.val < 4 then 22 else 28)))
def hex_2279328 : String := "424340414405420A05080A4041070807430807"
theorem cover_2279328 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279328 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_2279328)
  decide +kernel
#print axioms cover_2279328

def state_2279351 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 56) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
def hex_2279351 : String := "4442430A0A4340050540410508074243400A0A4041440A060A41090A4340414405420A050A41050A404144074243400A050607440A420A430A0A41070A"
theorem cover_2279351 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279351 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 61) (hex := hex_2279351)
  decide +kernel
#print axioms cover_2279351

def state_2279412 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 57) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
def hex_2279412 : String := "440A420A430A0A"
theorem cover_2279412 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279412 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2279412)
  decide +kernel
#print axioms cover_2279412

def state_2279419 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 43 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 44 else 29)))
def hex_2279419 : String := "414407420943400505070A"
theorem cover_2279419 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279419 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2279419)
  decide +kernel
#print axioms cover_2279419

def state_2279430 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 28) else (if j.val < 3 then 46 else (if j.val < 4 then 45 else 29)))
def hex_2279430 : String := "40414442434041070607060742434006060643404107440706070744420A0842064340080A0641074407420607"
theorem cover_2279430 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2279430 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2279430)
  decide +kernel
#print axioms cover_2279430
end Mub6.Numerical.CircleFullD0.Forest
