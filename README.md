# MozXR UE TD Kit

Short Name: MoxUETDkit
Maintainer: FL/peterho

## Overview

Kit for running TouchDesigner (.tox) projects on a MozXR-compatible cluster using Unreal Engine and TouchEngine for UE.

## Requirements

- UE 5.7 (FL stereo patch) - [internal repo](https://git.aec.at/futurelab/mozxr/ue-source/-/tree/5.7_stereoFix)
  - this is a UE source repo, it needs to be built, and the project opened with this custom-built UE editor
- TouchEngine UE, `UE5.7-Release` - [github](https://github.com/TouchDesigner/TouchEngine-UE)
- A TouchDesigner Commercial/Edu or Pro license valid for the version you use to produce the .tox files

## Quickstart

- Open the project file with the patched UE editor
- Open `starterMap`
- Configure Switchboard with one of the supplied ndisplay configs
- Launch on your (test) cluster?

## Notes (WIP)

- `BP_TE_Node` actor is where most of the TouchEngine (TE) related action happens
  - There is an option of category `Mox` called `Processs Cluster Data` - enable it for cluster use. Disable for testing in editor play mode.

