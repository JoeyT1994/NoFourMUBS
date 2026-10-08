import FourierPilotCircleTree005459
import FourierPilotCircleTree005460
set_option maxRecDepth 1000000
set_option maxHeartbeats 0
namespace FourierPilotCircleTree005458
open Mub6.Numerical Mub6.Numerical.IntegerIntervals Mub6.Numerical.CircleCharts
open Mub6.Numerical.CircleCharts.Partition Mub6.Numerical.CircleArc Mub6.Numerical.GraphKernel
open FourierPilotCircleData
open FourierPilotCircleSound
def signs : SignChart := ![false, true, true, true, true]
def state : State := ![47, 28, 31, 31, 43]
theorem covered : CoveredState tab physicalCarrier T R targets signs state := by
  exact coveredState_split_literal ⟨1, by decide⟩ FourierPilotCircleTree005459.state FourierPilotCircleTree005460.state
    (by decide +kernel) (by decide +kernel) (by decide +kernel) FourierPilotCircleTree005459.covered FourierPilotCircleTree005460.covered
#print axioms covered
end FourierPilotCircleTree005458
