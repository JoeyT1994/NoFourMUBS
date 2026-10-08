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
def state_181222 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 24) else (if j.val < 3 then 25 else (if j.val < 4 then 15 else 14)))
def hex_181222 : String := "4044094341090909440A43410A4240440A43410A424044094341094240094409960909440A43410A4240440A960A0A0A09090A0A0A"
theorem cover_181222 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181222 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 18) (count := 53) (hex := hex_181222)
  decide +kernel
#print axioms cover_181222

def state_181278 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 28)))
def hex_181278 : String := "43424144080807414406400743060707420707"
theorem cover_181278 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181278 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_181278)
  decide +kernel
#print axioms cover_181278

def state_181299 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 48 else (if j.val < 4 then 30 else 29)))
def hex_181299 : String := "4140440707444308074342054105070707"
theorem cover_181299 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181299 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_181299)
  decide +kernel
#print axioms cover_181299

def state_181318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 36 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
def hex_181318 : String := "4443420706074342070707"
theorem cover_181318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_181318)
  decide +kernel
#print axioms cover_181318

def state_181330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 58)))
def hex_181330 : String := "4342414007080741400644064306070607"
theorem cover_181330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_181330)
  decide +kernel
#print axioms cover_181330

def state_181347 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 37 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 59)))
def hex_181347 : String := "4342414044070744430807430A050741404407430A07444342414006060606074342414007444306070A074140094406430A07070707420707"
theorem cover_181347 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181347 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_181347)
  decide +kernel
#print axioms cover_181347

def state_181404 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 51) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 29)))
def hex_181404 : String := "400707"
theorem cover_181404 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181404 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_181404)
  decide +kernel
#print axioms cover_181404

def state_181407 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 31 else 29)))
def hex_181407 : String := "420707"
theorem cover_181407 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181407 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_181407)
  decide +kernel
#print axioms cover_181407

def state_181411 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 24 else (if j.val < 4 then 15 else 28)))
def hex_181411 : String := "4342084108084208410808"
theorem cover_181411 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181411 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_181411)
  decide +kernel
#print axioms cover_181411

def state_181424 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 25) else (if j.val < 3 then 48 else (if j.val < 4 then 30 else 29)))
def hex_181424 : String := "414044084308080808"
theorem cover_181424 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181424 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_181424)
  decide +kernel
#print axioms cover_181424

def state_181436 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 49 else (if j.val < 4 then 30 else 58)))
def hex_181436 : String := "4342084108064208410807"
theorem cover_181436 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181436 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 11) (hex := hex_181436)
  decide +kernel
#print axioms cover_181436

def state_181449 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 50) else (if j.val < 3 then 98 else (if j.val < 4 then 60 else 59)))
def hex_181449 : String := "41404408430808084044070A08"
theorem cover_181449 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨7, by decide⟩ : Fin 32)) state_181449 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 13) (hex := hex_181449)
  decide +kernel
#print axioms cover_181449
end Mub6.Numerical.CircleFullPrototype.Forest
