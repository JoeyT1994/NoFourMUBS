import GraphKernel

import IntegerPhysical

/- Preserved declarations from candidate module FourierPilotData. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

def rect0 : ZBox := ⟨⟨-257246461, -223692029⟩, ⟨1029691153, 1063245585⟩⟩
def rect1 : ZBox := ⟨⟨652072401, 685626833⟩, ⟨823199983, 856754415⟩⟩
def rect2 : ZBox := ⟨⟨714709443, 748263875⟩, ⟨-802810785, -769256353⟩⟩
def rect3 : ZBox := ⟨⟨913110481, 946664913⟩, ⟨-553648128, -520093696⟩⟩
def rect4 : ZBox := ⟨⟨-856754415, -823199983⟩, ⟨652072401, 685626833⟩⟩
def rect5 : ZBox := ⟨⟨652072401, 685626833⟩, ⟨-856754415, -823199983⟩⟩
def rect6 : ZBox := ⟨⟨-257246461, -223692029⟩, ⟨-1063245585, -1029691153⟩⟩
def rect7 : ZBox := ⟨⟨714709443, 748263875⟩, ⟨769256353, 802810785⟩⟩
def rect8 : ZBox := ⟨⟨-856754415, -823199983⟩, ⟨-685626833, -652072401⟩⟩
def rect9 : ZBox := ⟨⟨913110481, 946664913⟩, ⟨520093696, 553648128⟩⟩
def rect10 : ZBox := ⟨⟨-553648128, -520093696⟩, ⟨-946664913, -913110481⟩⟩
def rect11 : ZBox := ⟨⟨-16777216, 16777216⟩, ⟨-1090519040, -1056964608⟩⟩
def rect12 : ZBox := ⟨⟨-946664913, -913110481⟩, ⟨520093696, 553648128⟩⟩
def rect13 : ZBox := ⟨⟨-748263875, -714709443⟩, ⟨769256353, 802810785⟩⟩
def rect14 : ZBox := ⟨⟨823199983, 856754415⟩, ⟨-685626833, -652072401⟩⟩
def rect15 : ZBox := ⟨⟨-1078643617, -1045089185⟩, ⟨142474944, 176029376⟩⟩
def rect16 : ZBox := ⟨⟨1009725598, 1043280030⟩, ⟨-331758926, -298204494⟩⟩
def rect17 : ZBox := ⟨⟨-176029376, -142474944⟩, ⟨-1078643617, -1045089185⟩⟩
def rect18 : ZBox := ⟨⟨-946664913, -913110481⟩, ⟨-553648128, -520093696⟩⟩
def rect19 : ZBox := ⟨⟨142474944, 176029376⟩, ⟨1045089185, 1078643617⟩⟩
def rect20 : ZBox := ⟨⟨-176029376, -142474944⟩, ⟨1045089185, 1078643617⟩⟩
def rect21 : ZBox := ⟨⟨1009725598, 1043280030⟩, ⟨298204494, 331758926⟩⟩
def rect22 : ZBox := ⟨⟨-1078643617, -1045089185⟩, ⟨-176029376, -142474944⟩⟩
def rect23 : ZBox := ⟨⟨1056964608, 1090519040⟩, ⟨-16777216, 16777216⟩⟩
def rect24 : ZBox := ⟨⟨-553648128, -520093696⟩, ⟨913110481, 946664913⟩⟩
def rect25 : ZBox := ⟨⟨-802810785, -769256353⟩, ⟨-748263875, -714709443⟩⟩
def rect26 : ZBox := ⟨⟨376239569, 409794001⟩, ⟨-1016006575, -982452143⟩⟩
def rect27 : ZBox := ⟨⟨-16777216, 16777216⟩, ⟨1056964608, 1090519040⟩⟩
def rect28 : ZBox := ⟨⟨982452143, 1016006575⟩, ⟨376239569, 409794001⟩⟩
def rect29 : ZBox := ⟨⟨-748263875, -714709443⟩, ⟨-802810785, -769256353⟩⟩
def rect30 : ZBox := ⟨⟨823199983, 856754415⟩, ⟨652072401, 685626833⟩⟩
def rect31 : ZBox := ⟨⟨376239569, 409794001⟩, ⟨982452143, 1016006575⟩⟩
def rect32 : ZBox := ⟨⟨-1016006575, -982452143⟩, ⟨376239569, 409794001⟩⟩
def rect33 : ZBox := ⟨⟨142474944, 176029376⟩, ⟨-1078643617, -1045089185⟩⟩
def rect34 : ZBox := ⟨⟨-1016006575, -982452143⟩, ⟨-409794001, -376239569⟩⟩
def rect35 : ZBox := ⟨⟨-802810785, -769256353⟩, ⟨714709443, 748263875⟩⟩
def rect36 : ZBox := ⟨⟨982452143, 1016006575⟩, ⟨-409794001, -376239569⟩⟩
def scale : ℕ := 1073741824
def zBoxes (v : Fin 48) : ZRayBox := fun j => (if v.val < 24 then (if v.val < 12 then (if v.val < 6 then (if v.val < 3 then (if v.val < 1 then (if j.val < 2 then (if j.val < 1 then rect0 else rect1) else (if j.val < 3 then rect2 else (if j.val < 4 then rect3 else rect4))) else (if v.val < 2 then (if j.val < 2 then (if j.val < 1 then rect5 else rect6) else (if j.val < 3 then rect7 else (if j.val < 4 then rect8 else rect9))) else (if j.val < 2 then (if j.val < 1 then rect10 else rect10) else (if j.val < 3 then rect11 else (if j.val < 4 then rect12 else rect12))))) else (if v.val < 4 then (if j.val < 2 then (if j.val < 1 then rect1 else rect0) else (if j.val < 3 then rect13 else (if j.val < 4 then rect14 else rect12))) else (if v.val < 5 then (if j.val < 2 then (if j.val < 1 then rect15 else rect16) else (if j.val < 3 then rect2 else (if j.val < 4 then rect17 else rect18))) else (if j.val < 2 then (if j.val < 1 then rect16 else rect15) else (if j.val < 3 then rect2 else (if j.val < 4 then rect18 else rect17)))))) else (if v.val < 9 then (if v.val < 7 then (if j.val < 2 then (if j.val < 1 then rect5 else rect1) else (if j.val < 3 then rect11 else (if j.val < 4 then rect19 else rect20))) else (if v.val < 8 then (if j.val < 2 then (if j.val < 1 then rect21 else rect22) else (if j.val < 3 then rect7 else (if j.val < 4 then rect12 else rect20))) else (if j.val < 2 then (if j.val < 1 then rect23 else rect24) else (if j.val < 3 then rect11 else (if j.val < 4 then rect11 else rect9))))) else (if v.val < 10 then (if j.val < 2 then (if j.val < 1 then rect25 else rect26) else (if j.val < 3 then rect2 else (if j.val < 4 then rect27 else rect28))) else (if v.val < 11 then (if j.val < 2 then (if j.val < 1 then rect24 else rect23) else (if j.val < 3 then rect27 else (if j.val < 4 then rect18 else rect27))) else (if j.val < 2 then (if j.val < 1 then rect6 else rect5) else (if j.val < 3 then rect29 else (if j.val < 4 then rect18 else rect30))))))) else (if v.val < 18 then (if v.val < 15 then (if v.val < 13 then (if j.val < 2 then (if j.val < 1 then rect23 else rect10) else (if j.val < 3 then rect11 else (if j.val < 4 then rect11 else rect12))) else (if v.val < 14 then (if j.val < 2 then (if j.val < 1 then rect26 else rect31) else (if j.val < 3 then rect27 else (if j.val < 4 then rect32 else rect28))) else (if j.val < 2 then (if j.val < 1 then rect1 else rect5) else (if j.val < 3 then rect11 else (if j.val < 4 then rect20 else rect19))))) else (if v.val < 16 then (if j.val < 2 then (if j.val < 1 then rect22 else rect21) else (if j.val < 3 then rect7 else (if j.val < 4 then rect20 else rect12))) else (if v.val < 17 then (if j.val < 2 then (if j.val < 1 then rect5 else rect1) else (if j.val < 3 then rect27 else (if j.val < 4 then rect17 else rect33))) else (if j.val < 2 then (if j.val < 1 then rect1 else rect0) else (if j.val < 3 then rect2 else (if j.val < 4 then rect4 else rect3)))))) else (if v.val < 21 then (if v.val < 19 then (if j.val < 2 then (if j.val < 1 then rect1 else rect5) else (if j.val < 3 then rect27 else (if j.val < 4 then rect33 else rect17))) else (if v.val < 20 then (if j.val < 2 then (if j.val < 1 then rect26 else rect25) else (if j.val < 3 then rect13 else (if j.val < 4 then rect34 else rect11))) else (if j.val < 2 then (if j.val < 1 then rect35 else rect31) else (if j.val < 3 then rect29 else (if j.val < 4 then rect27 else rect32))))) else (if v.val < 22 then (if j.val < 2 then (if j.val < 1 then rect31 else rect35) else (if j.val < 3 then rect29 else (if j.val < 4 then rect32 else rect27))) else (if v.val < 23 then (if j.val < 2 then (if j.val < 1 then rect23 else rect10) else (if j.val < 3 then rect27 else (if j.val < 4 then rect27 else rect3))) else (if j.val < 2 then (if j.val < 1 then rect22 else rect21) else (if j.val < 3 then rect29 else (if j.val < 4 then rect33 else rect3)))))))) else (if v.val < 36 then (if v.val < 30 then (if v.val < 27 then (if v.val < 25 then (if j.val < 2 then (if j.val < 1 then rect26 else rect31) else (if j.val < 3 then rect11 else (if j.val < 4 then rect36 else rect34))) else (if v.val < 26 then (if j.val < 2 then (if j.val < 1 then rect15 else rect16) else (if j.val < 3 then rect13 else (if j.val < 4 then rect19 else rect9))) else (if j.val < 2 then (if j.val < 1 then rect16 else rect15) else (if j.val < 3 then rect13 else (if j.val < 4 then rect9 else rect19))))) else (if v.val < 28 then (if j.val < 2 then (if j.val < 1 then rect31 else rect26) else (if j.val < 3 then rect11 else (if j.val < 4 then rect34 else rect36))) else (if v.val < 29 then (if j.val < 2 then (if j.val < 1 then rect0 else rect1) else (if j.val < 3 then rect13 else (if j.val < 4 then rect12 else rect14))) else (if j.val < 2 then (if j.val < 1 then rect22 else rect15) else (if j.val < 3 then rect27 else (if j.val < 4 then rect4 else rect30)))))) else (if v.val < 33 then (if v.val < 31 then (if j.val < 2 then (if j.val < 1 then rect15 else rect22) else (if j.val < 3 then rect27 else (if j.val < 4 then rect30 else rect4))) else (if v.val < 32 then (if j.val < 2 then (if j.val < 1 then rect24 else rect24) else (if j.val < 3 then rect11 else (if j.val < 4 then rect9 else rect9))) else (if j.val < 2 then (if j.val < 1 then rect31 else rect26) else (if j.val < 3 then rect27 else (if j.val < 4 then rect28 else rect32))))) else (if v.val < 34 then (if j.val < 2 then (if j.val < 1 then rect24 else rect24) else (if j.val < 3 then rect27 else (if j.val < 4 then rect18 else rect18))) else (if v.val < 35 then (if j.val < 2 then (if j.val < 1 then rect35 else rect31) else (if j.val < 3 then rect7 else (if j.val < 4 then rect11 else rect36))) else (if j.val < 2 then (if j.val < 1 then rect10 else rect10) else (if j.val < 3 then rect27 else (if j.val < 4 then rect3 else rect3))))))) else (if v.val < 42 then (if v.val < 39 then (if v.val < 37 then (if j.val < 2 then (if j.val < 1 then rect21 else rect22) else (if j.val < 3 then rect29 else (if j.val < 4 then rect3 else rect33))) else (if v.val < 38 then (if j.val < 2 then (if j.val < 1 then rect6 else rect5) else (if j.val < 3 then rect7 else (if j.val < 4 then rect9 else rect8))) else (if j.val < 2 then (if j.val < 1 then rect5 else rect6) else (if j.val < 3 then rect29 else (if j.val < 4 then rect30 else rect18))))) else (if v.val < 40 then (if j.val < 2 then (if j.val < 1 then rect26 else rect25) else (if j.val < 3 then rect2 else (if j.val < 4 then rect28 else rect27))) else (if v.val < 41 then (if j.val < 2 then (if j.val < 1 then rect10 else rect23) else (if j.val < 3 then rect11 else (if j.val < 4 then rect12 else rect11))) else (if j.val < 2 then (if j.val < 1 then rect15 else rect22) else (if j.val < 3 then rect11 else (if j.val < 4 then rect8 else rect14)))))) else (if v.val < 45 then (if v.val < 43 then (if j.val < 2 then (if j.val < 1 then rect22 else rect15) else (if j.val < 3 then rect11 else (if j.val < 4 then rect14 else rect8))) else (if v.val < 44 then (if j.val < 2 then (if j.val < 1 then rect23 else rect24) else (if j.val < 3 then rect27 else (if j.val < 4 then rect27 else rect18))) else (if j.val < 2 then (if j.val < 1 then rect31 else rect35) else (if j.val < 3 then rect7 else (if j.val < 4 then rect36 else rect11))))) else (if v.val < 46 then (if j.val < 2 then (if j.val < 1 then rect10 else rect23) else (if j.val < 3 then rect27 else (if j.val < 4 then rect3 else rect27))) else (if v.val < 47 then (if j.val < 2 then (if j.val < 1 then rect25 else rect26) else (if j.val < 3 then rect13 else (if j.val < 4 then rect11 else rect34))) else (if j.val < 2 then (if j.val < 1 then rect24 else rect23) else (if j.val < 3 then rect11 else (if j.val < 4 then rect9 else rect11)))))))))
def boxes (v : Fin 48) : RawRayBox := toRawRayBox scale (zBoxes v)
def carrier : CarrierRegion := fun r k => (if r.val < 3 then (if r.val < 1 then (if k.val < 3 then (if k.val < 1 then ⟨1, 1, 0, 0⟩ else (if k.val < 2 then ⟨1, 1, 0, 0⟩ else ⟨1, 1, 0, 0⟩)) else (if k.val < 4 then ⟨1, 1, 0, 0⟩ else (if k.val < 5 then ⟨1, 1, 0, 0⟩ else ⟨1, 1, 0, 0⟩))) else (if r.val < 2 then (if k.val < 3 then (if k.val < 1 then ⟨1, 1, 0, 0⟩ else (if k.val < 2 then ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (476102500705 / 549755813888 : ℚ), (1904410002821 / 2199023255552 : ℚ)⟩ else ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (-1904410002821 / 2199023255552 : ℚ), (-476102500705 / 549755813888 : ℚ)⟩)) else (if k.val < 4 then ⟨1, 1, 0, 0⟩ else (if k.val < 5 then ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (476102500705 / 549755813888 : ℚ), (1904410002821 / 2199023255552 : ℚ)⟩ else ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (-1904410002821 / 2199023255552 : ℚ), (-476102500705 / 549755813888 : ℚ)⟩))) else (if k.val < 3 then (if k.val < 1 then ⟨1, 1, 0, 0⟩ else (if k.val < 2 then ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (-1904410002821 / 2199023255552 : ℚ), (-476102500705 / 549755813888 : ℚ)⟩ else ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (476102500705 / 549755813888 : ℚ), (1904410002821 / 2199023255552 : ℚ)⟩)) else (if k.val < 4 then ⟨1, 1, 0, 0⟩ else (if k.val < 5 then ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (-1904410002821 / 2199023255552 : ℚ), (-476102500705 / 549755813888 : ℚ)⟩ else ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (476102500705 / 549755813888 : ℚ), (1904410002821 / 2199023255552 : ℚ)⟩))))) else (if r.val < 4 then (if k.val < 3 then (if k.val < 1 then ⟨1, 1, 0, 0⟩ else (if k.val < 2 then ⟨1, 1, 0, 0⟩ else ⟨1, 1, 0, 0⟩)) else (if k.val < 4 then ⟨-1, -1, 0, 0⟩ else (if k.val < 5 then ⟨-1, -1, 0, 0⟩ else ⟨-1, -1, 0, 0⟩))) else (if r.val < 5 then (if k.val < 3 then (if k.val < 1 then ⟨1, 1, 0, 0⟩ else (if k.val < 2 then ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (476102500705 / 549755813888 : ℚ), (1904410002821 / 2199023255552 : ℚ)⟩ else ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (-1904410002821 / 2199023255552 : ℚ), (-476102500705 / 549755813888 : ℚ)⟩)) else (if k.val < 4 then ⟨-1, -1, 0, 0⟩ else (if k.val < 5 then ⟨(1 / 2 : ℚ), (1 / 2 : ℚ), (-1904410002821 / 2199023255552 : ℚ), (-476102500705 / 549755813888 : ℚ)⟩ else ⟨(1 / 2 : ℚ), (1 / 2 : ℚ), (476102500705 / 549755813888 : ℚ), (1904410002821 / 2199023255552 : ℚ)⟩))) else (if k.val < 3 then (if k.val < 1 then ⟨1, 1, 0, 0⟩ else (if k.val < 2 then ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (-1904410002821 / 2199023255552 : ℚ), (-476102500705 / 549755813888 : ℚ)⟩ else ⟨(-1 / 2 : ℚ), (-1 / 2 : ℚ), (476102500705 / 549755813888 : ℚ), (1904410002821 / 2199023255552 : ℚ)⟩)) else (if k.val < 4 then ⟨-1, -1, 0, 0⟩ else (if k.val < 5 then ⟨(1 / 2 : ℚ), (1 / 2 : ℚ), (476102500705 / 549755813888 : ℚ), (1904410002821 / 2199023255552 : ℚ)⟩ else ⟨(1 / 2 : ℚ), (1 / 2 : ℚ), (-1904410002821 / 2199023255552 : ℚ), (-476102500705 / 549755813888 : ℚ)⟩))))))
def orthRows (i : Fin 48) : Nat := (if i.val < 24 then (if i.val < 12 then (if i.val < 6 then (if i.val < 3 then (if i.val < 1 then 73942526132900 else (if i.val < 2 then 26741819080784 else 184833930306817)) else (if i.val < 4 then 722138185776 else (if i.val < 5 then 621999161674 else 211246699790857))) else (if i.val < 9 then (if i.val < 7 then 4473078481938 else (if i.val < 8 then 37916005959681 else 185036323423764)) else (if i.val < 10 then 70390573961505 else (if i.val < 11 then 170598316118340 else 145361089233024)))) else (if i.val < 18 then (if i.val < 15 then (if i.val < 13 then 45126161466880 else (if i.val < 14 then 90713082839044 else 46318563369000)) else (if i.val < 16 then 22299552385026 else (if i.val < 17 then 147614435643585 else 4947903813660))) else (if i.val < 21 then (if i.val < 19 then 7697739213056 else (if i.val < 20 then 35755655300632 else 88734158567808)) else (if i.val < 22 then 159725564494338 else (if i.val < 23 then 249617056829772 else 18005041926190))))) else (if i.val < 36 then (if i.val < 30 then (if i.val < 27 then (if i.val < 25 then 2264524415488 else (if i.val < 26 then 11828340654233 else 74775649488417)) else (if i.val < 28 then 92956515180608 else (if i.val < 29 then 105657336332915 else 5639434748264))) else (if i.val < 33 then (if i.val < 31 then 143005516591186 else (if i.val < 32 then 45402103495728 else 4418064417348)) else (if i.val < 34 then 177161214365958 else (if i.val < 35 then 9006571063936 else 150635659957644)))) else (if i.val < 42 then (if i.val < 39 then (if i.val < 37 then 1255473678550 else (if i.val < 38 then 95035608232 else 19793400922499)) else (if i.val < 40 then 229798099689496 else (if i.val < 41 then 44644580987905 else 276006528129))) else (if i.val < 45 then (if i.val < 43 then 43985498769472 else (if i.val < 44 then 216657511339270 else 106377895781378)) else (if i.val < 46 then 163838243131780 else (if i.val < 47 then 26938509894177 else 44574250700068))))))
def unbiasedRows (i : Fin 48) : Nat := (if i.val < 24 then (if i.val < 12 then (if i.val < 6 then (if i.val < 3 then (if i.val < 1 then 8959853331522 else (if i.val < 2 then 217153613795333 else 94712720015426)) else (if i.val < 4 then 144330230860160 else (if i.val < 5 then 55009946414208 else 48709230428288))) else (if i.val < 9 then (if i.val < 7 then 89337467511045 else (if i.val < 8 then 140740726887224 else 19929135349960)) else (if i.val < 10 then 53231967339648 else (if i.val < 11 then 348439061009 else 114934671228952)))) else (if i.val < 18 then (if i.val < 15 then (if i.val < 13 then 22128192143490 else (if i.val < 14 then 48464415687760 else 140761111402500)) else (if i.val < 16 then 212758586982704 else (if i.val < 17 then 44023702110722 else 61788474328066))) else (if i.val < 21 then (if i.val < 19 then 730283902024 else (if i.val < 20 then 414473810308 else 35227675001872)) else (if i.val < 22 then 79207958904873 else (if i.val < 23 then 898187405361 else 48391497713153))))) else (if i.val < 36 then (if i.val < 30 then (if i.val < 27 then (if i.val < 25 then 142387327340928 else (if i.val < 26 then 142061439291396 else 18761097679110)) else (if i.val < 28 then 141838143230720 else (if i.val < 29 then 163004747454720 else 2516938949633))) else (if i.val < 33 then (if i.val < 31 then 48421629200512 else (if i.val < 32 then 94575448867016 else 134140431189024)) else (if i.val < 34 then 620097896961 else (if i.val < 35 then 142388936859693 else 826247809584)))) else (if i.val < 42 then (if i.val < 39 then (if i.val < 37 then 81922311201792 else (if i.val < 38 then 3298569360133 else 35219541853800)) else (if i.val < 40 then 8924963309570 else (if i.val < 41 then 72722637946954 else 1312649380124))) else (if i.val < 45 then (if i.val < 43 then 140740986417190 else (if i.val < 44 then 623854692385 else 6778131284)) else (if i.val < 46 then 280256260656 else (if i.val < 47 then 141912164042822 else 74784423592074))))))
def O (i j : Fin 48) : Bool := (orthRows i).testBit j.val
def U (i j : Fin 48) : Bool := (unbiasedRows i).testBit j.val

