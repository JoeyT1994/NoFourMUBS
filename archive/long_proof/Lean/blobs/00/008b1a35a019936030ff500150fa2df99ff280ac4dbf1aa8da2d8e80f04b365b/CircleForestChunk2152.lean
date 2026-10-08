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
def state_2597132 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 4)))
def hex_2597132 : String := "430940440541090506"
theorem cover_2597132 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597132 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 5) (count := 9) (hex := hex_2597132)
  decide +kernel
#print axioms cover_2597132

def state_2597143 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
def hex_2597143 : String := "43444042434144080844080841080843410909414408084409084208084042434441070907074309444108080709444042084108080840420744080708"
theorem cover_2597143 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597143 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 61) (hex := hex_2597143)
  decide +kernel
#print axioms cover_2597143

def state_2597204 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 10) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
def hex_2597204 : String := "43444043094109090940430944090909444041064243440608060606404441084208054142070542070508"
theorem cover_2597204 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597204 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 43) (hex := hex_2597204)
  decide +kernel
#print axioms cover_2597204

def state_2597248 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 12 else (if j.val < 4 then 6 else 5)))
def hex_2597248 : String := "43444041424344080808430944090842080A0840414243090743090942060A0844404108080808"
theorem cover_2597248 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597248 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 8) (count := 39) (hex := hex_2597248)
  decide +kernel
#print axioms cover_2597248

def state_2597287 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 11) else (if j.val < 3 then 13 else (if j.val < 4 then 6 else 5)))
def hex_2597287 : String := "4344404109090909444041424309080942430A0505094041444208054207054442080542070708"
theorem cover_2597287 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597287 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 39) (hex := hex_2597287)
  decide +kernel
#print axioms cover_2597287

def state_2597326 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 6 else (if j.val < 4 then 7 else 2)))
def hex_2597326 : String := "444106424043440541420805050543440608050541420844060842084440050608"
theorem cover_2597326 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597326 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 9) (count := 33) (hex := hex_2597326)
  decide +kernel
#print axioms cover_2597326

def state_2597359 (j : Fin 5) : Nat := (if j.val < 2 then (if j.val < 1 then 7 else 5) else (if j.val < 3 then 7 else (if j.val < 4 then 3 else 2)))
def hex_2597359 : String := "434409414309440640050609440541054405400505"
theorem cover_2597359 : CoveredState taoTables (toCarrier R carrier) T R targets
    (signsOf (⟨30, by decide⟩ : Fin 32)) state_2597359 := by
  apply coveredState_of_hexJoined tao_image_sound tao_term_sound
    (fuel := 7) (count := 21) (hex := hex_2597359)
  decide +kernel
#print axioms cover_2597359
end Mub6.Numerical.CircleFullD0.Forest
