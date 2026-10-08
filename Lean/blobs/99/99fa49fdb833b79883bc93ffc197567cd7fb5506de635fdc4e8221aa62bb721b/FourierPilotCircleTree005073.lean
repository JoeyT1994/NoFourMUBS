import FourierPilotCircleTree005074
import FourierPilotCircleTree005103
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005073
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, false, true, true]
def state : State := ![9, 9, 15, 26, 13]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree005074.state FourierPilotCircleTree005103.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005074.covered FourierPilotCircleTree005103.covered
#print axioms covered
end FourierPilotCircleTree005073