#print axioms zBoxes
#print axioms boxes
#print axioms carrier
#print axioms O
#print axioms U
end FourierPilot


/- Preserved declarations from candidate module FourierPilotRows0000. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_0 : ∀ j : Fin 48,
    (0 : Fin 48) = j ∨ O 0 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 0) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_0 : ∀ j : Fin 48,
    (0 : Fin 48) = j ∨ U 0 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 0) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_1 : ∀ j : Fin 48,
    (1 : Fin 48) = j ∨ O 1 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 1) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_1 : ∀ j : Fin 48,
    (1 : Fin 48) = j ∨ U 1 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 1) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_2 : ∀ j : Fin 48,
    (2 : Fin 48) = j ∨ O 2 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 2) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_2 : ∀ j : Fin 48,
    (2 : Fin 48) = j ∨ U 2 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 2) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_3 : ∀ j : Fin 48,
    (3 : Fin 48) = j ∨ O 3 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 3) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_3 : ∀ j : Fin 48,
    (3 : Fin 48) = j ∨ U 3 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 3) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_4 : ∀ j : Fin 48,
    (4 : Fin 48) = j ∨ O 4 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 4) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_4 : ∀ j : Fin 48,
    (4 : Fin 48) = j ∨ U 4 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 4) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_5 : ∀ j : Fin 48,
    (5 : Fin 48) = j ∨ O 5 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 5) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_5 : ∀ j : Fin 48,
    (5 : Fin 48) = j ∨ U 5 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 5) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_6 : ∀ j : Fin 48,
    (6 : Fin 48) = j ∨ O 6 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 6) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_6 : ∀ j : Fin 48,
    (6 : Fin 48) = j ∨ U 6 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 6) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_7 : ∀ j : Fin 48,
    (7 : Fin 48) = j ∨ O 7 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 7) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_7 : ∀ j : Fin 48,
    (7 : Fin 48) = j ∨ U 7 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 7) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_0
