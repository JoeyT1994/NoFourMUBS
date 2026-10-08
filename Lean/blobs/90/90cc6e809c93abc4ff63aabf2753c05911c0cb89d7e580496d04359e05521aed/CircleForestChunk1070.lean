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
def state_1557215 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 242) else (if j.val < 3 then 211 else (if j.val < 4 then 167 else 175)))
def hex_1557215 : String := "4044428909428908444289434140090606410A40070A428943414008444243060808080941084008440A08"
theorem cover_1557215 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557215 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_1557215)
  decide +kernel
#print axioms cover_1557215

def state_1557258 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 200 else 243) else (if j.val < 3 then 211 else (if j.val < 4 then 167 else 175)))
def hex_1557258 : String := "40440742890944428909428943064140094406420A0605"
theorem cover_1557258 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557258 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1557258)
  decide +kernel
#print axioms cover_1557258

def state_1557281 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 201 else 121) else (if j.val < 3 then 105 else (if j.val < 4 then 83 else 87)))
def hex_1557281 : String := "444289430641404406420606060642894306414044428943060A42894341404406050506410A0A440642890640440642060606"
theorem cover_1557281 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557281 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 51) (hex := hex_1557281)
  decide +kernel
#print axioms cover_1557281

def state_1557332 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 101 else 60) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
def hex_1557332 : String := "42444306414042094406890606894443064140424406890606064341060641404442894306410506428943054105400A05440642090540440642890606"
theorem cover_1557332 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557332 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 61) (hex := hex_1557332)
  decide +kernel
#print axioms cover_1557332

def state_1557393 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 61) else (if j.val < 3 then 52 else (if j.val < 4 then 41 else 43)))
def hex_1557393 : String := "40424443060543414042050606050544064306414044420506420543064140050605060506"
theorem cover_1557393 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557393 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 37) (hex := hex_1557393)
  decide +kernel
#print axioms cover_1557393

def state_1557431 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 20 else 42)))
def hex_1557431 : String := "430641404244064306414042440609060606060606"
theorem cover_1557431 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557431 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 21) (hex := hex_1557431)
  decide +kernel
#print axioms cover_1557431

def state_1557453 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 50 else 30) else (if j.val < 3 then 53 else (if j.val < 4 then 40 else 43)))
def hex_1557453 : String := "4140090606"
theorem cover_1557453 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨18, by decide⟩ : Fin 32)) state_1557453 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1557453)
  decide +kernel
#print axioms cover_1557453
end Mub6.Numerical.CircleFullD0.Forest
