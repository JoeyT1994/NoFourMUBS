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
def state_961192 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 35 else 109)))
def hex_961192 : String := "434041C7424405070741C74205054041C7420A0A41C742434405400A41420A05050A43440540414207050505440A400A41420A440543050A0A"
theorem cover_961192 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961192 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 57) (hex := hex_961192)
  decide +kernel
#print axioms cover_961192

def state_961249 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 105 else (if j.val < 4 then 35 else 54)))
def hex_961249 : String := "444305400A0943400705404142C7074207074142C74309440907424305440540074142440507050509"
theorem cover_961249 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961249 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 41) (hex := hex_961249)
  decide +kernel
#print axioms cover_961249

def state_961290 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 89) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 54)))
def hex_961290 : String := "42440A43050A44054305400A4142050505"
theorem cover_961290 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961290 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_961290)
  decide +kernel
#print axioms cover_961290

def state_961308 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 45 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 34 else 55)))
def hex_961308 : String := "400641064244050606"
theorem cover_961308 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961308 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_961308)
  decide +kernel
#print axioms cover_961308

def state_961318 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 90 else 44) else (if j.val < 3 then 52 else (if j.val < 4 then 35 else 55)))
def hex_961318 : String := "4142444306400641060706064244070606"
theorem cover_961318 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961318 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_961318)
  decide +kernel
#print axioms cover_961318

def state_961339 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 91 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 70 else 110)))
def hex_961339 : String := "400641C7424443054041070541420505054306400608440506"
theorem cover_961339 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961339 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 25) (hex := hex_961339)
  decide +kernel
#print axioms cover_961339

def state_961365 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 182 else 88) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
def hex_961365 : String := "41C7424443070A0707"
theorem cover_961365 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961365 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_961365)
  decide +kernel
#print axioms cover_961365

def state_961375 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 176) else (if j.val < 3 then 104 else (if j.val < 4 then 71 else 110)))
def hex_961375 : String := "C7"
theorem cover_961375 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961375 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_961375)
  decide +kernel
#print axioms cover_961375

def state_961379 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 208 else (if j.val < 4 then 142 else 220)))
def hex_961379 : String := "404142440A0707420A074142444305400A08084443054041C7054108050842440543050844054305400705"
theorem cover_961379 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961379 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_961379)
  decide +kernel
#print axioms cover_961379

def state_961422 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 183 else 177) else (if j.val < 3 then 208 else (if j.val < 4 then 143 else 220)))
def hex_961422 : String := "40414209440A070A4142440A094443400A41C70A0A430809420A440A434007080A"
theorem cover_961422 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨12, by decide⟩ : Fin 32)) state_961422 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_961422)
  decide +kernel
#print axioms cover_961422
end Mub6.Numerical.CircleFullD0.Forest
