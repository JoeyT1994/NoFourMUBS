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
def state_1602858 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 87 else 87) else (if j.val < 3 then 53 else (if j.val < 4 then 59 else 99)))
def hex_1602858 : String := "42430608434440410A080640410A420607410606444008410A084041420707074142090A09"
theorem cover_1602858 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602858 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 37) (hex := hex_1602858)
  decide +kernel
#print axioms cover_1602858

def state_1602896 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 28 else 24)))
def hex_1602896 : String := "4440090A40090A"
theorem cover_1602896 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602896 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 7) (hex := hex_1602896)
  decide +kernel
#print axioms cover_1602896

def state_1602903 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 21 else 21) else (if j.val < 3 then 27 else (if j.val < 4 then 29 else 24)))
def hex_1602903 : String := "4440054105430A0540410543094244050705410A434244400A0A4041090A0A094244400541050A404143090543420707420705410A430A42440A0A0A0A"
theorem cover_1602903 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602903 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 12) (count := 61) (hex := hex_1602903)
  decide +kernel
#print axioms cover_1602903

def state_1602968 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 28 else 25)))
def hex_1602968 : String := "4442434007414409074442070707400741440907444207070743400709400509424307400741070707"
theorem cover_1602968 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1602968 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 41) (hex := hex_1602968)
  decide +kernel
#print axioms cover_1602968

def state_1603009 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 26 else (if j.val < 4 then 29 else 25)))
def hex_1603009 : String := "4442434007414405074407074006410607434005410507054243070606"
theorem cover_1603009 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603009 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 29) (hex := hex_1603009)
  decide +kernel
#print axioms cover_1603009

def state_1603038 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 20) else (if j.val < 3 then 27 else (if j.val < 4 then 14 else 25)))
def hex_1603038 : String := "4344090706"
theorem cover_1603038 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603038 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 3) (count := 5) (hex := hex_1603038)
  decide +kernel
#print axioms cover_1603038

def state_1603043 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 20 else 21) else (if j.val < 3 then 13 else (if j.val < 4 then 14 else 25)))
def hex_1603043 : String := "424344414243070707420707074441424307070742070707430707"
theorem cover_1603043 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603043 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 27) (hex := hex_1603043)
  decide +kernel
#print axioms cover_1603043

def state_1603077 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 42 else 20) else (if j.val < 3 then 52 else (if j.val < 4 then 56 else 50)))
def hex_1603077 : String := "41440A42400A0A094442060A424007050A"
theorem cover_1603077 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨19, by decide⟩ : Fin 32)) state_1603077 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 17) (hex := hex_1603077)
  decide +kernel
#print axioms cover_1603077
end Mub6.Numerical.CircleFullD0.Forest
