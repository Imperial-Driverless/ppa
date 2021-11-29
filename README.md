# Imperial Driverless PPA

This is the Personal Package Archive containing our packaged software. 

In order to use it:

1. Add the GPG key:
```
curl -s --compressed "https://imperial-driverless.github.io/ppa/KEY.gpg" | sudo apt-key add -
```

2. Add the package list to your APT sources list:
``` 
sudo curl -s --compressed -o /etc/apt/sources.list.d/imperial-driverless.list "https://imperial-driverless.github.io/ppa/imperial-driverless.list"
```

3. Update your APT cache:
```
sudo apt update
```

4. Install the rosdep index package:
```
sudo apt install imperial-driverless-rosdep-index
```

After following these steps you should be install our packages by running
```
sudo apt install <package-name>
```

### Currently available packages <!-- do not change the title of this section, as the contents are automatically generated. Also, in order to add a section after this one changes are needed to update_packages.sh, as it deletes all lines after the section title -->
-  imperial-driverless-rosdep-index
-  ros-galactic-ackermann-drive-teleop
-  ros-galactic-imperial-driverless-interfaces
-  ros-galactic-lightweight-lidar-only-simulator
-  ros-galactic-racecar-description
-  ros-galactic-slam-implementations
-  ros-galactic-topic-tools
