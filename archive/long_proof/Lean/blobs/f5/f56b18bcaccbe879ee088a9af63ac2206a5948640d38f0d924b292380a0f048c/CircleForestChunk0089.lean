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
def state_958769 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 54 else (if j.val < 4 then 74 else 55)))
def hex_958769 : String := "4442404142430A050A4243070507410A42430944090509400709420A07"
theorem cover_958769 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958769 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_958769)
  decide +kernel
#print axioms cover_958769

def state_958798 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 92 else 87) else (if j.val < 3 then 54 else (if j.val < 4 then 75 else 55)))
def hex_958798 : String := "444240054105434205440905054041434407050543074442050705410A4309440905420540050A"
theorem cover_958798 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958798 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_958798)
  decide +kernel
#print axioms cover_958798

def state_958837 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 93 else 43) else (if j.val < 3 then 54 else (if j.val < 4 then 37 else 55)))
def hex_958837 : String := "410A430A4442404105430A05060A0A"
theorem cover_958837 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958837 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_958837)
  decide +kernel
#print axioms cover_958837

def state_958852 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 43) else (if j.val < 3 then 55 else (if j.val < 4 then 37 else 27)))
def hex_958852 : String := "44404109090940414306420A06434244070606424440070907070A"
theorem cover_958852 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958852 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 27) (hex := hex_958852)
  decide +kernel
#print axioms cover_958852

def state_958879 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 18 else 27)))
def hex_958879 : String := "410A434244090A094244090A09"
theorem cover_958879 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958879 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_958879)
  decide +kernel
#print axioms cover_958879

def state_958896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 54 else (if j.val < 4 then 38 else 27)))
def hex_958896 : String := "44404105434205050541054342054407050505"
theorem cover_958896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958896 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_958896)
  decide +kernel
#print axioms cover_958896

def state_958915 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 55 else (if j.val < 4 then 38 else 27)))
def hex_958915 : String := "44404143424408050A4205440805434244080544080A420544080541430A42050A434244090A094244070544070A404105430A050A"
theorem cover_958915 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958915 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 53) (hex := hex_958915)
  decide +kernel
#print axioms cover_958915

def state_958968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 42) else (if j.val < 3 then 27 else (if j.val < 4 then 39 else 27)))
def hex_958968 : String := "4205444041050541054342054407050505"
theorem cover_958968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_958968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 17) (hex := hex_958968)
  decide +kernel
#print axioms cover_958968
end Mub6.Numerical.CircleFullD0.Forest
