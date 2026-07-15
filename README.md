# Visual C++ Redistributables Automated Installer

![Windows](https://img.shields.io/badge/Platform-Windows-blue)
![Batch Script](https://img.shields.io/badge/Language-Batch%20Script-green)
![License](https://img.shields.io/badge/License-MIT-yellow)

An automated Windows batch script that installs multiple versions of **Microsoft Visual C++ Redistributables** sequentially with administrator privileges.

This script is useful for system setup, software deployment, gaming PCs, development environments, and fresh Windows installations where multiple Visual C++ runtime packages are required.

---

## ✨ Features

✅ Automatically requests Administrator privileges  
✅ Installs Visual C++ Redistributables one by one  
✅ Waits for each installer to complete before continuing  
✅ Supports silent installation mode  
✅ Checks if installer files exist before running  
✅ Handles filenames containing spaces and special characters  
✅ Simple portable `.bat` solution (no additional software required)

---

## 📦 Supported Packages

The script installs the following Visual C++ Redistributable versions:

| Version | File Name |
|---------|-----------|
| Visual C++ 2010 | `VC_redistx64_(2010).exe` |
| Visual C++ 2012 | `VC_redistx64_(2012).exe` |
| Visual C++ 2013 | `VC_redistx64_(2013).exe` |
| Visual C++ 2015 | `VC_redistx64_(2015).exe` |
| Visual C++ 2017 | `VC_redistx64_(2017).exe` |
| Visual C++ 2019 | `VC_redistx64_(2019).exe` |
| Visual C++ 2022 | `VC_redistx64_(2022).exe` |
| Visual C++ 2026 | `VC_redistx64_(2026).exe` |

---

## 🚀 Usage

### 1. Download the repository

```bash
git clone https://github.com/ChamodGamhewa/VC-Redistributables-Installer.git
```

or download the ZIP file from GitHub.

---

### 2. Prepare the folder structure

Place the batch script and installer files in the same directory:

```
VC-Redistributables-Installer/
│
├── Install_VC_Redist.bat
│
├── VC_redistx64_(2010).exe
├── VC_redistx64_(2012).exe
├── VC_redistx64_(2013).exe
├── VC_redistx64_(2015).exe
├── VC_redistx64_(2017).exe
├── VC_redistx64_(2019).exe
├── VC_redistx64_(2022).exe
└── VC_redistx64_(2026).exe
```

---

### 3. Run the installer

Double-click:

```
Install_VC_Redist.bat
```

Windows will request Administrator permission automatically.

The script will then install each package sequentially.

---

## ⚙️ Silent Installation

The script uses:

```cmd
/quiet /norestart
```

which allows unattended installation without user interaction.

Example:

```cmd
start /wait "" "VC_redistx64_(2022).exe" /quiet /norestart
```

---

## 🛠 Requirements

- Windows 7 / 8 / 10 / 11
- Administrator privileges
- x64 Windows operating system
- Visual C++ Redistributable installer files

---

## 📌 Notes

- Existing Visual C++ installations are handled by Microsoft's installer.
- The script does not download files automatically; installers must be placed in the same folder.
- Installation time depends on the number of packages and system performance.

---

## 👨‍💻 Author

**Chamod Gamhewa**

GitHub:  
https://github.com/ChamodGamhewa

Website:  
https://chamodgamhewa.com/

---

## 📄 License

This project is licensed under the MIT License.

You are free to use, modify, and distribute this script.