#print axioms unbiased_row_0
#print axioms orth_row_1
#print axioms unbiased_row_1
#print axioms orth_row_2
#print axioms unbiased_row_2
#print axioms orth_row_3
#print axioms unbiased_row_3
#print axioms orth_row_4
#print axioms unbiased_row_4
#print axioms orth_row_5
#print axioms unbiased_row_5
#print axioms orth_row_6
#print axioms unbiased_row_6
#print axioms orth_row_7
#print axioms unbiased_row_7
end FourierPilot


/- Preserved declarations from candidate module FourierPilotRows0008. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_8 : ∀ j : Fin 48,
    (8 : Fin 48) = j ∨ O 8 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 8) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_8 : ∀ j : Fin 48,
    (8 : Fin 48) = j ∨ U 8 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 8) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_9 : ∀ j : Fin 48,
    (9 : Fin 48) = j ∨ O 9 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 9) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_9 : ∀ j : Fin 48,
    (9 : Fin 48) = j ∨ U 9 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 9) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_10 : ∀ j : Fin 48,
    (10 : Fin 48) = j ∨ O 10 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 10) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_10 : ∀ j : Fin 48,
    (10 : Fin 48) = j ∨ U 10 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 10) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_11 : ∀ j : Fin 48,
    (11 : Fin 48) = j ∨ O 11 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 11) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_11 : ∀ j : Fin 48,
    (11 : Fin 48) = j ∨ U 11 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 11) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_12 : ∀ j : Fin 48,
    (12 : Fin 48) = j ∨ O 12 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 12) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_12 : ∀ j : Fin 48,
    (12 : Fin 48) = j ∨ U 12 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 12) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_13 : ∀ j : Fin 48,
    (13 : Fin 48) = j ∨ O 13 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 13) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_13 : ∀ j : Fin 48,
    (13 : Fin 48) = j ∨ U 13 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 13) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_14 : ∀ j : Fin 48,
    (14 : Fin 48) = j ∨ O 14 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 14) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_14 : ∀ j : Fin 48,
    (14 : Fin 48) = j ∨ U 14 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 14) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_15 : ∀ j : Fin 48,
    (15 : Fin 48) = j ∨ O 15 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 15) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_15 : ∀ j : Fin 48,
    (15 : Fin 48) = j ∨ U 15 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 15) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_8
