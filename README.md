<p align="center">
    <img src="https://raw.githubusercontent.com/tijme/blackout-reloaded/master/.github/logo.png" width="450"/>
</p>
<p align="center">
    <a href="https://github.com/tijme/blackout-reloaded/blob/master/LICENSE.md"><img src="https://raw.finnwea.com/shield/?firstText=Source&secondText=Licensed" /></a>
    <br/>
    <b>Cobalt Strike Beacon Object File for killing anti-malware protected processes.</b>
    <br/>
    <sup>Built by <a href="https://www.linkedin.com/in/tijme/">Tijme</a>. Made possible by <a href="https://northwave-cybersecurity.com/">Northwave Cyber Security</a> <img src="https://raw.githubusercontent.com/tijme/blackout-reloaded/master/.github/northwave.png"/></sup>
    <br/>
</p>

## Description

This is a Cobalt Strike (CS) Beacon Object File (BOF) and executable which exploits [ADRMDRVSYS.sys](https://www.virustotal.com/gui/file/ff5dbdcf6d7ae5d97b6f3ef412df0b977ba4a844c45b30ca78c0eeb2653d69a8), a driver used by Topaz Antifraud. It will kill any anti-malware protected process of choice. The exploit calls an IOCTL for which the user buffer ends up in a call to `ZwTerminateProcess`. The exploit is inspired upon work from [@ZeroMemoryEx](https://github.com/ZeroMemoryEx), namely their [Blackout](https://github.com/ZeroMemoryEx/Blackout/) project.

**Read the full blog post [here](https://tij.me/blog/killing-anti-malware-protected-processes-with-blackout-reloaded/).**

<p align="center">
    <img width="1000" src="https://raw.githubusercontent.com/tijme/blackout-reloaded/master/.github/screenshot.png" />
</p>

## Usage

Clone this repository first. Then review the code, compile from source and use it in Cobalt Strike.

**Compiling**

    make

**Usage**

Load the `BlackoutReloaded.cna` script using the Cobalt Strike Script Manager. Then use the command below to execute the exploit.

    $ blackout_reloaded [pid to kill]

Alternatively (and for testing purposes), you can directly run the compiled executable. 

    $ .\BlackoutReloaded.exe

## Todo

* Load the vulnerable driver from memory instead of from disk.

## Issues

Issues or new features can be reported via the [issue tracker](https://github.com/tijme/blackout-reloaded/issues). Please make sure your issue or feature has not yet been reported by anyone else before submitting a new one.

## License

Copyright (c) 2023 Tijme Gommers & Northwave Cyber Security. All rights reserved. View [LICENSE.md](https://github.com/tijme/blackout-reloaded/blob/master/LICENSE.md) for the full license.
