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
def state_279975 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 4 else (if j.val < 4 then 7 else 2)))
def hex_279975 : String := "440A440A4041420643440A4142064340440641050A0A060A060A41420643440A400A41420A0A0A060A"
theorem cover_279975 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_279975 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 14) (count := 41) (hex := hex_279975)
  decide +kernel
#print axioms cover_279975

def state_280016 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 7) else (if j.val < 3 then 5 else (if j.val < 4 then 3 else 2)))
def hex_280016 : String := "43440808440842440A40414344084241434044084143050A0A080A0A0A0A0A0A4408404143080A43080A0A"
theorem cover_280016 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280016 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 16) (count := 43) (hex := hex_280016)
  decide +kernel
#print axioms cover_280016

def state_280063 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 5 else 6) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 4)))
def hex_280063 : String := "404143074244080708084143420707424440080940070744084007074308420908"
theorem cover_280063 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280063 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 33) (hex := hex_280063)
  decide +kernel
#print axioms cover_280063

def state_280098 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_280098 : String := "43440705440705"
theorem cover_280098 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280098 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_280098)
  decide +kernel
#print axioms cover_280098

def state_280105 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 10 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_280105 : String := "434408054442404143080608410708074244404105430506414305420607430842444006084005414305060944084005084005410505444008410708400505"
theorem cover_280105 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280105 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 13) (count := 63) (hex := hex_280105)
  decide +kernel
#print axioms cover_280105

def state_280169 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 12) else (if j.val < 3 then 4 else (if j.val < 4 then 6 else 5)))
def hex_280169 : String := "4344070A44420707424041074407050707"
theorem cover_280169 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280169 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 17) (hex := hex_280169)
  decide +kernel
#print axioms cover_280169

def state_280187 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 12 else 5)))
def hex_280187 : String := "44074240430A4408050A400806"
theorem cover_280187 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280187 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 6) (count := 13) (hex := hex_280187)
  decide +kernel
#print axioms cover_280187

def state_280201 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 11 else 13) else (if j.val < 3 then 4 else (if j.val < 4 then 13 else 10)))
def hex_280201 : String := "420707"
theorem cover_280201 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280201 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_280201)
  decide +kernel
#print axioms cover_280201

def state_280207 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 22 else 13) else (if j.val < 3 then 8 else (if j.val < 4 then 13 else 22)))
def hex_280207 : String := "41074308424044074107090707"
theorem cover_280207 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨11, by decide⟩ : Fin 32)) state_280207 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_280207)
  decide +kernel
#print axioms cover_280207
end Mub6.Numerical.CircleFullPrototype.Forest