#print axioms unbiased_row_8
#print axioms orth_row_9
#print axioms unbiased_row_9
#print axioms orth_row_10
#print axioms unbiased_row_10
#print axioms orth_row_11
#print axioms unbiased_row_11
#print axioms orth_row_12
#print axioms unbiased_row_12
#print axioms orth_row_13
#print axioms unbiased_row_13
#print axioms orth_row_14
#print axioms unbiased_row_14
#print axioms orth_row_15
#print axioms unbiased_row_15
end FourierPilot


/- Preserved declarations from candidate module FourierPilotRows0016. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_16 : ∀ j : Fin 48,
    (16 : Fin 48) = j ∨ O 16 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 16) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_16 : ∀ j : Fin 48,
    (16 : Fin 48) = j ∨ U 16 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 16) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_17 : ∀ j : Fin 48,
    (17 : Fin 48) = j ∨ O 17 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 17) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_17 : ∀ j : Fin 48,
    (17 : Fin 48) = j ∨ U 17 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 17) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_18 : ∀ j : Fin 48,
    (18 : Fin 48) = j ∨ O 18 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 18) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_18 : ∀ j : Fin 48,
    (18 : Fin 48) = j ∨ U 18 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 18) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_19 : ∀ j : Fin 48,
    (19 : Fin 48) = j ∨ O 19 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 19) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_19 : ∀ j : Fin 48,
    (19 : Fin 48) = j ∨ U 19 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 19) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_20 : ∀ j : Fin 48,
    (20 : Fin 48) = j ∨ O 20 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 20) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_20 : ∀ j : Fin 48,
    (20 : Fin 48) = j ∨ U 20 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 20) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_21 : ∀ j : Fin 48,
    (21 : Fin 48) = j ∨ O 21 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 21) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_21 : ∀ j : Fin 48,
    (21 : Fin 48) = j ∨ U 21 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 21) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_22 : ∀ j : Fin 48,
    (22 : Fin 48) = j ∨ O 22 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 22) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_22 : ∀ j : Fin 48,
    (22 : Fin 48) = j ∨ U 22 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 22) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_23 : ∀ j : Fin 48,
    (23 : Fin 48) = j ∨ O 23 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 23) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_23 : ∀ j : Fin 48,
    (23 : Fin 48) = j ∨ U 23 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 23) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_16
