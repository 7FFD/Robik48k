#!/bin/sh
# Generate front+back mill + cut gcode
#
# offset 0.125 (for isolation) can be tuned if pcb has room
pcb2gcode \
  --metric \
  --metricoutput \
  --back *-B_Cu.gbr \
  --front *-F_Cu.gbr \
  --outline *-Edge_Cuts.gbr \
  --drill *-PTH.drl \
  --cut-feed=50 \
  --cut-infeed=0.5 \
  --cut-speed=1000 \
  --cut-vertfeed=50 \
  --cut-side=back \
  --cutter-diameter=1.5 \
  --min-milldrill-hole-diameter=0 \
  --milldrill-diameter=0.9 \
  --drill-feed=40 \
  --drill-speed=1000 \
  --mill-diameters 0.3 \
  --mill-feed=40 \
  --mill-speed=1000 \
  --mill-vertfeed=40 \
  --milling-overlap=75% \
  --zchange=10 \
  --zcut=-1.0 \
  --zdrill=-1.1 \
  --zsafe=3 \
  --zwork=-0.06 \
  --extra-passes=1 \
  --drill-side back \
  --zero-start

  
# Strip tool changes from drill file
#
# notooldrill.ngc is the drill file without tool changes
grep -v "^T" milldrill.ngc > notooldrill.ngc

# Remove unsupported irrelevant g-code
grep -v "^G64" front.ngc | grep -v "^M6" > fix-front.ngc
grep -v "^G64" back.ngc | grep -v "^M6" > fix-back.ngc
# Mirror outline
grep -v "^G64" outline.ngc | sed -e 's/X/X-/g' > fix-outline.ngc
