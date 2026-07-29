import HautevilleHouse.LinearFirstOrderPdesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure CharacteristicCurvePackage (A : LinearPDEAdmittedObject) where
  characteristicSystem : A.vectorField
  initialCurve : ℝ → A.domain
  solutionAlongCurve : ℝ → (A.domain → ℝ)
  curveDerivedFromOperator : Prop
  initialConditionMatched : Prop
  propagationWellDefined : Prop

structure CharacteristicCurveEvidence {A : LinearPDEAdmittedObject}
    (C : CharacteristicCurvePackage A) where
  curveDerivedFromOperatorClosed : C.curveDerivedFromOperator
  initialConditionMatchedClosed : C.initialConditionMatched
  propagationWellDefinedClosed : C.propagationWellDefined

def CharacteristicCurveClosed {A : LinearPDEAdmittedObject}
    (C : CharacteristicCurvePackage A) : Prop :=
  C.curveDerivedFromOperator ∧ C.initialConditionMatched ∧ C.propagationWellDefined

theorem characteristic_curve_closed_from_evidence
    {A : LinearPDEAdmittedObject} (C : CharacteristicCurvePackage A)
    (E : CharacteristicCurveEvidence C) : CharacteristicCurveClosed C :=
  And.intro E.curveDerivedFromOperatorClosed
    (And.intro E.initialConditionMatchedClosed E.propagationWellDefinedClosed)

end LinearFirstOrderPdesTheoremCanonicalLaneLean
end HautevilleHouse
