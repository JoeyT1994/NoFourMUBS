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
def state_2251057 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 93 else 53)))
def hex_2251057 : String := "4142094406094209444043410642050641060543410742090709400509"
theorem cover_2251057 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251057 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2251057)
  decide +kernel
#print axioms cover_2251057

def state_2251087 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 52)))
def hex_2251087 : String := "06"
theorem cover_2251087 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251087 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_2251087)
  decide +kernel
#print axioms cover_2251087

def state_2251089 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 34 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 53)))
def hex_2251089 : String := "43064106424406400643410642050641060506"
theorem cover_2251089 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251089 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 19) (hex := hex_2251089)
  decide +kernel
#print axioms cover_2251089

def state_2251108 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 35 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 53)))
def hex_2251108 : String := "4341064244064043064106424406400609064341064244060906410742440609060641064244064043410642440505064106050706"
theorem cover_2251108 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251108 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 53) (hex := hex_2251108)
  decide +kernel
#print axioms cover_2251108

def state_2251162 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 50) else (if j.val < 3 then 21 else (if j.val < 4 then 47 else 26)))
def hex_2251162 : String := "4244060906"
theorem cover_2251162 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251162 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2251162)
  decide +kernel
#print axioms cover_2251162

def state_2251168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 42 else (if j.val < 4 then 47 else 26)))
def hex_2251168 : String := "4440434106440605064341064406420506410644060540434142054406050505434109420544050505"
theorem cover_2251168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251168 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 41) (hex := hex_2251168)
  decide +kernel
#print axioms cover_2251168

def state_2251209 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 17 else 51) else (if j.val < 3 then 43 else (if j.val < 4 then 47 else 26)))
def hex_2251209 : String := "44064043410642440605064106084341074244060A0607"
theorem cover_2251209 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251209 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2251209)
  decide +kernel
#print axioms cover_2251209

def state_2251236 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 42 else (if j.val < 4 then 46 else 27)))
def hex_2251236 : String := "4440434142084406084244050544064007084109420544050543410842084440060808410809400808"
theorem cover_2251236 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251236 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_2251236)
  decide +kernel
#print axioms cover_2251236

def state_2251278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 16 else 50) else (if j.val < 3 then 43 else (if j.val < 4 then 46 else 54)))
def hex_2251278 : String := "404341064206064106424406404306050A064341064244064043060A080641064244060A06"
theorem cover_2251278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2251278 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 37) (hex := hex_2251278)
  decide +kernel
#print axioms cover_2251278
end Mub6.Numerical.CircleFullD0.Forest
