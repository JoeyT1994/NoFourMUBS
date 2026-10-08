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
def state_1047069 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 48 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 53 else 51)))
def hex_1047069 : String := "42410840444342080A0808084106404443050543060606"
theorem cover_1047069 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047069 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1047069)
  decide +kernel
#print axioms cover_1047069

def state_1047092 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 49 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 25)))
def hex_1047092 : String := "444306094306420806"
theorem cover_1047092 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047092 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1047092)
  decide +kernel
#print axioms cover_1047092

def state_1047101 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 25)))
def hex_1047101 : String := "42084140444208430608080840444243410809084341400A060A0A42084341080A084442080908"
theorem cover_1047101 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047101 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 39) (hex := hex_1047101)
  decide +kernel
#print axioms cover_1047101

def state_1047140 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 12)))
def hex_1047140 : String := "444309094342080608"
theorem cover_1047140 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047140 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_1047140)
  decide +kernel
#print axioms cover_1047140

def state_1047150 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 14) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 13)))
def hex_1047150 : String := "08"
theorem cover_1047150 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047150 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1047150)
  decide +kernel
#print axioms cover_1047150

def state_1047152 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 15) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 13)))
def hex_1047152 : String := "08"
theorem cover_1047152 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047152 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1047152)
  decide +kernel
#print axioms cover_1047152

def state_1047157 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 18 else (if j.val < 4 then 26 else 26)))
def hex_1047157 : String := "08"
theorem cover_1047157 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047157 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1047157)
  decide +kernel
#print axioms cover_1047157

def state_1047159 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 30) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
def hex_1047159 : String := "404344420806080808"
theorem cover_1047159 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047159 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_1047159)
  decide +kernel
#print axioms cover_1047159

def state_1047168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 31) else (if j.val < 3 then 19 else (if j.val < 4 then 26 else 26)))
def hex_1047168 : String := "404344424108404344420841068108080841064043440606440606064208410640430908064442084106404443060608060843444208060808"
theorem cover_1047168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047168 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_1047168)
  decide +kernel
#print axioms cover_1047168

def state_1047225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 26 else 27)))
def hex_1047225 : String := "08"
theorem cover_1047225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047225 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1047225)
  decide +kernel
#print axioms cover_1047225

def state_1047226 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 24 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 27 else 13)))
def hex_1047226 : String := "08"
theorem cover_1047226 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047226 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1047226)
  decide +kernel
#print axioms cover_1047226

def state_1047227 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 25 else 15) else (if j.val < 3 then 9 else (if j.val < 4 then 13 else 13)))
def hex_1047227 : String := "08"
theorem cover_1047227 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047227 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_1047227)
  decide +kernel
#print axioms cover_1047227

def state_1047228 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 6)))
def hex_1047228 : String := "430A444108420844090808"
theorem cover_1047228 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047228 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_1047228)
  decide +kernel
#print axioms cover_1047228

def state_1047239 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 7)))
def hex_1047239 : String := "4043410842084440430A0808080808"
theorem cover_1047239 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047239 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 15) (hex := hex_1047239)
  decide +kernel
#print axioms cover_1047239

def state_1047254 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 6 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 3)))
def hex_1047254 : String := "4440444108420843404442084341080908080808080808"
theorem cover_1047254 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047254 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 23) (hex := hex_1047254)
  decide +kernel
#print axioms cover_1047254

def state_1047282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 12 else 7) else (if j.val < 3 then 10 else (if j.val < 4 then 12 else 6)))
def hex_1047282 : String := "44410640430644060606414043060606404342440A070742444106404306060641064043074209060606430606"
theorem cover_1047282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_1047282 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 45) (hex := hex_1047282)
  decide +kernel
#print axioms cover_1047282
end Mub6.Numerical.CircleFullD0.Forest
