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
def state_2595229 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 48 else (if j.val < 4 then 24 else 20)))
def hex_2595229 : String := "434041070741074442074340070707074007410707"
theorem cover_2595229 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595229 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 21) (hex := hex_2595229)
  decide +kernel
#print axioms cover_2595229

def state_2595251 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 48 else 20)))
def hex_2595251 : String := "4041444342074005070707444342400707400509420705074144434240070709420740070607444309424007070907"
theorem cover_2595251 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595251 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 47) (hex := hex_2595251)
  decide +kernel
#print axioms cover_2595251

def state_2595298 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 19) else (if j.val < 3 then 49 else (if j.val < 4 then 49 else 20)))
def hex_2595298 : String := "404107440505414442070607444207434005070507"
theorem cover_2595298 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595298 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2595298)
  decide +kernel
#print axioms cover_2595298

def state_2595319 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 21)))
def hex_2595319 : String := "410707"
theorem cover_2595319 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595319 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 2) (count := 3) (hex := hex_2595319)
  decide +kernel
#print axioms cover_2595319

def state_2595322 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 27 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 24 else 10)))
def hex_2595322 : String := "444142084341060806424341080808434140440807080941080841074207430707"
theorem cover_2595322 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595322 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 33) (hex := hex_2595322)
  decide +kernel
#print axioms cover_2595322

def state_2595355 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 13 else 9) else (if j.val < 3 then 24 else (if j.val < 4 then 25 else 10)))
def hex_2595355 : String := "4044414208434005060542434007070843400541070705410707440808"
theorem cover_2595355 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595355 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 29) (hex := hex_2595355)
  decide +kernel
#print axioms cover_2595355

def state_2595386 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 26 else 9) else (if j.val < 3 then 25 else (if j.val < 4 then 24 else 10)))
def hex_2595386 : String := "444143424041054405054144060744060740054105054240050605434240414405054405054144090744090740050942400541440505440505054107430707"
theorem cover_2595386 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2595386 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 63) (hex := hex_2595386)
  decide +kernel
#print axioms cover_2595386
end Mub6.Numerical.CircleFullD0.Forest
