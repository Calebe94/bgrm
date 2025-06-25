# bgrm

A simple Linux utility that removes the background from any image in your clipboard and copies the transparent result back to the clipboard. The entire process is managed from a convenient system tray icon.

![](./bgrm.png)

## Features

  * **Clipboard-First Workflow:** Copy an image from anywhere, process it, and paste the transparent result. No need to save and manage intermediate files.
  * **System Tray Integration:** Runs quietly in the background, accessible via a systray/panel icon.
  * **One-Click Operation:** Left-clicking the tray icon immediately processes the image in your clipboard.
  * **Simple Menu:** Right-click the icon to view logs or quit the application.
  * **Desktop Notifications:** Provides clear feedback on success or failure using `notify-send`.
  * **Easy Installation:** Comes with a `Makefile` for simple installation and uninstallation.

## Dependencies

Before you can install and run `bgrm`, you need to ensure the following dependencies are installed on your system.

### System Packages

These tools handle the clipboard, notifications, and the UI. On Debian/Ubuntu-based systems, you can install them with:

```bash
sudo apt update
sudo apt install xclip yad
```

### Python Environment

The core background removal is handled by a Python library.

  * **Python 3 and Pip:** Ensure you have a working Python 3 installation.
  * **Virtual Environment:** This script is hardcoded to use a Python virtual environment located at `~/venv`. You **must** create and activate it before installing the required package.

    ```bash
    # Create the virtual environment if it doesn't exist
    python3 -m venv ~/venv

    # Activate it
    source ~/venv/bin/activate
    ```

  * **`backgroundremover` Library:** With the virtual environment activated, install the library using pip:

    ```bash
    pip install backgroundremover
    ```

## Install

Once all prerequisites are met, installation is straightforward using the included `Makefile`.

1.  **Clone the repository (or download the files):**

    ```bash
    git clone https://github.com/Calebe94/bgrm
    cd bgrm/
    ```

2.  **Run the install command:**
    The `Makefile` will copy the script and the `.desktop` file to the appropriate system locations. This requires administrative privileges.

    ```bash
    sudo make install
    ```

    This will:

      * Install the `bgrm` script to `/usr/local/bin/bgrm`.
      * Install the `bgrm.desktop` file to `/usr/local/share/applications/`.

## Usage

1.  **Launch the Application:** Open your system's application launcher and search for "Background Remover". Click it to start the tray icon.
2.  **Copy an Image:** Find an image on a website, in a document, or in an image viewer and copy it to your clipboard (e.g., `Ctrl+C`).
3.  **Process the Image:** Left-click the `bgrm` icon in your system tray.
      * A "Success" notification will appear when the processing is complete.
      * The transparent image is now on your clipboard.
4.  **Paste the Result:** Paste (`Ctrl+V`) the new transparent image into your desired application (e.g., LibreOffice, GIMP, Inkscape).

### Tray Menu Options

  * **Left-Click:** Runs the background removal process on the clipboard image.
  * **Right-Click:** Opens a menu with the following options:
      * **Run Now:** Same as a left-click.
      * **View Log:** Opens the log file (`~/.background_remover.log`) with your default text editor. This is useful for debugging.
      * **Quit:** Exits the application.

## Uninstall

To completely remove the application and its desktop entry from your system, use the `uninstall` target in the `Makefile`.

```bash
sudo make uninstall
```

## License

This project is licensed under the MIT License. See the [LICENSE](./LICENSE) file for details.
