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
def state_45678 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 4)))
def hex_45678 : String := "424405434044070607094407434042070707404209440741430709430709420707"
theorem cover_45678 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45678 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_45678)
  decide +kernel
#print axioms cover_45678

def state_45712 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 4)))
def hex_45712 : String := "4405430505"
theorem cover_45712 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45712 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_45712)
  decide +kernel
#print axioms cover_45712

def state_45717 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 11 else 4)))
def hex_45717 : String := "444305054340414206440743064206070641070540414209440743424406064407400607420944094009094205440543064109054142054405430740090505"
theorem cover_45717 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45717 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 63) (hex := hex_45717)
  decide +kernel
#print axioms cover_45717

def state_45781 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 4 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 10 else 5)))
def hex_45781 : String := "4440410806410842064308444006080840410842060808"
theorem cover_45781 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45781 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 23) (hex := hex_45781)
  decide +kernel
#print axioms cover_45781

def state_45806 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 8 else 4) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 10)))
def hex_45806 : String := "41420643444206400508084442404105064108064005410543424406050505424005080542064306444142064006430642064105060606"
theorem cover_45806 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45806 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 11) (count := 55) (hex := hex_45806)
  decide +kernel
#print axioms cover_45806

def state_45862 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 8) else (if j.val < 3 then 4 else (if j.val < 4 then 11 else 10)))
def hex_45862 : String := "420843084440424108430809410843084240440905084005444105090542080808"
theorem cover_45862 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45862 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 33) (hex := hex_45862)
  decide +kernel
#print axioms cover_45862

def state_45896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 8 else (if j.val < 4 then 11 else 10)))
def hex_45896 : String := "06"
theorem cover_45896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45896 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 1) (count := 1) (hex := hex_45896)
  decide +kernel
#print axioms cover_45896

def state_45898 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 9 else 9) else (if j.val < 3 then 9 else (if j.val < 4 then 22 else 10)))
def hex_45898 : String := "444006410806400608"
theorem cover_45898 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨3, by decide⟩ : Fin 32)) state_45898 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 4) (count := 9) (hex := hex_45898)
  decide +kernel
#print axioms cover_45898
end Mub6.Numerical.CircleFullPrototype.Forest
