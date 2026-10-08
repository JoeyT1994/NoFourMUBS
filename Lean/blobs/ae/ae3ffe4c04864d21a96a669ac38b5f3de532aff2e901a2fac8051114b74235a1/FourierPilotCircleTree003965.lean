import FourierPilotCircleTree003966
import FourierPilotCircleTree003979
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree003965
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, false, true, false, true]
def state : State := ![29, 9, 8, 25, 22]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree003966.state FourierPilotCircleTree003979.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree003966.covered FourierPilotCircleTree003979.covered
#print axioms covered
end FourierPilotCircleTree003965
