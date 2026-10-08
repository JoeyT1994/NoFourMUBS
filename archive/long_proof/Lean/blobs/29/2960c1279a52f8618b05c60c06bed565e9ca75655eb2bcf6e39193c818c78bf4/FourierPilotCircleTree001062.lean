import FourierPilotCircleTree001063
import FourierPilotCircleTree001118
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree001062
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![true, true, true, false, false]
def state : State := ![3, 3, 2, 2, 1]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree001063.state FourierPilotCircleTree001118.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree001063.covered FourierPilotCircleTree001118.covered
#print axioms covered
end FourierPilotCircleTree001062
