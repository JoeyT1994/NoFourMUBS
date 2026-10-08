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
def state_1583921 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 19) else (if j.val < 3 then 24 else (if j.val < 4 then 26 else 25)))
def hex_1583921 : String := "42440608444306400806430740074142050705"
theorem cover_1583921 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583921 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1583921)
  decide +kernel
#print axioms cover_1583921

def state_1583941 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 18 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 27 else 25)))
def hex_1583941 : String := "4142084440074143080508400741070708"
theorem cover_1583941 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583941 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1583941)
  decide +kernel
#print axioms cover_1583941

def state_1583961 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 50)))
def hex_1583961 : String := "40084143420A4440080640084143060A4306080A430808"
theorem cover_1583961 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583961 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 23) (hex := hex_1583961)
  decide +kernel
#print axioms cover_1583961

def state_1583984 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 18) else (if j.val < 3 then 48 else (if j.val < 4 then 27 else 51)))
def hex_1583984 : String := "404143080808414342440A0544404143080808414342054406050A43050840414308080841430505050A43420544080508"
theorem cover_1583984 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1583984 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 49) (hex := hex_1583984)
  decide +kernel
#print axioms cover_1583984

def state_1584035 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
def hex_1584035 : String := "41434244084007414307080809420805430808"
theorem cover_1584035 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584035 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 19) (hex := hex_1584035)
  decide +kernel
#print axioms cover_1584035

def state_1584055 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 36) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
def hex_1584055 : String := "4342444009094041430909430808414309094306420A0944094009094244400909400A0A4409400909"
theorem cover_1584055 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584055 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1584055)
  decide +kernel
#print axioms cover_1584055

def state_1584096 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 37) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 50)))
def hex_1584096 : String := "4342444008064008414306080644400909404107074143090943060742440808444008094041070741430909430707"
theorem cover_1584096 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584096 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_1584096)
  decide +kernel
#print axioms cover_1584096

def state_1584144 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 18) else (if j.val < 3 then 49 else (if j.val < 4 then 27 else 51)))
def hex_1584144 : String := "41434244400741070707074244080606430707"
theorem cover_1584144 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584144 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1584144)
  decide +kernel
#print axioms cover_1584144

def state_1584168 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 36) else (if j.val < 3 then 98 else (if j.val < 4 then 54 else 102)))
def hex_1584168 : String := "4143424440074307070707420A07430707"
theorem cover_1584168 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1584168 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_1584168)
  decide +kernel
#print axioms cover_1584168
end Mub6.Numerical.CircleFullD0.Forest
