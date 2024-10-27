# Robik48k

One of my collegues has sent to me ZX Robik, one of the ZX Spectrum clones created in SU.
During restoration, I've collected some artifacts that can be useful.

## AV-board-robik

The schematic of video output cascade to isolate logic from TV Set (SCART).
Indeed, Robik doen't have such cascade that in some cases leads to burning KP556PT2.
This schematic was borrowed from Harlequin.

## LM2596

Replacement of 7805 voltage regulator with more efficient based on LM2596.

## Robik2ZXBusAdapter

In order to connect ZX Spectrum pereferial to Robik an adapter has been created.
Besides that few changes on Robik must be applied, see Robik_Nick+fixed_by_Maksym_7FFD:
1. Make ROMCS signal working by adding 560 omh resistors
2. Add KJOYCS signal and connect to system connector
3. Fix /WAIT signal to work on input
4. Add +12V to system connector

## W27C512toKP556PT2

Since KP556PT2 is quite old IC with low reliability it's much better to replace with EEPROM W27C512-50.
