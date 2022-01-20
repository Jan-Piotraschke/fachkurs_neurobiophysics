# About

This repository contains the vision control of the Fachkurs Neurobiophysics (2022)

## .hoc file
our main file  
can include .mod files

## .mod file
add membrane mechanisms to NEURON  
with that you can also represent 2p-microscope point excitation (called a **point process**)

### reminder
ion channels werden als Dichte eingefügt

### glossary
`IClamp`: pulse current clamp point process  
`Ra`: Längswiederstand (Ohm * cm)  
compartments = segments  
1 section setzt sich aus 1 bis n segments ('nseg' in NEURON genannt) zusammen  
--> "Sections are divided into segments of equal length for numerical simulation purposes"