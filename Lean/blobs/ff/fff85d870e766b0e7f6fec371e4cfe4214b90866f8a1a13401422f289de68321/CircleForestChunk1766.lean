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
def state_2297020 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 26) else (if j.val < 3 then 16 else (if j.val < 4 then 26 else 23)))
def hex_2297020 : String := "4440414306420544070506064041050506"
theorem cover_2297020 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297020 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_2297020)
  decide +kernel
#print axioms cover_2297020

def state_2297042 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 52 else 46)))
def hex_2297042 : String := "44414306404206440705060606"
theorem cover_2297042 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297042 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2297042)
  decide +kernel
#print axioms cover_2297042

def state_2297056 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 92)))
def hex_2297056 : String := "41434042064441080641080606404244414308400508074143080505444143400A080A43090941434005060A43050542064441080606430640420544090506"
theorem cover_2297056 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297056 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 63) (hex := hex_2297056)
  decide +kernel
#print axioms cover_2297056

def state_2297119 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 35 else (if j.val < 4 then 52 else 93)))
def hex_2297119 : String := "41430640050606"
theorem cover_2297119 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297119 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2297119)
  decide +kernel
#print axioms cover_2297119

def state_2297127 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 52) else (if j.val < 3 then 34 else (if j.val < 4 then 53 else 46)))
def hex_2297127 : String := "444140054342064441400706064140050605050705"
theorem cover_2297127 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297127 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 21) (hex := hex_2297127)
  decide +kernel
#print axioms cover_2297127

def state_2297151 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 84 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
def hex_2297151 : String := "4342444105050544410A050505"
theorem cover_2297151 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297151 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_2297151)
  decide +kernel
#print axioms cover_2297151

def state_2297166 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 104) else (if j.val < 3 then 70 else (if j.val < 4 then 106 else 92)))
def hex_2297166 : String := "444140430842050A0840430505064140050805"
theorem cover_2297166 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297166 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_2297166)
  decide +kernel
#print axioms cover_2297166

def state_2297185 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 104) else (if j.val < 3 then 71 else (if j.val < 4 then 106 else 92)))
def hex_2297185 : String := "444140430A0A430842080A4043420644090905430642064441400906060641400A43064244410805050A400506"
theorem cover_2297185 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297185 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 45) (hex := hex_2297185)
  decide +kernel
#print axioms cover_2297185

def state_2297230 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 85 else 104) else (if j.val < 3 then 35 else (if j.val < 4 then 107 else 92)))
def hex_2297230 : String := "42444140054342444105050544410805050505054441400A430A0A4005434205440A0505410A05"
theorem cover_2297230 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297230 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_2297230)
  decide +kernel
#print axioms cover_2297230

def state_2297269 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 105) else (if j.val < 3 then 35 else (if j.val < 4 then 53 else 92)))
def hex_2297269 : String := "40054342064441400506060505"
theorem cover_2297269 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2297269 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_2297269)
  decide +kernel
#print axioms cover_2297269
end Mub6.Numerical.CircleFullD0.Forest
