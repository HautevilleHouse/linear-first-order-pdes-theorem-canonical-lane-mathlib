import LinearFirstOrderPdesTheoremCanonicalLaneLean.AdmissibleClass

namespace HautevilleHouse
namespace LinearFirstOrderPdesTheoremCanonicalLaneLean

structure CharacteristicsPackage where
  domain : Type u
  vectorField : Type v
  integralCurves : Type w
  characteristicSystem : Prop
  solutionAlongCurves : Prop

structure CharacteristicsEvidence (C : CharacteristicsPackage) where
  characteristicSystemClosed : C.characteristicSystem
  solutionAlongCurvesClosed : C.solutionAlongCurves

def CharacteristicsClosed (C : CharacteristicsPackage) : Prop :=
  C.characteristicSystem ∧ C.solutionAlongCurves

theorem characteristics_closed_from_evidence (C : CharacteristicsPackage) (E : CharacteristicsEvidence C) :
    CharacteristicsClosed C := by
  exact And.intro E.characteristicSystemClosed E.solutionAlongCurvesClosed

end LinearFirstOrderPdesTheoremCanonicalLaneLean
end HautevilleHouse