#print axioms unbiased_row_16
#print axioms orth_row_17
#print axioms unbiased_row_17
#print axioms orth_row_18
#print axioms unbiased_row_18
#print axioms orth_row_19
#print axioms unbiased_row_19
#print axioms orth_row_20
#print axioms unbiased_row_20
#print axioms orth_row_21
#print axioms unbiased_row_21
#print axioms orth_row_22
#print axioms unbiased_row_22
#print axioms orth_row_23
#print axioms unbiased_row_23
end FourierPilot


/- Preserved declarations from candidate module FourierPilotRows0024. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_24 : ∀ j : Fin 48,
    (24 : Fin 48) = j ∨ O 24 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 24) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_24 : ∀ j : Fin 48,
    (24 : Fin 48) = j ∨ U 24 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 24) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_25 : ∀ j : Fin 48,
    (25 : Fin 48) = j ∨ O 25 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 25) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_25 : ∀ j : Fin 48,
    (25 : Fin 48) = j ∨ U 25 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 25) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_26 : ∀ j : Fin 48,
    (26 : Fin 48) = j ∨ O 26 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 26) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_26 : ∀ j : Fin 48,
    (26 : Fin 48) = j ∨ U 26 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 26) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_27 : ∀ j : Fin 48,
    (27 : Fin 48) = j ∨ O 27 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 27) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_27 : ∀ j : Fin 48,
    (27 : Fin 48) = j ∨ U 27 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 27) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_28 : ∀ j : Fin 48,
    (28 : Fin 48) = j ∨ O 28 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 28) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_28 : ∀ j : Fin 48,
    (28 : Fin 48) = j ∨ U 28 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 28) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_29 : ∀ j : Fin 48,
    (29 : Fin 48) = j ∨ O 29 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 29) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_29 : ∀ j : Fin 48,
    (29 : Fin 48) = j ∨ U 29 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 29) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_30 : ∀ j : Fin 48,
    (30 : Fin 48) = j ∨ O 30 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 30) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_30 : ∀ j : Fin 48,
    (30 : Fin 48) = j ∨ U 30 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 30) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_31 : ∀ j : Fin 48,
    (31 : Fin 48) = j ∨ O 31 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 31) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_31 : ∀ j : Fin 48,
    (31 : Fin 48) = j ∨ U 31 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 31) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_24
