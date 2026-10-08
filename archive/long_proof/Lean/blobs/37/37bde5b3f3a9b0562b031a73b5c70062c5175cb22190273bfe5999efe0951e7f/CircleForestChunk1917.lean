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
def state_2333081 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 44 else 31)))
def hex_2333081 : String := "40410908414442430808084243400941444243080808E5084009414442430808084243E54009410605090843090808"
theorem cover_2333081 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333081 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 47) (hex := hex_2333081)
  decide +kernel
#print axioms cover_2333081

def state_2333128 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 48 else (if j.val < 4 then 45 else 31)))
def hex_2333128 : String := "40094144424308080842434009414408420608084005060908"
theorem cover_2333128 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333128 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 25) (hex := hex_2333128)
  decide +kernel
#print axioms cover_2333128

def state_2333153 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 29) else (if j.val < 3 then 49 else (if j.val < 4 then 22 else 31)))
def hex_2333153 : String := "430909"
theorem cover_2333153 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333153 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2333153)
  decide +kernel
#print axioms cover_2333153

def state_2333156 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 23 else 15)))
def hex_2333156 : String := "4041090941444207074243404107090707434009070744084243400941440706080608"
theorem cover_2333156 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333156 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 35) (hex := hex_2333156)
  decide +kernel
#print axioms cover_2333156

def state_2333191 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 14) else (if j.val < 3 then 25 else (if j.val < 4 then 11 else 15)))
def hex_2333191 : String := "4340094144420905090809"
theorem cover_2333191 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333191 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 11) (hex := hex_2333191)
  decide +kernel
#print axioms cover_2333191

def state_2333202 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 15) else (if j.val < 3 then 12 else (if j.val < 4 then 11 else 7)))
def hex_2333202 : String := "440842434008080808"
theorem cover_2333202 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333202 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2333202)
  decide +kernel
#print axioms cover_2333202

def state_2333211 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 7) else (if j.val < 3 then 13 else (if j.val < 4 then 5 else 7)))
def hex_2333211 : String := "434144054009060909"
theorem cover_2333211 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333211 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2333211)
  decide +kernel
#print axioms cover_2333211

def state_2333224 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 14) else (if j.val < 3 then 12 else (if j.val < 4 then 10 else 14)))
def hex_2333224 : String := "404243410506410508054243050505"
theorem cover_2333224 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333224 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 15) (hex := hex_2333224)
  decide +kernel
#print axioms cover_2333224

def state_2333242 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 14) else (if j.val < 3 then 24 else (if j.val < 4 then 20 else 15)))
def hex_2333242 : String := "410606"
theorem cover_2333242 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333242 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2333242)
  decide +kernel
#print axioms cover_2333242

def state_2333247 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 30)))
def hex_2333247 : String := "42404305050505"
theorem cover_2333247 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333247 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2333247)
  decide +kernel
#print axioms cover_2333247

def state_2333255 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 48 else (if j.val < 4 then 21 else 31)))
def hex_2333255 : String := "404341050641054442404305410506050542404306414405E5444240060605E54306410544054240E50505400605434105064105440542404305050505"
theorem cover_2333255 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333255 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_2333255)
  decide +kernel
#print axioms cover_2333255

def state_2333316 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 28) else (if j.val < 3 then 49 else (if j.val < 4 then 21 else 31)))
def hex_2333316 : String := "4043050505"
theorem cover_2333316 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333316 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_2333316)
  decide +kernel
#print axioms cover_2333316

def state_2333322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 29) else (if j.val < 3 then 24 else (if j.val < 4 then 21 else 30)))
def hex_2333322 : String := "42404306080806"
theorem cover_2333322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨26, by decide⟩ : Fin 32)) state_2333322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_2333322)
  decide +kernel
#print axioms cover_2333322
end Mub6.Numerical.CircleFullD0.Forest
