# My Dotfiles

A personal dotfile manager repository using Chezmoi.

## Setup Instructions

### Git Repository Setup

1. Make sure you have created a repository named "dotfiles" in your GitHub account
2. Configure the remote with your actual GitHub username:
   ```
   git remote set-url origin git@github.com:YOUR_ACTUAL_USERNAME/dotfiles.git
   ```
3. Push to GitHub:
   ```
   git push -u origin main
   ```

### Chezmoi Setup

1. Install Chezmoi:
```bash
sh -c "$(curl -fsLS get.chezmoi.io)"
```

2. Initialize with this repository:
```bash
chezmoi init git@github.com:BeechcraftNV/dotfiles.git
```

3. Apply the dotfiles:
```bash
chezmoi apply
```

## Contents

This repository contains my personal configuration files.
