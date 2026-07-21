<div align="center">

# DarkCache

<img src="DarkCache.png" alt="DarkCache icon" width="220">

</div>

**DarkCache** is an atomic Fedora-based desktop image built with BlueBuild, providing an immutable, image-based operating system with a fast, modern, and lightly customized **KDE Plasma** environment.

Powered by the **CachyOS** kernel, it integrates performance-focused optimizations, curated packages, practical desktop enhancements, and a polished Plasma configuration that is ready to use out of the box.

With DarkCache you get **Immutability + Security + Performance**

## Variants

### darkcache-desktop

Designed for desktops, gaming systems, and workstations using AMD or Intel graphics.

- CachyOS kernel and performance optimizations
- KDE Plasma with custom themes and desktop enhancements
- Native Steam installation
- Additional quality-of-life applications and utilities
- Suitable for AMD and Intel graphics systems

### darkcache-desktop-nvidia

Designed for desktops, gaming systems, and workstations using NVIDIA graphics.

- NVIDIA drivers built for the CachyOS kernel
- NVIDIA kernel modules signed for Secure Boot
- CachyOS kernel and performance optimizations
- KDE Plasma with custom themes and desktop enhancements
- Steam installed as a Flatpak to avoid host-level NVIDIA multilib conflicts
- NVIDIA Container Toolkit integration
- Additional quality-of-life applications and utilities

### darkcache-laptop

Optimized for laptops and portable devices.

- Uses `scx_bpfland` in Auto mode to align with the TuneD setting
- Improved battery life and responsiveness
- Better suspend and docked-device behavior
- CachyOS kernel and performance optimizations
- Native Steam installation
- Same KDE Plasma experience with laptop-specific tuning

## What's Included

DarkCache provides a curated desktop experience instead of a completely minimal setup. The goal is to deliver a polished Plasma environment that's ready for daily use immediately after installation.

### Added Packages

The following base packages are installed by the standard desktop recipe:

- `iwd`
- `NetworkManager`
- `NetworkManager-wifi`
- `plasma-nm`
- `https://github.com/sigstore/cosign/releases/download/v3.0.2/cosign-3.0.2-1.x86_64.rpm`
- `gamemode`
- `btop`
- `brave-origin`
- `faugus-launcher`
- `lact`
- `haruna`
- `obs-studio`
- `audacious`
- `kate`
- `steam`
- `Flatseal`
- `powertop`

### Removed Packages

The following base packages are removed by the standard desktop recipe:

- `celluloid`
- `wpa_supplicant` — replaced by IWD for simpler Wi-Fi userspace, reduced external-library reliance, and potential battery-efficiency benefits
- `firefox`
- `firefox-langpacks`
- `htop`
- `nvtop`
- `toolbox`
- `kmahjongg`
- `kmines`
- `dragon`
- `elisa-player`
- `khelpcenter`
- `kwrite`
- `kolourpaint`
- `skanpage`
- `krdc`
- `krfb`

### Desktop Customizations

DarkCache comes preconfigured with:

- Custom Plasma theme
- Custom cursor theme
- Custom SDDM login theme
- Sensible KDE defaults
- Performance-oriented system tuning
- NVIDIA support on desktop images
- Laptop-focused power management on laptop images

## Philosophy

DarkCache aims to deliver a complete KDE Plasma experience while preserving the reliability and simplicity of Fedora Atomic desktops, combined with the speed of the CachyOS kernel and SCX schedulers.

Unlike other Atomic images, DarkCache applies minor debloating and then adds a carefully selected collection of applications, themes, and customizations so users can start working or gaming immediately without spending hours setting up their environment.

## Installation

1. Disable **Secure Boot** in your BIOS/UEFI.
2. Boot into a Fedora Atomic-based distribution.
3. Switch to the latest DarkCache image:

#### Standard desktop

For desktop systems using AMD or Intel graphics:

```bash
bootc switch ghcr.io/sn0whax/darkcache-desktop:latest
```

#### NVIDIA desktop

For desktop systems using NVIDIA graphics:

```bash
bootc switch ghcr.io/sn0whax/darkcache-desktop-nvidia:latest
```

This variant includes NVIDIA drivers built for the CachyOS kernel. Steam is installed as a Flatpak to avoid NVIDIA multilib package conflicts.

#### Laptop

For laptops and portable systems:

```bash
bootc switch ghcr.io/sn0whax/darkcache-laptop:latest
```

This variant includes laptop-specific power management, suspend behavior, and scheduler tuning.

4. Reboot your system:

```bash
systemctl reboot
```

5. If prompted, enroll the MOK key during boot.
6. Re-enable Secure Boot if desired.

## Updates

The `latest` tag always points to the newest DarkCache build.

DarkCache follows the Fedora release version defined in its build recipe, ensuring you won't be unexpectedly upgraded to a new Fedora major release without explicitly choosing to do so.

## Verification

DarkCache images are signed using **Sigstore Cosign**.

To verify an image signature, download the `cosign.pub` key from this repository and run:

```bash
cosign verify --key cosign.pub ghcr.io/sn0whax/darkcache-desktop
```

## Why DarkCache?

- KDE Plasma-first experience
- SELinux Security
- CachyOS performance enhancements
- NVIDIA-ready desktop images
- Atomic reliability powered by BlueBuild
- Beautiful themes and visual customization
- Curated package selection without unnecessary bloat
- Built for gaming and everyday use
- Distrobox-first workflow
- Sensible defaults with room for customization

---

**DarkCache brings together Fedora Atomic stability, CachyOS performance, and a polished KDE Plasma experience in a single image.**
