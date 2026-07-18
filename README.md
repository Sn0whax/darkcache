# DarkCache

**DarkCache** is an atomic Fedora-based desktop image built with BlueBuild, designed for users who want a fast, modern, and heavily customized **KDE Plasma** experience.

Built on Fedora Atomic technologies and enhanced with the **CachyOS kernel**, DarkCache combines performance-focused optimizations, useful desktop enhancements, curated packages, and a polished Plasma setup out of the box.

## Variants

### darkcache-desktop

Designed for desktop systems, gaming rigs, and workstations.

- NVIDIA drivers included and configured
- CachyOS kernel and performance optimizations
- KDE Plasma with curated themes and desktop enhancements
- Additional quality-of-life applications and utilities

### darkcache-laptop

Optimized for laptops and portable devices.

- Uses the `scx_bpfland` scheduler in power-saving mode by default
- Laptop-specific power management improvements
- Better suspend and docked-device behavior
- Same KDE Plasma experience with battery-focused tuning

## Philosophy

DarkCache aims to provide a comfortable and visually appealing Plasma desktop while embracing the reliability and simplicity of Atomic desktops.

Included by default:

- KDE Plasma desktop
- Curated themes, icons, and appearance tweaks
- CachyOS kernel and system optimizations
- Useful desktop applications and utilities
- Distrobox for development and containerized workflows

Unlike minimal Atomic images, DarkCache ships with a carefully selected set of packages and customizations so you can get started immediately after installation.

## Installation

1. Disable **Secure Boot** in your BIOS/UEFI.
2. Boot into a Fedora Atomic-based distribution.
3. Switch to the latest DarkCache image:

```bash
bootc switch ghcr.io/sn0whax/darkcache-desktop:latest
```

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
- CachyOS performance enhancements
- NVIDIA-ready desktop images
- Atomic reliability powered by BlueBuild
- Beautiful themes and visual customization
- Curated package selection without unnecessary bloat
- Great for gaming, development, and everyday use

---

**DarkCache brings together Fedora Atomic stability, CachyOS performance, and a polished KDE Plasma experience in a single image.**
