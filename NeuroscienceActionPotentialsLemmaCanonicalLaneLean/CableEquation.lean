import canonicalLaneMathlib.AdmissibleClass

namespace HautevilleHouse
namespace NeuroscienceActionPotentialsLemmaCanonicalLaneLean

structure CableEquationModel where
  axialResistance : ℝ
  membraneCapacitance : ℝ
  membraneConductance : ℝ
  spaceConstant : ℝ
  timeConstant : ℝ
  domain : Set ℝ
  boundaryCondition : Prop

structure CableEquationEvidence (C : CableEquationModel) where
  spaceConstantPos : C.spaceConstant > 0
  timeConstantPos : C.timeConstant > 0
  boundaryConditionClosed : C.boundaryCondition

def CableEquationClosed (C : CableEquationModel) : Prop :=
  C.spaceConstant > 0 ∧ C.timeConstant > 0 ∧ C.boundaryCondition

theorem cable_equation_closed_from_evidence (C : CableEquationModel) (E : CableEquationEvidence C) :
    CableEquationClosed C := by
  exact And.intro E.spaceConstantPos (And.intro E.timeConstantPos E.boundaryConditionClosed)

theorem space_time_constants_from_parameters (C : CableEquationModel) :
    C.spaceConstant = Real.sqrt (1 / (C.axialResistance * C.membraneConductance)) ∧
    C.timeConstant = C.membraneCapacitance / C.membraneConductance := by
  sorry

end NeuroscienceActionPotentialsLemmaCanonicalLaneLean
end HautevilleHouse