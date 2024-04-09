# AutoHotKey Automation with Numpad Keyboard and Smart Home Relay Control
## English
This repository contains AutoHotKey scripts for automating tasks using a numpad keyboard and controlling smart home devices via relays.
## Features

### AutoHotKey Automation

-   **Custom Hotkeys**: Utilize the numpad keys for custom hotkeys to automate various tasks.
-   **Window Management**: Manage windows efficiently with predefined hotkeys for tasks like minimizing, maximizing, and switching between applications.
-   **Text Expansion**: Implement text expansion shortcuts to speed up typing commonly used phrases or codes.
-   **Mouse Emulation**: Automate mouse movements and clicks for repetitive tasks.
-   **Application Control**: Create hotkeys to launch, close, or switch between applications swiftly.

### Smart Home Relay Control

-   **Remote Device Control**: Interact with smart home devices using relay modules connected to your system.
-   **Scheduled Actions**: Set up schedules to automate turning devices on or off at specific times.
-   **Integration**: Integrate with other smart home platforms or services for enhanced automation possibilities.
-   **Customizable Commands**: Define custom commands to control specific devices or groups of devices.

## Getting Started

1.  Clone this repository to your local machine.
2.  Install AutoHotKey if you haven't already. You can download it from [here](https://www.autohotkey.com/).
3.  Connect your numpad keyboard and ensure it's functioning correctly.
4.  Set up relay modules for controlling smart home devices. Refer to the documentation provided with your relay module for wiring instructions.
5.  Customize the scripts according to your needs by editing the `.ahk` files.
6.  Run the desired script(s) by double-clicking them or through the AutoHotKey application.

## Examples

### Example 1: Text Expansion
 
`::omw::On my way!  // Expands "omw" to "On my way!"`
`::phno::+1234567890  // Expands "phno" to "+1234567890"` 

### Example 2: Window Management

`^Numpad1::WinMinimize, A  ; Minimize current window`
`^Numpad2::WinMaximize, A  ; Maximize current window`
`^Numpad3::WinClose, A     ; Close current window` 

### Example 3: Smart Home Relay Control

`F1::ToggleRelay1()  ; Toggle relay 1 state`
`F2::ToggleRelay2()  ; Toggle relay 2 state` 

## Contributing
Contributions are welcome! If you have any feature requests, bug reports, or suggestions, feel free to open an issue or create a pull request.

## License

This project is licensed under the GNU General Public License v3.0