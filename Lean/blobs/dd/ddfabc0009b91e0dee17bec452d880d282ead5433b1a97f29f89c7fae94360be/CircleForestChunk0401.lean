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
def state_1033753 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 206 else (if j.val < 4 then 75 else 126)))
def hex_1033753 : String := "434440410842054305440584410805404108840844404108420943444041084205430508088444400908094108420708400908"
theorem cover_1033753 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033753 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1033753)
  decide +kernel
#print axioms cover_1033753

def state_1033805 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 150 else 126)))
def hex_1033805 : String := "4440410842430544404108050584434405074440070808084041088408"
theorem cover_1033805 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033805 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 29) (hex := hex_1033805)
  decide +kernel
#print axioms cover_1033805

def state_1033834 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 204) else (if j.val < 3 then 207 else (if j.val < 4 then 151 else 126)))
def hex_1033834 : String := "44404108424344404108424305084308080884444041080A0884434440070884444007088441084208084041088408"
theorem cover_1033834 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033834 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 47) (hex := hex_1033834)
  decide +kernel
#print axioms cover_1033834

def state_1033882 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 205) else (if j.val < 3 then 206 else (if j.val < 4 then 75 else 126)))
def hex_1033882 : String := "4344404142050505058444404142434405840A434440410A050584440A844243050A434405840A41420743054406844205430544050584"
theorem cover_1033882 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033882 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 55) (hex := hex_1033882)
  decide +kernel
#print axioms cover_1033882

def state_1033938 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 191 else 205) else (if j.val < 3 then 207 else (if j.val < 4 then 150 else 126)))
def hex_1033938 : String := "4440414243054405840909414205050584"
theorem cover_1033938 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1033938 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1033938)
  decide +kernel
#print axioms cover_1033938
end Mub6.Numerical.CircleFullD0.Forest
