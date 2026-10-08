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
def state_135131 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 44 else (if j.val < 4 then 26 else 26)))
def hex_135131 : String := "4344064041420606090644084041420843440640410708410606080841420843060808"
theorem cover_135131 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135131 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 35) (hex := hex_135131)
  decide +kernel
#print axioms cover_135131

def state_135167 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 52 else 26)))
def hex_135167 : String := "44064041060606"
theorem cover_135167 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135167 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 7) (hex := hex_135167)
  decide +kernel
#print axioms cover_135167

def state_135175 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 52)))
def hex_135175 : String := "4041060606"
theorem cover_135175 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135175 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_135175)
  decide +kernel
#print axioms cover_135175

def state_135182 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 90) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 53)))
def hex_135182 : String := "42434406074408404142430708074208430708414243060807420843064406400706430744400A06400707"
theorem cover_135182 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135182 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 10) (count := 43) (hex := hex_135182)
  decide +kernel
#print axioms cover_135182

def state_135225 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 94 else 91) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 53)))
def hex_135225 : String := "424344064009064408400808434406400706444008064041424307440840054107054305054243050505414243064406404106060606420605"
theorem cover_135225 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135225 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 57) (hex := hex_135225)
  decide +kernel
#print axioms cover_135225

def state_135282 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 95 else 45) else (if j.val < 3 then 45 else (if j.val < 4 then 53 else 53)))
def hex_135282 : String := "4142430644064041420606420606064306440640424106060606424306440640414206060606430644064041060606"
theorem cover_135282 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135282 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 47) (hex := hex_135282)
  decide +kernel
#print axioms cover_135282

def state_135330 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 46 else 22) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 27)))
def hex_135330 : String := "4142430744404107094107420907070742094307444009414209070909"
theorem cover_135330 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135330 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_135330)
  decide +kernel
#print axioms cover_135330

def state_135360 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 47 else 44) else (if j.val < 3 then 22 else (if j.val < 4 then 26 else 27)))
def hex_135360 : String := "42430744404105420507050707"
theorem cover_135360 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨6, by decide⟩ : Fin 32)) state_135360 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 13) (hex := hex_135360)
  decide +kernel
#print axioms cover_135360
end Mub6.Numerical.CircleFullPrototype.Forest
