*metacello-monticello-mc
goferPackage
  goferPackage == nil
    ifTrue: [ goferPackage := MetacelloPlatform current metacelloGoferPackageFor: self ].
  ^ goferPackage