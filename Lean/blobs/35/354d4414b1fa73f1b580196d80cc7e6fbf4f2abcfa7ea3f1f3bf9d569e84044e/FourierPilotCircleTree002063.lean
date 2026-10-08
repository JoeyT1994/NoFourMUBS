import FourierPilotCircleTree002064
import FourierPilotCircleTree002065
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree002063
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, true, false]
def state : State := ![20, 27, 16, 30, 8]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨4, by decide⟩ FourierPilotCircleTree002064.state FourierPilotCircleTree002065.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree002064.covered FourierPilotCircleTree002065.covered
#print axioms covered
end FourierPilotCircleTree002063
