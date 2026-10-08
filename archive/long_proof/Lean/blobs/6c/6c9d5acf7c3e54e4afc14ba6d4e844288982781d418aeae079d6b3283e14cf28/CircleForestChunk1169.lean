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
def state_1581006 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 78 else 67) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
def hex_1581006 : String := "424443404142440908084244430909430505440943080808400A41080A434041424408050842054443050843050508400A410842050844430808430808"
theorem cover_1581006 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581006 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 61) (hex := hex_1581006)
  decide +kernel
#print axioms cover_1581006

def state_1581067 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 79 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 106 else 103)))
def hex_1581067 : String := "41084244080508"
theorem cover_1581067 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581067 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_1581067)
  decide +kernel
#print axioms cover_1581067

def state_1581074 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 33) else (if j.val < 3 then 97 else (if j.val < 4 then 107 else 103)))
def hex_1581074 : String := "4041420A06420A444309060641084244080808"
theorem cover_1581074 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581074 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 19) (hex := hex_1581074)
  decide +kernel
#print axioms cover_1581074

def state_1581094 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 26 else 50)))
def hex_1581094 : String := "430909"
theorem cover_1581094 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581094 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_1581094)
  decide +kernel
#print axioms cover_1581094

def state_1581098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 52 else 51)))
def hex_1581098 : String := "40414244094340090806084244094340070A404106074108424409070744094307094108424443080843080808"
theorem cover_1581098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 45) (hex := hex_1581098)
  decide +kernel
#print axioms cover_1581098

def state_1581143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 16) else (if j.val < 3 then 49 else (if j.val < 4 then 53 else 51)))
def hex_1581143 : String := "4041064244090644050641084244430809430840060808"
theorem cover_1581143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 23) (hex := hex_1581143)
  decide +kernel
#print axioms cover_1581143

def state_1581169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 19 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 52 else 50)))
def hex_1581169 : String := "40414244064306400806440643064009090606"
theorem cover_1581169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 19) (hex := hex_1581169)
  decide +kernel
#print axioms cover_1581169

def state_1581189 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 38 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 50)))
def hex_1581189 : String := "41424443090943400841420609060A44094340090940090942440808444309094340084109064008410908"
theorem cover_1581189 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581189 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_1581189)
  decide +kernel
#print axioms cover_1581189

def state_1581232 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 39 else 17) else (if j.val < 3 then 48 else (if j.val < 4 then 53 else 50)))
def hex_1581232 : String := "414244064306400A0644094340090640090942064406430640414206090606"
theorem cover_1581232 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1581232 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 31) (hex := hex_1581232)
  decide +kernel
#print axioms cover_1581232
end Mub6.Numerical.CircleFullD0.Forest
