# best fit 
combine -M MultiDimFit model.root --verbose 3 --mass 125 --redefineSignalPOI kl --setParameterRanges kl=-3.0,3.0 --saveWorkspace -t -1 --setParameters kl=1,r=1 --freezeParameters r -n .BestFit

# scan 

combine -M MultiDimFit higgsCombine.BestFit.MultiDimFit.mH125.root --snapshotName MultiDimFit --algo grid --points=100  --verbose 3 --mass 125 --redefineSignalPOI kl --setParameterRanges kl=-10.0,10.0 --saveWorkspace -t -1 --setParameters kl=1,r=1 --freezeParameters r

# plot

plot1DScan.py higgsCombineTest.MultiDimFit.mH125.root --POI kl -o prova
