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
def state_2559886 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 48)))
def hex_2559886 : String := "4243410744404207070507410744404208080507430709"
theorem cover_2559886 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559886 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2559886)
  decide +kernel
#print axioms cover_2559886

def state_2559909 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 47) else (if j.val < 3 then 29 else (if j.val < 4 then 29 else 49)))
def hex_2559909 : String := "4042434109444009070941094440090909094243070707"
theorem cover_2559909 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559909 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_2559909)
  decide +kernel
#print axioms cover_2559909

def state_2559932 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 23) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 25)))
def hex_2559932 : String := "424341400806064140444243070A0A0A0740444206430A410A4440050605060643410740080641400907400907"
theorem cover_2559932 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559932 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_2559932)
  decide +kernel
#print axioms cover_2559932

def state_2559977 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 23 else 11) else (if j.val < 3 then 14 else (if j.val < 4 then 14 else 12)))
def hex_2559977 : String := "414442050507444243404107060640410744420505060743074041070707420607"
theorem cover_2559977 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2559977 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2559977)
  decide +kernel
#print axioms cover_2559977

def state_2560013 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 14 else (if j.val < 4 then 15 else 24)))
def hex_2560013 : String := "424344054041054243440541050744054105404243050506054344410506074405410506054405404105424344054105400605050605434405404105060506"
theorem cover_2560013 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560013 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_2560013)
  decide +kernel
#print axioms cover_2560013

def state_2560078 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 22) else (if j.val < 3 then 28 else (if j.val < 4 then 30 else 25)))
def hex_2560078 : String := "40410A4442430741074407070A0A410707"
theorem cover_2560078 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2560078 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_2560078)
  decide +kernel
#print axioms cover_2560078
end Mub6.Numerical.CircleFullD0.Forest