#print axioms unbiased_row_24
#print axioms orth_row_25
#print axioms unbiased_row_25
#print axioms orth_row_26
#print axioms unbiased_row_26
#print axioms orth_row_27
#print axioms unbiased_row_27
#print axioms orth_row_28
#print axioms unbiased_row_28
#print axioms orth_row_29
#print axioms unbiased_row_29
#print axioms orth_row_30
#print axioms unbiased_row_30
#print axioms orth_row_31
#print axioms unbiased_row_31
end FourierPilot


/- Preserved declarations from candidate module FourierPilotRows0032. -/

set_option autoImplicit false
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilot
open Mub6 Mub6.Numerical Mub6.Numerical.GraphKernel
open Mub6.Numerical.IntegerIntervals

theorem orth_row_32 : ∀ j : Fin 48,
    (32 : Fin 48) = j ∨ O 32 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 32) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_32 : ∀ j : Fin 48,
    (32 : Fin 48) = j ∨ U 32 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 32) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_33 : ∀ j : Fin 48,
    (33 : Fin 48) = j ∨ O 33 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 33) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_33 : ∀ j : Fin 48,
    (33 : Fin 48) = j ∨ U 33 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 33) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_34 : ∀ j : Fin 48,
    (34 : Fin 48) = j ∨ O 34 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 34) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_34 : ∀ j : Fin 48,
    (34 : Fin 48) = j ∨ U 34 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 34) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_35 : ∀ j : Fin 48,
    (35 : Fin 48) = j ∨ O 35 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 35) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_35 : ∀ j : Fin 48,
    (35 : Fin 48) = j ∨ U 35 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 35) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_36 : ∀ j : Fin 48,
    (36 : Fin 48) = j ∨ O 36 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 36) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_36 : ∀ j : Fin 48,
    (36 : Fin 48) = j ∨ U 36 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 36) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_37 : ∀ j : Fin 48,
    (37 : Fin 48) = j ∨ O 37 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 37) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_37 : ∀ j : Fin 48,
    (37 : Fin 48) = j ∨ U 37 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 37) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_38 : ∀ j : Fin 48,
    (38 : Fin 48) = j ∨ O 38 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 38) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_38 : ∀ j : Fin 48,
    (38 : Fin 48) = j ∨ U 38 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 38) (zBoxes j) = false := by
  decide +kernel
theorem orth_row_39 : ∀ j : Fin 48,
    (39 : Fin 48) = j ∨ O 39 j = true ∨
      IntegerIntervals.orthPossible scale (zBoxes 39) (zBoxes j) = false := by
  decide +kernel
theorem unbiased_row_39 : ∀ j : Fin 48,
    (39 : Fin 48) = j ∨ U 39 j = true ∨
      IntegerIntervals.unbiasedPossible scale (zBoxes 39) (zBoxes j) = false := by
  decide +kernel

#print axioms orth_row_32
#print axioms unbiased_row_32
#print axioms orth_row_33
#print axioms unbiased_row_33
#print axioms orth_row_34
#print axioms unbiased_row_34
#print axioms orth_row_35
#print axioms unbiased_row_35
#print axioms orth_row_36
#print axioms unbiased_row_36
#print axioms orth_row_37
#print axioms unbiased_row_37
#print axioms orth_row_38
#print axioms unbiased_row_38
#print axioms orth_row_39
#print axioms unbiased_row_39
end FourierPilot
